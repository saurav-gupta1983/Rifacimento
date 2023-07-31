using System;
using System.Data;
using System.Collections;
using System.Web.UI.WebControls;
using Rifacimento.Books.Common;
using BO = Rifacimento.Books.BusinessLayer;

namespace Rifacimento.Books.UI.UserControls
{
    public partial class MasterDataUserControls : System.Web.UI.UserControl
    {
        #region Variables

        private DataTable masterDetailsDataTable = new DataTable();
        private int colID=0;
        private string description;
        private string tableName;
        private ArrayList columnNames;

        #endregion

        #region Page Load Event

        /// <summary>
        /// Page_Load
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            SetScreenLabels();
            if (!this.IsPostBack)
            {
                GetColumnNames();
                PopulateData();
            }
            else
            {
                columnNames = (ArrayList)ViewState["columnNames"];
            }
        }

        #endregion

        #region Grid Events

        /// <summary>
        /// MasterDataDetailsGridView_PageIndexChanging
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void MasterDataDetailsGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            MasterDataDetailsGridView.PageIndex = e.NewPageIndex;
            GetMasterDetails();
            if (!(masterDetailsDataTable.Rows[e.NewPageIndex * 10][colID].ToString() == "0" || masterDetailsDataTable.Rows[e.NewPageIndex * 10][colID].ToString() == ""))
            {
                DataRow dr = masterDetailsDataTable.NewRow();
                dr[colID] = 0;
                masterDetailsDataTable.Rows.InsertAt(dr, e.NewPageIndex * 10);
            }
            MasterDataDetailsGridView.DataSource = masterDetailsDataTable;
            MasterDataDetailsGridView.DataBind();
        }

        /// <summary>
        /// MasterDataDetailsGridView_RowDataBound
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void MasterDataDetailsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[colID].Text.ToString() == "0")
                {
                    e.Row.Cells[colID].Text = "";
                    setLinkButtons(e.Row, true);
                }
            }
        }

        /// <summary>
        /// MasterDataDetailsGridView_RowUpdating
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void MasterDataDetailsGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
        }

        /// <summary>
        /// MasterDataDetailsGridView_RowCancelingEdit
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void MasterDataDetailsGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
        }

        #endregion

        #region GridView Button Click Events

        /// <summary>
        /// AddDetailsLinkButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SaveDetailsLinkButton_Click(object sender, CommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow detailsGridViewRow = MasterDataDetailsGridView.Rows[index];

            TextBox DescriptionTextBox = (TextBox)detailsGridViewRow.FindControl("DescriptionTextBox");
            bool success;

            if (detailsGridViewRow.Cells[colID].Text == "")
            {
                success = BO.InsightsBO.AddUpdateDetailsforMasterData(tableName, columnNames[1].ToString(), DescriptionTextBox.Text, Session["User"].ToString());
            }
            else
            {
                ArrayList columnValues = new ArrayList();

                Label IDLabel = (Label)detailsGridViewRow.FindControl("IDLabel");
                columnValues.Add(IDLabel.Text);
                columnValues.Add(DescriptionTextBox.Text);
                columnValues.Add(Session["User"].ToString());
                columnValues.Add(System.DateTime.Now.ToString());
                success = BO.InsightsBO.AddUpdateDetailsforMasterData(tableName, columnNames, columnValues);
            }

            if (success)
            {
                MessageLabel.Text = WebConstants.SAVED_SUCCESS;
            }
            else
            {
                MessageLabel.Text = WebConstants.FAILURE;
            }

            PopulateData();
        }

        /// <summary>
        /// CancelDetailsLinkButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void CancelDetailsLinkButton_Click(object sender, CommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow detailsGridViewRow = MasterDataDetailsGridView.Rows[index];

            if (detailsGridViewRow.Cells[colID].Text == "")
            {
                TextBox DescriptionTextBox = (TextBox)detailsGridViewRow.FindControl("DescriptionTextBox");
                DescriptionTextBox.Text = "";
            }
            else
            {
                setLinkButtons(detailsGridViewRow, false);
            }
        }

        /// <summary>
        /// UpdateDetailsLinkButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void UpdateDetailsLinkButton_Click(object sender, CommandEventArgs e)
        {
            setLinkButtons(MasterDataDetailsGridView.Rows[Convert.ToInt32(e.CommandArgument)],true);
        }

        /// <summary>
        /// DeleteDetailsLinkButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void DeleteDetailsLinkButton_Click(object sender, CommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow detailsGridViewRow = MasterDataDetailsGridView.Rows[index];

            Label IDLabel = (Label)detailsGridViewRow.FindControl("IDLabel");
            int id = Convert.ToInt32(IDLabel.Text);

            bool success = BO.InsightsBO.AddUpdateDetailsforMasterData(tableName, columnNames[colID].ToString(), id);

            if (success)
            {
                MessageLabel.Text = WebConstants.DELETED_SUCCESS;
            }

            PopulateData();
        }

        #endregion

        #region Private Functions

        /// <summary>
        /// SetScreenLabels
        /// </summary>
        private void SetScreenLabels()
        {
            switch (Session["Identifier"].ToString())
            {
                case WebConstants.CLASS:
                    HeaderLabel.Text = WebConstants.CLASS_HEADER;
                    tableName = WebConstants.CLASS;
                    MasterDataDetailsGridView.Columns[2].HeaderText = WebConstants.CLASS_HEADER;
                    break;

                case WebConstants.SUB_CLASS:
                    HeaderLabel.Text = WebConstants.SUB_CLASS_HEADER;
                    tableName = WebConstants.SUB_CLASS;
                    MasterDataDetailsGridView.Columns[2].HeaderText = WebConstants.SUB_CLASS_HEADER;
                    break;
            }
            MessageLabel.Text = "";
        }

        /// <summary>
        /// PopulateData
        /// </summary>
        private void PopulateData()
        {
            GetMasterDetails();
            MasterDataDetailsGridView.DataSource = masterDetailsDataTable;
            MasterDataDetailsGridView.DataBind();
        }

        /// <summary>
        /// GetMasterDetails
        /// </summary>
        private void GetMasterDetails()
        {
            masterDetailsDataTable = BO.InsightsBO.GetDetailsforMasterData(tableName, columnNames).Tables[0];
            DataRow dr = masterDetailsDataTable.NewRow();
            dr[colID] = 0;
            masterDetailsDataTable.Rows.InsertAt(dr, 0);

            masterDetailsDataTable.Columns[1].ColumnName = "ID";
            masterDetailsDataTable.Columns[2].ColumnName = "Description";
        }

        /// <summary>
        /// setLinkButtons
        /// </summary>
        /// <param name="gridViewRow"></param>
        /// <param name="isSave"></param>
        private void setLinkButtons(GridViewRow gridViewRow, bool isSave)
        {
            LinkButton SaveLinkButton = (LinkButton)gridViewRow.FindControl("SaveLinkButton");
            SaveLinkButton.Visible = isSave;
            LinkButton CancelButtonControl = (LinkButton)gridViewRow.FindControl("CancelLinkButton");
            CancelButtonControl.Visible = isSave;
            LinkButton UpdateButtonControl = (LinkButton)gridViewRow.FindControl("UpdateLinkButton");
            UpdateButtonControl.Visible = (!isSave);
            LinkButton DeleteButtonControl = (LinkButton)gridViewRow.FindControl("DeleteLinkButton");
            DeleteButtonControl.Visible = (!isSave);
            Label DescriptionLabel = (Label)gridViewRow.FindControl("DescriptionLabel");
            DescriptionLabel.Visible = (!isSave);
            TextBox DescriptionTextBox = (TextBox)gridViewRow.FindControl("DescriptionTextBox");
            DescriptionTextBox.Visible = isSave;

            DescriptionTextBox.Text = DescriptionLabel.Text;
        }

        /// <summary>
        /// GetColumnNames
        /// </summary>
        private void GetColumnNames()
        {
            columnNames = BO.InsightsBO.GetColumnNames(tableName);
            ViewState["columnNames"] = columnNames;
        }

        #endregion
    }
}