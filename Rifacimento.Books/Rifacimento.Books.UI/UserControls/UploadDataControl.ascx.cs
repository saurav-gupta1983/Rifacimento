using System;
using System.IO;
using System.Collections;
using System.Data;
using BO = Rifacimento.Books.BusinessLayer;

namespace Humana.EAG.Insights.UI.UserControls
{
    public partial class UploadDataControl : System.Web.UI.UserControl
    {
        #region Variables
        private DataTable company;
        #endregion
        /// <summary>
        /// Page_Load
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            company = getDataIntoDataTableFromDoc(@"C:\Documents and Settings\149115\Desktop\India Commercial File.doc");
            //company = getDataIntoDataTableFromDoc(@"C:\Documents and Settings\149115\Desktop\Copy of India Commercial File.doc");
            BO.InsightsBO.BulkTableInsert(company, "Company", Session["User"].ToString());
        }

        /// <summary>
        /// getDataIntoDataTableFromDoc
        /// </summary>
        /// <param name="filePath"></param>
        /// <returns></returns>
        private DataTable getDataIntoDataTableFromDoc(string filePath)
        {
            #region Commented
            //if (DataFileUpload.PostedFile != null)
            //{
            //    // Get a reference to PostedFile object 
            //    System.Web.HttpPostedFile myFile = DataFileUpload.PostedFile;

            //    // Get size of uploaded file 
            //    int nFileLen = myFile.ContentLength;

            //    // make sure the size of the file is > 0 
            //    if (nFileLen > 0)
            //    {
            //        // Allocate a buffer for reading of the file 
            //        byte[] myData = new byte[nFileLen - 1];

            //        // Read uploaded file from the Stream 
            //        myFile.InputStream.Read(myData, 0, nFileLen-1);

            //        MemoryStream s = new MemoryStream(myData);

            //        Stream stream = s;
            //        string Input;

            //        StreamReader Input_S = new StreamReader(stream);

            //        while (true)
            //        {
            //            Input = Input_S.ReadLine();
            //            if (Input == null)
            //            {
            //                break;
            //            }
            //        }
            //    }
            //}
            #endregion

            DataTable companyDetails = new DataTable();
            object nullobj = System.Reflection.Missing.Value;
            object file = filePath;
            //object Format = (int)Word.;
            Word.ApplicationClass wordApp = new Word.ApplicationClass();

            // here on Document.Open there should be 9 arg.
            Word.Document doc = wordApp.Documents.Open(ref file,
            ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj,
            ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj,
            ref nullobj, ref nullobj, ref nullobj, ref nullobj, ref nullobj);

            // Here the word content is copeied into a string which helps to store it into  textbox.

            Word.Document doc1 = wordApp.ActiveDocument;

            try
            {

                string m_Content = doc1.Content.Text;

                ArrayList splitters = new ArrayList();

                splitters.Add(",");
                splitters.Add("Estd.:");
                splitters.Add("Telephone:");
                splitters.Add("Mobile:");
                splitters.Add("Fax.:");
                splitters.Add("E-mail:");
                splitters.Add("Website:");
                splitters.Add("Executive:");
                splitters.Add("Activity:");

                companyDetails.Columns.Add("CompanyName");
                companyDetails.Columns.Add("Address");
                companyDetails.Columns.Add("Estd");
                companyDetails.Columns.Add("Telephone");
                companyDetails.Columns.Add("Mobile");
                companyDetails.Columns.Add("Fax");
                companyDetails.Columns.Add("E-mail");
                companyDetails.Columns.Add("Website");
                companyDetails.Columns.Add("Executive");
                companyDetails.Columns.Add("Activity");
                companyDetails.Columns.Add("Others");

                string[] companies = m_Content.Split(Environment.NewLine.ToCharArray());
                foreach (string company in companies)
                {
                    if (company.Length > 0)
                    {
                        string tempCompany = company;
                        DataRow dr = companyDetails.NewRow();

                        int i;
                        string[] separator = new string[] { "&nbsp;" };
                        for (i = 1; i < splitters.Count; i++)
                        {
                            tempCompany = tempCompany.Replace(splitters[i].ToString(), separator[0].ToString() + splitters[i].ToString());
                        }

                        string[] companyData = tempCompany.Split(separator, StringSplitOptions.None);

                        i = 0;
                        foreach (string data in companyData)
                        {
                            if (i == 0)
                            {
                                dr[i] = data.Split(new string[] { splitters[0].ToString() }, StringSplitOptions.None)[0].Trim().Trim(new char[] { '.' }).Trim();
                                dr[i + 1] = data.Substring(dr[i].ToString().Length + splitters[i].ToString().Length).Trim().Trim(new char[] { '.' }).Trim();
                                i += 1;
                                continue;
                            }
                            else
                            {
                                if (i == splitters.Count)
                                {
                                    dr[i] = dr[i] + data;
                                }
                                while (i < splitters.Count)
                                {
                                    if ((bool)data.StartsWith(splitters[i].ToString()))
                                    {
                                        dr[i + 1] = data.Replace(splitters[i].ToString(), "").Trim().Trim(new char[] { '.' }).Trim();
                                        i++;
                                        break;
                                    }
                                    i++;
                                }
                            }
                        }
                        companyDetails.Rows.Add(dr);
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
            finally
            {
                doc1.Close(ref nullobj, ref nullobj, ref nullobj);
            }
            return companyDetails;
        }
    }
}