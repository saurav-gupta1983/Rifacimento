using System;
using System.Web.UI.WebControls;

namespace Rifacimento.Books.UI
{
    /// <summary>
    /// Site - MasterPage
    /// </summary>
    public partial class Site : System.Web.UI.MasterPage
    {
        #region Variables
        public string identifier;
        #endregion

        #region Page Load event

        /// <summary>
        /// Page_Load
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                LeftPanel.Visible = true;
            }
            else
            {
                LeftPanel.Visible = false;
            }
        }

        #endregion

        #region MenuItem Events
        /// <summary>
        /// masterMenu_OnMenuItemClick
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void masterMenu_OnMenuItemClick(object sender, MenuEventArgs e)
        {
        }
        #endregion

        #region TreeView Events
        /// <summary>
        /// MasterTree_OnSelectedNodeChanged
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void MasterTree_OnSelectedNodeChanged(object sender, EventArgs e)
        {
            identifier = DataTreeview.SelectedNode.Value;
            Session["Identifier"] = DataTreeview.SelectedNode.Value;
            Response.Redirect("HomePage.aspx");
        }
        #endregion

    }
}
