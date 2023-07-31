using System;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Rifacimento.Books.UI.UserControls
{
    /// <summary>
    /// TouchpointControl
    /// </summary>
    public partial class ViewDataUserControl : System.Web.UI.UserControl
    {
        #region Variables

        private DataTable touchPointDetailsDataTable;

        private HtmlInputButton startDateButton;
        private HtmlGenericControl startDateDiv;
        private HtmlInputButton endDateButton;
        private HtmlGenericControl endDateDiv;

        private HtmlInputButton searchStartDateButton;
        private HtmlGenericControl searchStartDateDiv;
        private HtmlInputButton searchEndDateButton;
        private HtmlGenericControl searchEndDateDiv;


        private HtmlInputButton displayStartDateButton;
        private HtmlGenericControl displayStartDateDiv;
        private HtmlInputButton displayEndDateButton;
        private HtmlGenericControl displayEndDateDiv;

        #endregion

        #region Page Load Events

        /// <summary>
        /// Page_Load
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                AddUpdatePanel.Visible = false;
            }

            //Getting Start Date From Calendar User Control
            //displayStartDateButton = (HtmlInputButton)DisplayDurationStartDateCalendar.FindControl("Button");
            //displayStartDateDiv = (HtmlGenericControl)DisplayDurationStartDateCalendar.FindControl("DivCalendar");
            //displayStartDateButton.Attributes.Add("onclick", "javascript:return OnClick('" + displayStartDateDiv.ClientID + "')");
            ////Getting End Date From Calendar User Control
            //displayEndDateButton = (HtmlInputButton)DisplayDurationEndDateCalendar.FindControl("Button");
            //displayEndDateDiv = (HtmlGenericControl)DisplayDurationEndDateCalendar.FindControl("DivCalendar");
            //displayEndDateButton.Attributes.Add("onclick", "javascript:return OnClick('" + displayEndDateDiv.ClientID + "')");

            //Getting Start Date From Calendar User Control
            //searchStartDateButton = (HtmlInputButton)SearchDurationStartCalendar.FindControl("Button");
            //searchStartDateDiv = (HtmlGenericControl)SearchDurationStartCalendar.FindControl("DivCalendar");
            //searchStartDateButton.Attributes.Add("onclick", "javascript:return OnClick('" + searchStartDateDiv.ClientID + "')");
            ////Getting End Date From Calendar User Control
            //searchEndDateButton = (HtmlInputButton)SearchDurationEndDateCalendar.FindControl("Button");
            //searchEndDateDiv = (HtmlGenericControl)SearchDurationEndDateCalendar.FindControl("DivCalendar");
            //searchEndDateButton.Attributes.Add("onclick", "javascript:return OnClick('" + searchEndDateDiv.ClientID + "')");

            //Getting Start Date From Calendar User Control
            //startDateButton = (HtmlInputButton)DurationStartCalendar.FindControl("Button");
            //startDateDiv = (HtmlGenericControl)DurationStartCalendar.FindControl("DivCalendar");
            //startDateButton.Attributes.Add("onclick", "javascript:return OnClick('" + startDateDiv.ClientID + "')");
            ////Getting End Date From Calendar User Control
            //endDateButton = (HtmlInputButton)DurationEndDateCalendar.FindControl("Button");
            //endDateDiv = (HtmlGenericControl)DurationEndDateCalendar.FindControl("DivCalendar");
            //endDateButton.Attributes.Add("onclick", "javascript:return OnClick('" + endDateDiv.ClientID + "')");

        }

        #endregion

        #region Add Touchpoints

        /// <summary>
        /// ClearButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void AddClearButton_Click(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// AddButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void AddButton_Click(object sender, EventArgs e)
        {

        }

        #endregion

        #region Search Touchpoints

        /// <summary>
        /// SearchAddButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void CreateTouchpointsButton_Click(object sender, EventArgs e)
        {
            //AddUpdatePanel.Visible = true;
            ////AddUpdateTabContainer.Visible = true;
            //AddPanel.Visible = true;
            //SavePanel.Visible = true;
            //SearchResultsPanel.Visible = false;
            //TabPanel.HeaderText = "Create New Touchpoint";

            EnableDisablePanel(false);
        }
        
        /// <summary>
        /// SearchButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SearchButton_Click(object sender, EventArgs e)
        {
            //AddUpdatePanel.Visible = true;
            ////AddUpdateTabContainer.Visible = true;
            //AddPanel.Visible = false;
            //SavePanel.Visible = false;
            //SearchResultsPanel.Visible = true;
            //TabPanel.HeaderText = "Update / Delete Touchpoint";

            EnableDisablePanel(true);
        }

        /// <summary>
        /// SearchClearButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SearchClearButton_Click(object sender, EventArgs e)
        {
            //SearchTouchpointIdTextBox.Text = "";
            //SearchLifeCycleDropDownList.SelectedIndex = 0;
            //SearchDurationStartCalendar.Date = "";
            //SearchTouchpointTitleTextBox.Text = "";
            //SearchLifeCyclePhaseDropDownList.SelectedIndex = 0;
            //SearchDurationEndDateCalendar.Date = "";

            AddUpdatePanel.Visible = false;
        }

        #endregion

        #region TouchpointDetailsGridView Events

        /// <summary>
        /// TouchpointDetailsGridView_PageIndexChanging
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void TouchpointDetailsGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            TouchpointDetailsGridView.PageIndex = e.NewPageIndex;
            TouchpointDetailsGridView.DataSource = touchPointDetailsDataTable;
            TouchpointDetailsGridView.DataBind();
        }

        /// <summary>
        /// DetailsLinkButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void DetailsLinkButton_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Details")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                touchPointDetailsDataTable = (DataTable)(ViewState["TouchPointDetailsDataTable"]);
                DataRow row = touchPointDetailsDataTable.Rows[index];

                PopulateDetailsforSelectedTouchPoint(row);
                EnableDisablePanel(true);
                CloseModalPopupExtender.Show();
            }
        }
        #endregion
        
        #region Pop-up Events

        /// <summary>
        /// UpdateButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void UpdateButton_Click(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// PopupClearButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void PopupClearButton_Click(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// DeleteButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void DeleteButton_Click(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// CloseButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void CloseButton_Click(object sender, EventArgs e)
        {
            EnableDisablePanel(true); 
            CloseModalPopupExtender.Hide();
        }

        #endregion

        #region Private Functions

        /// <summary>
        /// EnableDisablePanel
        /// </summary>
        /// <param name="isSearch"></param>
        private void EnableDisablePanel(bool isSearch)
        {
            AddUpdatePanel.Visible = true;
            if (isSearch)
            {
                //AddUpdateTabContainer.Visible = true;
                SearchResultsPanel.Visible = true;
                TabPanel.HeaderText = "<B>View Touchpoints</B>";

                UpdateButton.Enabled = false;
                DeleteButton.Enabled = false;
                PopupClearButton.Enabled = false;

                DisplaySystemTypeGridView();
            }
            else
            {
                //AddUpdateTabContainer.Visible = true;
                SearchResultsPanel.Visible = false;
                TabPanel.HeaderText = "<B>Create New Touchpoint</B>";
            }

        }

        /// <summary>
        /// DisplaySystemTypeGridView
        /// </summary>
        private void DisplaySystemTypeGridView()
        {
            touchPointDetailsDataTable = new DataTable();

            touchPointDetailsDataTable.Columns.Add("TouchpointID");
            touchPointDetailsDataTable.Columns.Add("TouchpointTitle");
            touchPointDetailsDataTable.Columns.Add("Description");
            touchPointDetailsDataTable.Columns.Add("SpiritNumber");
            touchPointDetailsDataTable.Columns.Add("ExperienceSegment");
            touchPointDetailsDataTable.Columns.Add("SegmentType");
            touchPointDetailsDataTable.Columns.Add("LifeCycle");
            touchPointDetailsDataTable.Columns.Add("DurationStart");
            touchPointDetailsDataTable.Columns.Add("DurationEnd");
            touchPointDetailsDataTable.Columns.Add("Owner");
            touchPointDetailsDataTable.Columns.Add("Market");
            touchPointDetailsDataTable.Columns.Add("Product");
            touchPointDetailsDataTable.Columns.Add("LifeCyclePhase");

            for (int i = 0; i < 5; i++)
            {
                DataRow dr = touchPointDetailsDataTable.NewRow();
                dr[0] = i+1;
                for (int j = 1; j < touchPointDetailsDataTable.Columns.Count; j++)
                {
                    if (touchPointDetailsDataTable.Columns[j].ColumnName == "DurationStart" || touchPointDetailsDataTable.Columns[j].ColumnName == "DurationEnd")
                    {
                        dr[j] = System.DateTime.Today;
                    }
                    else
                    {
                        dr[j] = touchPointDetailsDataTable.Columns[j].ColumnName + (i + 1).ToString();
                    }
                }
                touchPointDetailsDataTable.Rows.Add(dr);
            }

            TouchpointDetailsGridView.DataSource = touchPointDetailsDataTable;
            TouchpointDetailsGridView.DataBind();

            ViewState["TouchPointDetailsDataTable"] = touchPointDetailsDataTable;

        }

        /// <summary>
        /// PopulateDetailsforSelectedTouchPoint
        /// </summary>
        /// <param name="row"></param>
        private void PopulateDetailsforSelectedTouchPoint(DataRow row)
        {
            //PopupTouchpointTitleLabel.Text = row.ItemArray[1].ToString() + " (" + row.ItemArray[0].ToString() + ")";
            //DisplayTouchpointTitleLabelTextBox.Text = row.ItemArray[1].ToString();
            //DisplayTouchpointDescriptionTextBox.Text = row.ItemArray[2].ToString();
            //DisplaySpiritNumberTextBox.Text = row.ItemArray[3].ToString();
            //DisplayExperienceSegmentDropDownList.SelectedIndex = DisplayExperienceSegmentDropDownList.Items.IndexOf(DisplayExperienceSegmentDropDownList.Items.FindByValue(row.ItemArray[4].ToString()));
            //DisplaySegmentTypeDropDownList.SelectedIndex = DisplaySegmentTypeDropDownList.Items.IndexOf(DisplaySegmentTypeDropDownList.Items.FindByValue(row.ItemArray[5].ToString()));
            //DisplayLifecycleDropDownList.SelectedIndex = DisplayLifecycleDropDownList.Items.IndexOf(DisplayLifecycleDropDownList.Items.FindByValue(row.ItemArray[6].ToString()));
            //DisplayDurationStartDateCalendar.Date = row.ItemArray[7].ToString();
            //DisplayDurationEndDateCalendar.Date = row.ItemArray[8].ToString();
            //DisplayOwnerTextBox.Text = row.ItemArray[9].ToString();
            //DisplayLifecyclePhaseDropDownList.SelectedIndex = DisplayLifecyclePhaseDropDownList.Items.IndexOf(DisplayLifecyclePhaseDropDownList.Items.FindByValue(row.ItemArray[12].ToString()));
        }


        #endregion

    }
}