using CarLink.Classes.Auth;
using CarLink.Persistencia.Auth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_CarLink_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void LimparCampos_Registro()
    {
        // Limpar todos os campos
        txtBoxNomeRegistro.Text = "";
        txtBoxSobrenomeRegistro.Text = "";
        txtBoxEmpresa.Text = "";
        txtBoxCNPJ.Text = "";
        txtBoxCPF.Text = "";
        txtBoxEmailCorp.Text = "";
        txtBoxTelCorp.Text = "";
        txtBoxSenha.Text = "";
        txtBoxConfSenha.Text = "";

        //Erros de campos
        lblNomeError.Text = "";
        lblSobrenomeError.Text = "";
        lblEmpresaError.Text = "";
        lblCnpjError.Text = "";
        lblCpfError.Text = "";
        lblEmailError.Text = "";
        lblTelError.Text = "";
        lblSenhaError.Text = "";
        lblConfError.Text = "";

        //Sucesso / Erro no cadastro
        lblSucess.Text = "";
        lblError.Text = "";
    }

    protected void btnSalvarCarros_Click(object sender, EventArgs e)
    {
        try {
            

            // Senha
            if (!txtBoxConfSenha.Text.Equals(txtBoxSenha.Text))
            {
                lblConfError.Text = "Senha não compatível";
                return;
            }
            else
            {
                lblConfError.Text = ""; // Limpar a mensagem de erro se não houver erro
            }



            //Copulando objeto de criação
            Registro rg = new Registro();

            rg.Nome = txtBoxNomeRegistro.Text;
            rg.Sobrenome = txtBoxSobrenomeRegistro.Text;
            rg.Empresa = txtBoxEmpresa.Text;
            rg.Email = txtBoxEmailCorp.Text;
            rg.Senha = txtBoxSenha.Text;
            rg.Cnpj = txtBoxCNPJ.Text;
            rg.Cpf = txtBoxCPF.Text;
            rg.Tel = txtBoxTelCorp.Text;
            

            //Conexão com banco
            RegistroBD registroBD = new RegistroBD();
            int retorno = registroBD.Insert(rg);

            if(retorno == 0)
            {
                lblError.Text = "";
                lblSucess.Text = "Cadastro bem sucedido!";
            }
            else
            {
                lblSucess.Text = "Dando b.o " + rg.Nome + rg.Sobrenome + rg.Empresa + rg.Email + rg.Cpf + rg.Cnpj + rg.Tel + rg.Senha;
            }


        }
        catch(Exception ex) {
            lblError.Text = "ERRO! Verifique os campos digitados <br/>" + ex.Message;
            return;
        }


    }

    protected void btnCancelarCarros_Click(object sender, EventArgs e)
    {
        LimparCampos_Registro();
    }
}