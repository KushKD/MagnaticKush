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

public partial class ProjectDetails : System.Web.UI.Page
{
    List<projectsData> Projects_List = null;
    IEnumerable<projectsData> XO = null;
    Button ButtonChange = null;
    public string ID_;
    string ID = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            ID = Request.QueryString["productID"];
            Projects_List = SearchInData();
            StringBuilder html = new StringBuilder();

            html.Append("<div class='row'  runat='server'> ");
            for (int i = 0; i < Projects_List.Count(); i++)
            {
                 html.Append("<div class='col-lg-3 col-md-4 col-sm-6 col-xs-12' id='"+i+"' runat='server' style='background-color:#FFF;margin:5px;'> ");
                 html.Append("<h2 class='text-center center-block'>" + Projects_List[i].ProjectName.ToString().Trim() + "</h2>");
                 html.Append("<img src='images/project_thumb/" + Projects_List[i].ProjectImageThumbnail.ToString().Trim() + "' class='img-responsive img-thumbnail center-block' style='min-width:180px;min-height:180px;' />");
                 html.Append("<p class='text-center center-block'>" + Projects_List[i].CreatedBy.ToString().Trim() + "</p>");
                 html.Append("<p class='text-center center-block'>" + Projects_List[i].CreatedDate.ToString().Trim() + "</p>");
                //html.Append("<asp:Button  runat='server' ID='" + Projects_List[i].ProjectId.ToString().Trim() + "' OnClick='btn_click'  class='btn btn-primary  col-lg-12 col-md-12 col-sm-12 col-xs-12' Text='Details' style='margin:10px;>");
                //html.Append("<p class='text-center center-block'>" + "View Details" + "</p>");
                // html.Append("</asp:Button >");

                //html.Append("<button type='Button' onserverclick = 'FancyBtn_Click' runat = 'server' id = 'BUTTON1'>");

                //html.Append("<b>Test Tes</b> ");
                //html.Append("</button>");
               
                //  webcontent.Controls.Add(ButtonChange);
                  html.Append("</div>");
            }


            html.Append("</div>");
            webcontent.InnerHtml = html.ToString();  
        }
    }

    public List<projectsData> SearchInData()
    {

        
        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM MagnaticKush_Projects WHERE ProjectId='"+ ID +"'", ConfigurationManager.ConnectionStrings["MagnaticKush"].ConnectionString);

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


