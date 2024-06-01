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
            // Ocultar os rótulos ao carregar a página pela primeira vez
            lblMarca.Visible = false;
            lblModelo.Visible = false;
            lblChassi.Visible = false;
            lblAno.Visible = false;
            lblKm.Visible = false;
            lblPlaca.Visible = false;
        }
    }
    protected void btnFecharModal_Click(object sender, EventArgs e)
    {
        AcionaModal.Value = "False";
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
                    lblMensagem.Text = "Cadastro realizado com sucesso";

                    imgCar.ImageUrl = "../img/genericCarModal-removebg-preview.png";
                    string veiculoTexto = dropDownModelo.SelectedItem.Text;
                    string[] partes = veiculoTexto.Split(new string[] { " - " }, StringSplitOptions.RemoveEmptyEntries);
                    if (partes.Length == 2)
                    {
                        string marcaModelo = partes[0]; // Obtém a parte da marca e modelo
                        string nomeCliente = partes[1]; // Obtém a parte do nome do cliente
                        lblMarcaModelo.Text = marcaModelo;
                        lblNomeDono.Text = nomeCliente;
                    }
                    lblDataModal.Text = osv.Data.ToString("dd/MM/yyyy");
                    lblObservacaoModal.Text = "Observação: " + osv.Observacao.ToString();
                                AcionaModal.Value = "True";
                }
                else
                {
                    lblMensagem.Text = "Erro ao cadastrar o veículo" + retornoOsv;
                }

            }
            catch (Exception ex)
            {
                lblMensagem.Text = "ERRO! Verifique os campos digitados" + ex.Message;
                return;
            }
        }

    }

    protected void btnProcurarVeic_Click(object sender, EventArgs e)
    {
        string marcaFiltro = txtBoxVeiculo.Text.Trim();
        AcionaModal.Value = "False";

        if (String.IsNullOrEmpty(marcaFiltro))
        {
            lblMensagemProcurar.Text = "O campo não pode estar em branco. Insira alguma informação sobre a marca do veículo.";
            lblMensagemProcurar.Visible = true;
            return;
        }

        OrdemsvBD bdOsv = new OrdemsvBD();
        DataSet ds = bdOsv.SelectAllVeic(marcaFiltro);

        dropDownModelo.Items.Clear(); // Limpa as opções anteriores

        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            lblMensagemProcurar.Text = "";

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
            lblMensagemProcurar.Text = "Nenhum veículo encontrado com a marca especificada.";
            dropDownModelo.Items.Add(new ListItem("---- Selecione o veiculo ----", "0")); // Adiciona a opção padrão mesmo quando não há resultados
        }

        lblMensagem.Visible = !String.IsNullOrEmpty(lblMensagem.Text); // Define a visibilidade da mensagem com base no seu conteúdo
    }

    protected void btnCancelarOS_Click(object sender, EventArgs e)
    {
        LimparCampos_Osv();
        // Ocultar os rótulos ao carregar a página pela primeira vez
        lblMarca.Visible = false;
        lblModelo.Visible = false;
        lblChassi.Visible = false;
        lblAno.Visible = false;
        lblKm.Visible = false;
        lblPlaca.Visible = false;
        AcionaModal.Value = "False";
    }

    protected void dropDownModelo_SelectedIndexChanged(object sender, EventArgs e)
    {
        string veiculoId = dropDownModelo.SelectedValue;
        AcionaModal.Value = "False";

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
                lblmsgPlaca.Text = vehicleDetails["VEI_PLACA"].ToString();

                // tornando visivel 
                lblMarca.Visible = true;
                lblModelo.Visible = true;
                lblChassi.Visible = true;
                lblAno.Visible = true;
                lblKm.Visible = true;
                lblPlaca.Visible = true;
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



            // tornando invisivel 
            lblMarca.Visible = false;
            lblModelo.Visible = false;
            lblChassi.Visible = false;
            lblAno.Visible = false;
            lblKm.Visible = false;
            lblPlaca.Visible = false;

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
