using CarLink.Classes.Auth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["REG"] == null)
        {
            Response.Redirect("CarLink_Login.aspx");
            return; // Adiciona um return após o redirecionamento para garantir que a execução pare aqui
        }

        Registro reg = (Registro)Session["REG"];
        // Use 'reg' conforme necessário.
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["REG"] = null;
        Response.Redirect("CarLink_Login.aspx");
    }

        protected string UrlNav(string url)
    {
         
        return ResolveUrl("~/Paginas/" + url); 
    }
}
