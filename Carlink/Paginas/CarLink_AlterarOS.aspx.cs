using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarLink.Persistencia.Gestão;
using CarLink.Classes.Gestao;

public partial class Paginas_CarLink_AlterarOS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            OrdemsvBD bd = new OrdemsvBD();
            Ordemsv ordem = bd.Select(Convert.ToInt32(Session["ID"]));
            lblId.Text = ordem.Codigo.ToString();
            txtDescricao.Text = ordem.Observacao;
            txtStatus.Text = ordem.Status;
        }

    }
    protected void btnSalvar_Click(object sender, EventArgs e)
    {
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
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}