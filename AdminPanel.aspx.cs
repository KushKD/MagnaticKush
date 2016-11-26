using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ImagesUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        try
        {
            HttpFileCollection hfc = Request.Files;
            for (int i = 0; i < hfc.Count; i++)
            {
                HttpPostedFile hpf = hfc[i];
                if (hpf.ContentLength > 0)
                {
                    hpf.SaveAs(Server.MapPath("MyFiles") + "\\" + System.IO.Path.GetFileName(hpf.FileName));
                    sb.Append(String.Format("<br/><b>File Name: </b> {0}  <b>File Size:</b> {1}  <b>File Type:</b>  {2} uploaded successfully", hpf.FileName, hpf.ContentLength, hpf.ContentType));
                }
            }
            lblStatus.ForeColor = Color.Green;
            lblStatus.Text = sb.ToString();
        }
        catch (Exception ex)
        {
            lblStatus.ForeColor = Color.Red;
            lblStatus.Text = "Error occured: " + ex.Message.ToString();
        }

    }
}