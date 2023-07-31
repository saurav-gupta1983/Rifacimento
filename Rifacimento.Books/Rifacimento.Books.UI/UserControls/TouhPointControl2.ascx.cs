using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Humana.EAG.Insights.UI.UserControls
{
    public partial class TouhPointControl2 : System.Web.UI.UserControl
    {
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            TabPanel.TabIndex = 1;
            SearchResultsPanel.Visible = false;
            //AddUpdatePanel.Visible = false;
        }

        protected void SearchAddButton_Click(object sender, EventArgs e)
        {
            //AddUpdatePanel.Visible = true;
            //AddUpdateTabContainer.Visible = true;
            //AddPanel.Visible = true;
            //SavePanel.Visible = true;
            //SearchResultsPanel.Visible = false;
            ////UpdatePanel.Visible = false;
            //TabPanel.HeaderText = "Create New Touchpoint";
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            AddUpdatePanel.Visible = true;
            AddUpdateTabContainer.Visible = true;
            //AddPanel.Visible = false;
            //SavePanel.Visible = false;
            SearchResultsPanel.Visible = true;
            //UpdatePanel.Visible = true;
            //TabPanel.HeaderText = "Update / Delete Touchpoint";
            DisplaySystemTypeGridView();
        }

        private void DisplaySystemTypeGridView()
        {

            dt.Columns.Add("TouchpointID");
            dt.Columns.Add("TouchpointTitle");
            dt.Columns.Add("Description");
            dt.Columns.Add("SpiritNumber");
            dt.Columns.Add("ExperienceSegment");
            dt.Columns.Add("SegmentType");
            dt.Columns.Add("LifeCycle");
            dt.Columns.Add("DurationStart");
            dt.Columns.Add("DurationEndDate");
            dt.Columns.Add("Owner");
            dt.Columns.Add("Market");
            dt.Columns.Add("Product");
            dt.Columns.Add("LifeCyclePhase");

            for (int i = 0; i < 5; i++)
            {
                DataRow dr = dt.NewRow();
                dr[0] = i;
                for (int j = 1; j < dt.Columns.Count; j++)
                {
                    //if (dt.Columns[j].ColumnName == "LifeCycle")
                    //{
                    //    dr[j] = "LifeCycle1";
                    //}
                    //else
                    //{
                    dr[j] = dt.Columns[j].ColumnName + (i + 1).ToString();
                    //}
                }
                dt.Rows.Add(dr);
            }

            TouchpointDetailsGridView.DataSource = dt;
            TouchpointDetailsGridView.DataBind();
        }

        protected void TouchpointDetailsGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            TouchpointDetailsGridView.PageIndex = e.NewPageIndex;
            TouchpointDetailsGridView.DataSource = dt;
            TouchpointDetailsGridView.DataBind();
        }

        protected void SearchClearButton_Click(object sender, EventArgs e)
        {
            //AddUpdatePanel.Visible = false;
            SearchResultsPanel.Visible = false;
        }

        protected void DetailsButton_Click(object sender, EventArgs e)
        {
            //AddUpdatePanel.Visible = true;
            //AddUpdateTabContainer.Visible = true;
            //AddPanel.Visible = false;
            //SavePanel.Visible = false;
            SearchResultsPanel.Visible = true;
            ////UpdatePanel.Visible = true;
            ////TabPanel.HeaderText = "Update / Delete Touchpoint";
            //DisplaySystemTypeGridView();
            CloseModalPopupExtender.Show();
            TabPanel1.TabIndex = 1;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            CloseModalPopupExtender.Hide();
            //AddUpdatePanel.Visible = true;
            //AddUpdateTabContainer.Visible = true;
            //AddPanel.Visible = false;
            //SavePanel.Visible = false;
            SearchResultsPanel.Visible = true;
            //TabPanel.HeaderText = "Update / Delete Touchpoint";
            ////UpdatePanel.Visible = true;
            //DisplaySystemTypeGridView();
            TabPanel1.TabIndex = 1;
        }
        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}