using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarLink.Persistencia.Automotivo;
using CarLink.Classes.Automotivo;
using CarLink.Classes.Auth;

public partial class Paginas_CarLink_AlterarVeiculo : System.Web.UI.Page
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

    protected void LimpaErro()
    {
        lblAnoError.Text = "";
        lblChassiError.Text = "";
        lblKmError.Text = "";
        lblMarcaError.Text = "";
        lblModeloError.Text = "";
        lblPlacaError.Text = "";

        lblError.Text = "";
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        LimpaErro();
        int cont = 0;

        if (string.IsNullOrEmpty(txtAno.Text) || txtAno.Text.Length < 4)
        {
            lblAnoError.Text = "Ano não pode estar vazio ou ter menos que 4 digitos <br>";
            cont++;
        }

        if (string.IsNullOrEmpty(txtMarca.Text) || txtMarca.Text.Length < 2)
        {
            lblMarcaError.Text = "Marca não pode estar vazia ou ter menos que 2 digitos <br>";
            cont++;
        }

        if (string.IsNullOrEmpty(txtModelo.Text) || txtModelo.Text.Length < 2)
        {
            lblModeloError.Text = "Modelo não pode estar vazio ou ter menos que 2 digitos <br>";
            cont++;
        }

        if (string.IsNullOrEmpty(txtPlaca.Text) || txtPlaca.Text.Length < 7)
        {
            lblPlacaError.Text = "Placa não pode estar vazia ou ter menos que 7 digitos <br>";
            cont++;
        }

        if (string.IsNullOrEmpty(txtChassi.Text) || txtChassi.Text.Length < 8)
        {
            lblChassiError.Text = "Chassi não pode estar vazio ou ter menos que 8 digitos <br>";
            cont++;
        }

        if (string.IsNullOrEmpty(txtKm.Text) )
        {
            lblKmError.Text = "Quilomentragem não pode estar vazia <br>";
            cont++;
        }

        if (cont == 0) {
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
                lblMensagem.Text = "";
                lblError.Text = "Erro ao salvar.";
            }
        }
        else
        {
            lblError.Text = "Erro ao salvar";
        }
    }
}