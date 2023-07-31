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

namespace Humana.EAG.Insights.UI
{
    public partial class ProjectControl : System.Web.UI.UserControl
    {
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            ProjectTitleTextBox.Text = "ProjectTitle1";
            ProjectDescriptionTextBox.Text = "ProjectDescription1";
            SpiritNumberTextBox.Text = "SpiritNumber1";
            MembershipImpactTextBox.Text = "MembershipImpact1";
            MeasurementTextBox.Text = "Measurement";
            OwnerTextBox.Text = "Owner1";
            ContactPersonTextBox.Text = "ContactPerson1";
            VendorUtilizationTextBox.Text = "VendorUtilization1";
            TagsTextBox.Text = "Tags1";
            CollaborationURLTextBox.Text = "Collaboration URL";

            DisplaySystemTypeGridView();
        }

        private void DisplaySystemTypeGridView()
        {

            dt.Columns.Add("ProjectID");
            dt.Columns.Add("ProjectTitle");
            dt.Columns.Add("Description");
            dt.Columns.Add("SpiritNumber");
            dt.Columns.Add("ExperienceSegment");
            dt.Columns.Add("SegmentType");
            dt.Columns.Add("LifeCycle");
            dt.Columns.Add("BeginDate");
            dt.Columns.Add("EndDate");
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
                    if (dt.Columns[j].ColumnName == "LifeCycle")
                    {
                        dr[j] = "LifeCycle1";
                    }
                    else
                    {
                        dr[j] = dt.Columns[j].ColumnName + (i + 1).ToString();
                    }
                }
                dt.Rows.Add(dr);
            }

            ProjectDetailsGridView.DataSource = dt;
            ProjectDetailsGridView.DataBind();
        }

        protected void ProjectDetailsGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ProjectDetailsGridView.PageIndex = e.NewPageIndex;
            ProjectDetailsGridView.DataSource = dt;
            ProjectDetailsGridView.DataBind();
        }

    }
}