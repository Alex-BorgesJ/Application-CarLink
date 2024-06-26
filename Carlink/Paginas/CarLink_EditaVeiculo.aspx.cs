using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using CarLink.Classes.Gestao;
using CarLink.Persistencia.Gestão;
using CarLink.Persistencia.Automotivo;
using CarLink.Persistencia.Local;
using System.Data;
using CarLink.Classes.Automotivo;
using CarLink.Classes.Equipe;
using CarLink.Persistencia.Equipe;
using CarLink.Classes.Local;
using CarLink.Classes.Auth;

public partial class Paginas_CarLink_EditaVeiculo : System.Web.UI.Page
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

        Carrega();

        if (!IsPostBack)
            AcionaModal.Value = "False";
    }

    private void Carrega()
    {
        VeiculoBD bd = new VeiculoBD();
        DataSet ds = bd.SelectAll();
        GridView.DataSource = ds.Tables[0].DefaultView;
        GridView.DataBind();
    }
    protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int codigo = 0;
        switch (e.CommandName)
        {
            case "Alterar":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo;
                AcionaModal.Value = "False";
                Response.Redirect("CarLink_AlterarVeiculo.aspx");
                break;
            case "Deletar":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo;
                AcionaModal.Value = "True";
                Carrega();
                break;
            default:
                break;
        }
    }

    protected void onClick_Yes(object sender, EventArgs e)
    {
        int codigo = Convert.ToInt32(Session["ID"]);
        VeiculoBD bd = new VeiculoBD();
        bd.Delete(codigo);
        AcionaModal.Value = "False";
        Response.Redirect(Request.RawUrl);
    }

}
