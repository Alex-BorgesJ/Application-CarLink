using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient; // Adiciona para conexão com o banco de dados
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using CarLink.Persistencia.Gestão;

public partial class Paginas_CarLink_Perfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }

    protected string UrlNav(string url)
    {
        return ResolveUrl("~/Pages/" + url);
    }
}
