using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Projects : System.Web.UI.Page
{

    public List<projectsData> Projects_List = null;
    IEnumerable<projectsData> XO = null;
    Button ButtonChange = null;

    protected void Page_Load(object sender, EventArgs e)
    {

      

         //Populating a DataTable from database.
    
        if (!IsPostBack)
        {
            Projects_List = SearchInData();
            StringBuilder html = new StringBuilder();
            projectList.DataSource = Projects_List;
            projectList.DataBind();
            
        }


    }

   



    public List<projectsData> SearchInData()
    {


        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM MagnaticKush_Projects", ConfigurationManager.ConnectionStrings["MagnaticKush"].ConnectionString);

        DataSet dt = new DataSet();
        try
        {
            adp.Fill(dt);
            // Convert DataSet to List
            Projects_List = new List<projectsData>();
            projectsData obj_Projects = null;
            for (int i = 0; i < dt.Tables[0].Rows.Count; i++)
            {
                obj_Projects = new projectsData();
                obj_Projects.ProjectId = dt.Tables[0].Rows[i]["ProjectId"].ToString();
                obj_Projects.ProjectName = dt.Tables[0].Rows[i]["ProjectName"].ToString();
                obj_Projects.ProjectType = dt.Tables[0].Rows[i]["ProjectType"].ToString();
                obj_Projects.ProjectImageHeader = dt.Tables[0].Rows[i]["ProjectImageHeader"].ToString();
                obj_Projects.ProjectImageThumbnail = dt.Tables[0].Rows[i]["ProjectImageThumbnail"].ToString();
                obj_Projects.LongDescription = dt.Tables[0].Rows[i]["LongDescription"].ToString();
                obj_Projects.ShortDescription = dt.Tables[0].Rows[i]["ShortDescription"].ToString();
                obj_Projects.CreatedBy = dt.Tables[0].Rows[i]["CreatedBy"].ToString();
                obj_Projects.CreatedDate = dt.Tables[0].Rows[i]["CreatedDate"].ToString();
                obj_Projects.GitLink = dt.Tables[0].Rows[i]["GitLink"].ToString();
                obj_Projects.AndroidPlayLink = dt.Tables[0].Rows[i]["AndroidPlayLink"].ToString();
                obj_Projects.ComponyLinks = dt.Tables[0].Rows[i]["ComponyLinks"].ToString();
                Projects_List.Add(obj_Projects);
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            adp.Dispose();
        }


        return Projects_List;
    }


}