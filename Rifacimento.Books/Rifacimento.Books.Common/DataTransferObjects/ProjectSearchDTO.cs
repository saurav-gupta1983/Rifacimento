using System;
using System.Collections.Generic;
using System.Text;

namespace Rifacimento.Books.Common.DataTransferObjects
{
    public class ProjectSearchDTO
    {
        #region Variables
        
        private string projectID;
        private string projectTitle;
        private string lifecycle;
        private string lifecyclePhase;
        private string beginDate;
        private string endDate;

        #endregion

        #region Public Properties

        /// <summary>
        /// ProjectID
        /// </summary>
        public string ProjectID
        {
            get
            {
                return projectID;
            }
            set
            {
                projectID = value;
            }
        }

        /// <summary>
        /// ProjectTitle
        /// </summary>
        public string ProjectTitle
        {
            get
            {
                return projectTitle;
            }
            set
            {
                projectTitle = value;
            }
        }

        /// <summary>
        /// Lifecycle
        /// </summary>
        public string Lifecycle
        {
            get
            {
                return lifecycle;
            }
            set
            {
                lifecycle = value;
            }
        }

        /// <summary>
        /// LifecyclePhase
        /// </summary>
        public string LifecyclePhase
        {
            get
            {
                return lifecyclePhase;
            }
            set
            {
                lifecyclePhase = value;
            }
        }

        /// <summary>
        /// BeginDate
        /// </summary>
        public string BeginDate
        {
            get
            {
                return beginDate;
            }
            set
            {
                beginDate = value;
            }
        }

        /// <summary>
        /// EndDate
        /// </summary>
        public string EndDate
        {
            get
            {
                return endDate;
            }
            set
            {
                endDate = value;
            }
        }

        #endregion
    }
}
