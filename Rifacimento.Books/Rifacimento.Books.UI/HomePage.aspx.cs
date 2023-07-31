using System;
using System.Web.UI;
using Rifacimento.Books.Common;

namespace Rifacimento.Books.UI
{
    public partial class HomePage : System.Web.UI.Page
    {
        #region Variables

        protected Control UserControl;
        private string UserControlsPath = "UserControls/";

        #endregion

        #region Page Load event

        /// <summary>
        /// Page_Load
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            // Identifier will identify the Usercontrol to be load.
            if (Session["User"] != null)
            {
                if (Session["Identifier"] == null)
                {
                    UserControl = this.LoadControl(UserControlsPath + "MessageUserControl.ascx");
                }
                else
                {
                    switch (Session["Identifier"].ToString())
                    {
                        case WebConstants.HOME:
                            UserControl = this.LoadControl(UserControlsPath + "MainUserControl.ascx");
                            break;

                        case WebConstants.PROJECT:
                            UserControl = this.LoadControl(UserControlsPath + "ProjectsUserControl.ascx");
                            break;

                        case WebConstants.VIEWDATA:
                            UserControl = this.LoadControl(UserControlsPath + "ViewDataUserControl.ascx");
                            break;

                        case WebConstants.SUB_CLASS:
                            //UserControl = this.LoadControl(UserControlsPath + "MasterDataUserControls.ascx?Data=" + WebConstants.LANGUAGE);
                            UserControl = this.LoadControl(UserControlsPath + "MasterDataUserControls.ascx");
                            break;

                        case WebConstants.CLASS:
                            //UserControl = this.LoadControl(UserControlsPath + "MasterDataUserControls.ascx?Data=" + WebConstants.LANGUAGE);
                            UserControl = this.LoadControl(UserControlsPath + "MasterDataUserControls.ascx");
                            break;

                        case WebConstants.UPLOAD:
                            //UserControl = this.LoadControl(UserControlsPath + "MasterDataUserControls.ascx?Data=" + WebConstants.LANGUAGE);
                            UserControl = this.LoadControl(UserControlsPath + "UploadDataControl.ascx");
                            break;

                        default:
                            UserControl = this.LoadControl(UserControlsPath + "MessageUserControl.ascx");
                            break;
                    }
                }
            }
            else
            {
                //UserControl = this.LoadControl(UserControlsPath + "LoginUserControl.ascx");
                Session.Add("User", "Saurav");
                Session["Identifier"] = WebConstants.HOME;
                UserControl = this.LoadControl(UserControlsPath + "MainUserControl.ascx");
            }
            this.ControlId.Controls.Add(UserControl);
        }

        #endregion
    }
}
