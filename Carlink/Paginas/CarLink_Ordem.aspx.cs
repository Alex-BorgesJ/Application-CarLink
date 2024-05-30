using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using CarLink.Classes.Gestao;
using CarLink.Persistencia.Gestão;
using CarLink.Persistencia.Automotivo;
using System.Data;
using CarLink.Classes.Automotivo;

public partial class Paginas_CarLink_Ordem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    private void LimparCampos_Osv()
    {
        // Limpar todos os campos
        txtBoxVeiculo.Text = "";
        lblmsgMarca.Text = "";
        lblmsgModelo.Text = "";
        lblmsgChassi.Text = "";
        lblmsgAno.Text = "";
        lblmsgKm.Text = "";
        txtBoxObservacao.Text = "";
        txtBoxDataEmissao.Text = " ";
        lblmsgPlaca.Text = "";

        lblMensagem.Text = "";
    }
    Ordemsv osv = new Ordemsv();

    protected void btnSalvarOS_Click(object sender, EventArgs e)
    {
        //Ordemsv osv = new Ordemsv();
        if (dropDownModelo.SelectedItem.Value != "0")
        {

            lblMensagem.Visible = true;
            try
            {
                DateTime dataFormatada = DateTime.Parse(txtBoxDataEmissao.Text);
                osv.Data = dataFormatada;
                osv.Status = "EM ESPERA";
                osv.Observacao = txtBoxObservacao.Text;
                osv.Codigo = Convert.ToInt32(dropDownModelo.SelectedItem.Value);


                //Insere valores no banco   
                OrdemsvBD bdOsv = new OrdemsvBD();
                int retornoOsv = bdOsv.Insert(osv);
                // Verifica o retorno da inserção
                if (retornoOsv == 0)
                {
                    LimparCampos_Osv(); // Limpa os campos do formulário
                    lblMensagem.Text = "Cadastro realizado com sucesso.";
                }
                else
                {
                    lblMensagem.Text = "Erro ao cadastrar o veículo." + retornoOsv;
                }

            }
            catch (Exception ex)
            {
                lblMensagem.Text = "ERRO! Verifique os campos digitados. " + ex.Message;
                return;
            }
        }

    }

    protected void btnProcurarVeic_Click(object sender, EventArgs e)
    {
        string marcaFiltro = txtBoxVeiculo.Text.Trim();

        if (String.IsNullOrEmpty(marcaFiltro))
        {
            lblMensagem.Text = "O campo não pode estar em branco. Insira alguma informação sobre a marca do veículo.";
            lblMensagem.Visible = true;
            return;
        }

        OrdemsvBD bdOsv = new OrdemsvBD();
        DataSet ds = bdOsv.SelectAllVeic(marcaFiltro);

        dropDownModelo.Items.Clear(); // Limpa as opções anteriores

        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            lblMensagem.Text = "";

            // Adiciona a opção padrão
            dropDownModelo.Items.Add(new ListItem("---- Selecione o veiculo ----", "0"));

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                string marca = row["VEI_MARCA"].ToString();
                string modelo = row["VEI_MODELO"].ToString();
                string clienteNome = row["CLI_NOME"].ToString();
                string displayText = string.Format("{0} {1} - {2}", marca, modelo, clienteNome);

                dropDownModelo.Items.Add(new ListItem(displayText, row["VEI_ID"].ToString()));
            }

            dropDownModelo.SelectedIndex = 0;
        }
        else
        {
            lblMensagem.Text = "Nenhum veículo encontrado com a marca especificada.";
            dropDownModelo.Items.Add(new ListItem("---- Selecione o veiculo ----", "0")); // Adiciona a opção padrão mesmo quando não há resultados
        }

        lblMensagem.Visible = !String.IsNullOrEmpty(lblMensagem.Text); // Define a visibilidade da mensagem com base no seu conteúdo
    }

    protected void btnCancelarOS_Click(object sender, EventArgs e)
    {
        LimparCampos_Osv();
    }

    protected void dropDownModelo_SelectedIndexChanged(object sender, EventArgs e)
    {
        string veiculoId = dropDownModelo.SelectedValue;

        if (!string.IsNullOrEmpty(veiculoId) && veiculoId != "0")
        {
            // Buscar informações detalhadas do veículo usando veiculoId
            DataRow vehicleDetails = GetVehicleDetailsById(veiculoId);

            //Coletando o Id
            //osv.VeicId = Convert.ToInt32(vehicleDetails["VEI_ID"]);

            if (vehicleDetails != null)
            {
                lblmsgMarca.Text = vehicleDetails["VEI_MARCA"].ToString();
                lblmsgModelo.Text = vehicleDetails["VEI_MODELO"].ToString();
                lblmsgChassi.Text = vehicleDetails["VEI_CHASSI"].ToString();
                lblmsgAno.Text = vehicleDetails["VEI_ANO"].ToString();
                lblmsgKm.Text = vehicleDetails["VEI_KM"].ToString();
                lblmsgPlaca.Text = vehicleDetails["VEI_PLACA"].ToString() ;
                

            }
            else
            {
                lblMensagem.Text = "Erro ao buscar os detalhes do veículo.";
            }
        }
        else
        {
            // Limpar os campos se a opção padrão for selecionada
            lblmsgMarca.Text = "";
            lblmsgModelo.Text = "";
            lblmsgChassi.Text = "";
            lblmsgAno.Text = "";
            lblmsgKm.Text = "";
            lblmsgPlaca.Text = " ";
            
        }
    }

    private DataRow GetVehicleDetailsById(string veiculoId)
    {
        VeiculoBD vei = new VeiculoBD();
        Veiculo carro = vei.Select(Convert.ToInt32(veiculoId));

        if (carro != null)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("CLI_NOME", typeof(string));
            dt.Columns.Add("VEI_MARCA", typeof(string));
            dt.Columns.Add("VEI_MODELO", typeof(string));
            dt.Columns.Add("VEI_PLACA", typeof(string));
            dt.Columns.Add("VEI_CHASSI", typeof(string));
            dt.Columns.Add("VEI_ANO", typeof(int));
            dt.Columns.Add("VEI_KM", typeof(int));
            dt.Columns.Add("VEI_ID", typeof(int));

            DataRow dr = dt.NewRow();
            dr["VEI_MARCA"] = carro.Marca;
            dr["VEI_MODELO"] = carro.Modelo;
            dr["VEI_CHASSI"] = carro.Chassi;
            dr["VEI_ANO"] = carro.Ano;
            dr["VEI_KM"] = carro.Quilometragem;
            dr["VEI_ID"] = carro.Codigo;
            dr["VEI_PLACA"] = carro.Placa;

            return dr;
        }

        return null;
    }


}
