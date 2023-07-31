using System.Diagnostics;
using System;

namespace Rifacimento.Books.Common
{
    public class ExceptionLogger
    {
        #region Variable Declaration
        
        //Application Id for Insights Application to check exceptions in http://logging.humana.com
        private const int insightsApplicationId = 0;

        #endregion

        #region ExceptionLog

        public static void Log(Exception exception)
        {
            if (System.Configuration.ConfigurationManager.AppSettings["LocalLogger"] == "TRUE")
            {
                EventLog.WriteEntry("EAG Insights Assessment Tool", exception.Message.ToString());
            }
            else
            {
                //SharePointLogger.Log(insightsApplicationId, exception.Message.ToString());
            }
        }

        #endregion
    }
}
