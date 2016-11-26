using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MagnaticMaster : System.Web.UI.MasterPage
{
    public List<string> ImagesData = null;
    IEnumerable<imagesData> ImagesXO = null;
    Button ButtonChange = null;
    public string[] getting_images = null;
    string ImageName = String.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        try{
            getImages();
        }catch(Exception ex)
        {
            Debug.Write(ex.Message.ToString());
        }
      



}

    public String[] getImages()
    {
        SqlDataAdapter adp = new SqlDataAdapter("SELECT TOP 10 ImageName FROM Images ORDER BY NEWID();", ConfigurationManager.ConnectionStrings["MagnaticKush"].ConnectionString);

        DataSet dt = new DataSet();
        try
        {
            adp.Fill(dt);
            // Convert DataSet to List
            ImagesData = new List<string>();
            imagesData obj_images = null;
            for (int i = 0; i < dt.Tables[0].Rows.Count; i++)
            {
                obj_images = new imagesData();
                 ImageName = dt.Tables[0].Rows[i]["ImageName"].ToString();
               // obj_images.ImageDescription = dt.Tables[0].Rows[i]["ImageDescription"].ToString();
               // obj_images.DateAdded = dt.Tables[0].Rows[i]["DateAdded"].ToString();
                ImagesData.Add("images/" + ImageName);
            }

             getting_images = ImagesData.ToArray();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            adp.Dispose();
        }


        return getting_images;
    }

}
