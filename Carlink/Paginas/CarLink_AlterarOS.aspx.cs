using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarLink.Persistencia.Gestão;
using CarLink.Classes.Gestao;
using CarLink.Classes.Auth;

public partial class Paginas_CarLink_AlterarOS : System.Web.UI.Page
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
            OrdemsvBD bd = new OrdemsvBD();
            Ordemsv ordem = bd.Select(Convert.ToInt32(Session["ID"]));
            lblId.Text = ordem.Codigo.ToString();
            txtDescricao.Text = ordem.Observacao;
            txtStatus.Text = ordem.Status;
        }

    }

    protected void LimpaErro()
    {
        lblStatusError.Text = "";
        lblDescriError.Text = "";
        lblError.Text = "";
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        LimpaErro();
        int cont = 0;

        if (string.IsNullOrEmpty(txtDescricao.Text) || txtDescricao.Text.Length < 5)
        {
            lblDescriError.Text = "Descrição não pode estar vazia ou ter menos que 5 digitos <br>";
            cont++;
        }

        if (string.IsNullOrEmpty(txtStatus.Text) || txtStatus.Text.Length < 5)
        {
            lblStatusError.Text = "Status não pode estar vazio ou ter menos que 5 digitos <br>";
            cont++;
        }

        if (txtStatus.Text != "PRONTO" & txtStatus.Text != "EM ESPERA" & txtStatus.Text != "EM ANALISE" & txtStatus.Text != "EM PROCESSO")
        {
            lblStatusError.Text = "Tipos aceitos: PRONTO, EM ESPERA, EM ANALISE E EM PROCESSO";
            cont++;
        }

        if (cont == 0) {
            OrdemsvBD bd = new OrdemsvBD();
            Ordemsv ordem = bd.Select(Convert.ToInt32(Session["ID"]));
            ordem.Codigo = Convert.ToInt32(lblId.Text);
            ordem.Observacao = txtDescricao.Text;
            ordem.Status = txtStatus.Text;

            int retorno = bd.Update(ordem);
            if (retorno == 0)
            {
                lblMensagem.Text = "Ordem de Serviço alterada com sucesso";
                lblId.Focus();
            }
            else
            {
                lblMensagem.Text = "";
                lblError.Text = "Erro ao salvar.";
            }
        }
        else
        {
            lblError.Text = "Erro ao salvar.";
        }
    }
}