using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Excel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        List<String> Dados = new List<String>();
        for (int i = 0; i < 100; i++)
        {
            Dados.Add("Nome " + i.ToString());
        }

        ExpRepeater.DataSource = Dados;
        ExpRepeater.DataBind();



        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        ExpPanel.RenderControl(htw);
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Clear();
        Response.AddHeader("content-disposition", "attachment; filename=SearchResults.xls");
        Response.ContentType = "application/vnd.ms-excel";
        Response.Write(sw.ToString());
        Response.End();

    }
}