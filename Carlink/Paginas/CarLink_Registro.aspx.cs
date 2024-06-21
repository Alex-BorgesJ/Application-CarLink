using CarLink.Classes.Auth;
using CarLink.Persistencia.Auth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_CarLink_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void LimpaErro()
    {
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

    }

    private void LimpaTxtBox() {
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

    protected void btnSalvarRegistro_Click(object sender, EventArgs e)
    {
        try {
            LimpaErro();

            int cont = 0;

            if (txtBoxNomeRegistro.Text == null | txtBoxNomeRegistro.Text.Length < 2) {
                lblNomeError.Text = "O nome não pode estar em branco ou ser menor que 2 digitos";
                cont++;
            }

            if (txtBoxSobrenomeRegistro.Text == null | txtBoxSobrenomeRegistro.Text.Length < 2)
            {
                lblSobrenomeError.Text = "O sobrenome não pode estar em branco ou ser menor que 2 digitos";
                cont++;
            }

            if (txtBoxEmpresa.Text == null | txtBoxEmpresa.Text.Length < 2)
            {
                lblEmpresaError.Text = "A empresa não pode estar em branco ou ser menor que 2 digitos";
                cont++;
            }

            if (txtBoxCNPJ.Text == null | txtBoxCNPJ.Text.Length < 14)
            {
                lblCnpjError.Text = "O CNPJ não pode estar em branco ou ser menor que 14 digitos";
                cont++;
            }

            if (txtBoxCPF.Text == null | txtBoxCPF.Text.Length < 11)
            {
                lblCpfError.Text = "O CPF não pode estar em branco ou ser menor que 11 digitos";
                cont++;
            }

            if (txtBoxEmailCorp.Text == null | txtBoxEmailCorp.Text.Length < 8)
            {
                lblEmailError.Text = "O Email não pode estar em branco ou ser menor que 8 digitos";
                cont++;
            }

            if (txtBoxTelCorp.Text == null | txtBoxTelCorp.Text.Length < 11)
            {
                lblTelError.Text = "O Telefone não pode estar em branco ou ser menor que 11 digitos";
                cont++;
            }

            if (txtBoxSenha.Text == null | txtBoxSenha.Text.Length < 5)
            {
                lblSenhaError.Text = "A senha não pode estar em branco ou ser menor que 5 digitos";
                cont++;
            }

            if (txtBoxConfSenha.Text == null | txtBoxConfSenha.Text.Length < 5)
            {
                lblConfError.Text = "A senha não pode estar em branco ou ser menor que 5 digitos";
                cont++;
            }

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


            if (cont == 0) {
                //Copulando objeto de criação
                Registro rg = new Registro();

                rg.Nome = txtBoxNomeRegistro.Text;
                rg.Sobrenome = txtBoxSobrenomeRegistro.Text;
                rg.Empresa = txtBoxEmpresa.Text;
                rg.Email = txtBoxEmailCorp.Text;
                rg.Senha = HashSenha(txtBoxSenha.Text);
                rg.Cnpj = txtBoxCNPJ.Text;
                rg.Cpf = txtBoxCPF.Text;
                rg.Tel = txtBoxTelCorp.Text;
                rg.Atividade = "ATIVO";
                rg.Plano = 1;


                //Conexão com banco
                RegistroBD registroBD = new RegistroBD();
                int retorno = registroBD.Insert(rg);

                if (retorno == 0)
                {
                    lblError.Text = "";
                    lblSucess.Text = "Cadastro bem sucedido!";
                    LimpaTxtBox();
                }
            }


        }
        catch(Exception ex) {
            lblError.Text = "ERRO! Verifique os campos digitados <br/>" + ex.Message;
            return;
        }


    }

    public static string HashSenha(string texto)
    {
        HashAlgorithm algoritmo = HashAlgorithm.Create("SHA512");
        if (algoritmo == null)
        {
            throw new ArgumentException("Nome de hash incorreto", "nomeHash");
        }
        byte[] hash = algoritmo.ComputeHash(Encoding.UTF8.GetBytes(texto));
        return Convert.ToBase64String(hash).Replace("+", "").Replace("&", "").Replace("=", "");

    }

    protected void btnCancelarRegistro_Click(object sender, EventArgs e)
    {
        LimparCampos_Registro();
    }
}