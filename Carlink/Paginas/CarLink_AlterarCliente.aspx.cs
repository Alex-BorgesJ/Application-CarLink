using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarLink.Persistencia.Equipe;
using CarLink.Classes.Equipe;
using CarLink.Classes.Auth;

public partial class Paginas_CarLink_AlterarCliente : System.Web.UI.Page
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

        if (!Page.IsPostBack)
        {
            ClienteBD bd = new ClienteBD();
            Cliente cliente = bd.SelectID(Convert.ToInt32(Session["ID"]));
            lblId.Text = cliente.Codigo.ToString();
            txtNome.Text = cliente.Nome;
            txtEmail.Text = cliente.Email;
            txtTelefone.Text = cliente.Telefone;
            txtCpf.Text = cliente.Cpf;
        }

    }
    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        ClienteBD bd = new ClienteBD();
        Cliente cliente = bd.SelectID(Convert.ToInt32(Session["ID"]));
        cliente.Codigo = Convert.ToInt32(lblId.Text);
        cliente.Nome = txtNome.Text;
        cliente.Email = txtEmail.Text;
        cliente.Telefone = txtTelefone.Text;
        cliente.Cpf = txtCpf.Text;

        int retorno = bd.Update(cliente);
        if (retorno == 0)
        {
            lblMensagem.Text = "Cliente alterado com sucesso";
            txtNome.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}