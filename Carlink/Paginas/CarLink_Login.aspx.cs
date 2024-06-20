using CarLink.Classes.Auth;
using CarLink.Persistencia.Auth;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_CarLink_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["REG"] = null;
        
    }

    private void LimparCampos_Registro()
    {
        // Limpar todos os campos
        
        txtBoxEmailCorp.Text = "";
        
        txtBoxSenha.Text = "";
        

        //Erros de campos
        
        lblEmailError.Text = "";
        
        lblSenhaError.Text = "";
        

        //Sucesso / Erro no cadastro
        lblSucess.Text = "";
        lblError.Text = "";
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            RegistroBD registro = new RegistroBD();
            DataSet ds = registro.VerifyLogin(txtBoxEmailCorp.Text);

            if (ds.Tables.Count == 0 || ds.Tables[0].Rows.Count == 0)
            {
                lblEmailError.Text = "Email Inválido!";
                return; // Adiciona o return aqui para parar a execução
            }

            string hashArmazenado = ds.Tables[0].Rows[0]["USU_SENHA"].ToString();

            string hashValida = HashSenha(txtBoxSenha.Text);

            if (hashArmazenado == hashValida)
            {
                Registro reg = new Registro
                {
                    Email = txtBoxEmailCorp.Text,
                    Senha = hashArmazenado
                };
                Session["REG"] = reg;

                lblSucess.Text = "Login com sucesso!";
                Response.Redirect("CarLink_Home.aspx");
            }
            else
            {
                lblSenhaError.Text = "Senha incorreta!";
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "ERRO! Verifique os campos digitados <br/>" + ex.Message;
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
}