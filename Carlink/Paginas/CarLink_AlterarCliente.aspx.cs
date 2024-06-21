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
    
    protected void LimpaErro()
    {
        lblCpfError.Text = "";
        lblEmailError.Text = "";
        lblNomeError.Text = "";
        lblTelError.Text = "";
        lblError.Text = "";
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        LimpaErro();
        int cont = 0;
        if (string.IsNullOrEmpty(txtNome.Text) | txtNome.Text.Length < 3)
        {
            lblNomeError.Text = "Nome não pode estar vazio ou ter menos que 3 digitos <br>";
            cont++;
        }

        if (string.IsNullOrEmpty(txtEmail.Text) | txtEmail.Text.Length < 5)
        {
            lblEmailError.Text = "Email não pode estar vazio ou ter menos que 5 digitos <br>";
            cont++;
        }

        if (string.IsNullOrEmpty(txtTelefone.Text) | txtTelefone.Text.Length < 8)
        {
            lblTelError.Text = "Telefone não pode estar vazio ou ter menos que 8 digitos <br>";
            cont++;
        }

        if (string.IsNullOrEmpty(txtCpf.Text) | txtCpf.Text.Length < 11)
        {
            lblCpfError.Text = "CPF não pode estar vazio ou ter menos que 11 digitos <br>";
        }

        if (cont == 0) {
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
                lblError.Text = "Erro ao salvar.";
            }
        }
        else
        {
            lblError.Text = "Erro ao salvar.";
        }
    }
}