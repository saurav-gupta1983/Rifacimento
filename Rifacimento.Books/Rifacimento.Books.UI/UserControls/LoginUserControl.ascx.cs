using System;
using Rifacimento.Books.Common;
using Bo = Rifacimento.Books.BusinessLayer;

namespace Humana.EAG.Insights.UI.UserControls
{
    public partial class LoginUserControl : System.Web.UI.UserControl
    {
        #region Button Events

        /// <summary>
        /// LoginButton_Click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (GetUserDetails())
            {
                Session.Add("User", UserTextBox.Text.Trim());
                Session["Identifier"] = WebConstants.HOME;
                Response.Redirect("HomePage.aspx");
            }
        }
        #endregion

        #region Private Functions

        /// <summary>
        /// GetUserDetails
        /// </summary>
        /// <returns></returns>
        private bool GetUserDetails()
        {
            return Bo.InsightsBO.GetUserDetails(UserTextBox.Text.Trim(), PasswordTextBox.Value.Trim());
        }

        #endregion
    }
}