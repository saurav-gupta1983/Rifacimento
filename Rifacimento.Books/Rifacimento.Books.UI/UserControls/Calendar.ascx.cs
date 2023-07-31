using System;
using System.Web.UI.WebControls;

namespace Rifacimento.Books.UI
{
    /// <summary>
    /// Calendar
    /// </summary>
    public partial class Calendar : System.Web.UI.UserControl
    {
        #region Variable Declaration
        private string selectedDate;
        #endregion

        #region Page Load Event

        /// <summary>
        /// Page_Load
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        #endregion

        #region Event Handlers

        /// <summary>
        /// CalendarUserControl_SelectionChanged
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void CalendarUserControl_SelectionChanged(object sender, EventArgs e)
        {
            selectedDate = CalendarUserControl.SelectedDate.ToShortDateString();
            DateTextBox.Text = CalendarUserControl.SelectedDate.ToShortDateString();
            CalendarUserControl.SelectedDate = Convert.ToDateTime("01/01/0001");
            DivCalendar.Style.Add("display", "none");
        }

        /// <summary>
        /// GetDate
        /// </summary>
        /// <returns></returns>
        public string GetDate()
        {
            return DateTextBox.Text;
        }

        /// <summary>
        /// CalendarUserControl_VisibleMonthChanged
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void CalendarUserControl_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            DivCalendar.Style.Add("display", "inline");
        }
        #endregion

        #region Properties

        public string Date
        {
            get
            {
                return DateTextBox.Text;
            }
            set
            {
                DateTextBox.Text = value;
            }
        }

        #endregion
    }
}