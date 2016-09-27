using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quote.App_Code;

namespace Quote
{
    public partial class Index : System.Web.UI.Page
    {
        Prop p = new Prop();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Upload(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string filenameWOext = Path.GetFileNameWithoutExtension(FileUpload1.FileName) + "_" + System.Guid.NewGuid().ToString();
                    string fileExtension = Path.GetExtension(FileUpload1.FileName);
                    string filename = filenameWOext + fileExtension;

                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadedImages/") + filename);

                    ViewState["filename"] = filename;

                    lblUploadMsg.Text = "Image upload succesfully";
                }
                catch (HttpException ex)
                {
                    lblUploadMsg.Text = "Image upload failed" + ex.Message;
                }

                lblUploadMsg.Visible = true;
            }
        }

        protected void btnSubmitRegistration_Click(object sender, EventArgs e)
        {
            Prop p = new Prop();

            p.Name = txtName.Text;
            p.Email = txtEmail.Text;
            p.ContactNo = txtContactNo.Text;
            p.ImageName = ViewState["filename"].ToString();

            Email email = new Email();
            email.Send(p);
        }
    }
}