using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarLink.Persistencia.Automotivo;
using CarLink.Classes.Automotivo;

public partial class Paginas_CarLink_AlterarVeiculo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            VeiculoBD bd = new VeiculoBD();
            Veiculo veiculo = bd.Select(Convert.ToInt32(Session["ID"]));
            lblId.Text = Session["ID"].ToString();
            txtAno.Text = veiculo.Ano.ToString();
            txtMarca.Text = veiculo.Marca;
            txtModelo.Text = veiculo.Modelo;
            txtPlaca.Text = veiculo.Placa;
            txtChassi.Text = veiculo.Chassi;
            txtKm.Text = veiculo.Quilometragem;
        }

    }
    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        VeiculoBD bd = new VeiculoBD();
        Veiculo veiculo = bd.Select(Convert.ToInt32(Session["ID"]));
        veiculo.Codigo = Convert.ToInt32(lblId.Text);
        veiculo.Ano = Convert.ToInt32(txtAno.Text);
        veiculo.Marca = txtMarca.Text;
        veiculo.Modelo = txtModelo.Text;
        veiculo.Placa = txtPlaca.Text;
        veiculo.Chassi = txtChassi.Text;
        veiculo.Quilometragem = txtKm.Text;

        int retorno = bd.Update(veiculo);
        if (retorno == 0)
        {
            lblMensagem.Text = "Veículo alterado com sucesso";
            lblId.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}