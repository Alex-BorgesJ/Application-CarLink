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
            lblmsgMarca.Visible = false;
            lblmsgModelo.Visible = false;
            lblmsgChassi.Visible = false;
            lblmsgAno.Visible = false;
            lblmsgKm.Visible = false;
            lblmsgPlaca.Visible = false;
            txtBoxObservacao.Visible = false;
        }
    }
    protected void btnFecharModal_Click(object sender, EventArgs e)
    {
        
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
                osv.Status = txtBoxStatus.Text;
                osv.Observacao = txtBoxObservacao.Text;
                


                //Insere valores no banco   
                OrdemsvBD bdOsv = new OrdemsvBD();
                int retornoOsv = bdOsv.Update(osv);
                // Verifica o retorno da inserção
                if (retornoOsv == 0)
                {
                    LimparCampos_Osv(); // Limpa os campos do formulário
                    lblMensagem.Text = "Cadastro atualizado com sucesso" + retornoOsv + osv.Codigo + osv.Status + osv.Observacao;      
                }
                else
                {
                    lblMensagem.Text = "Erro ao atualizar a ordem de serviço" + retornoOsv + osv.Codigo + osv.Status + osv.Observacao;
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

        if (String.IsNullOrEmpty(marcaFiltro))
        {
            lblMensagemProcurar.Text = "O campo não pode estar em branco. Insira alguma informação sobre a marca do veículo.";
            lblMensagemProcurar.Visible = true;
            return;
        }

        OrdemsvBD bdOsv = new OrdemsvBD();
        DataSet ds = bdOsv.SelectAllOsv(marcaFiltro);

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
                //string data = Convert.ToDateTime(row["ODS_DATAEMISSAO"]).ToString("dd/MM/yyyy");
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
        lblmsgMarca.Visible = false;
        lblmsgModelo.Visible = false;
        lblmsgChassi.Visible = false;
        lblmsgAno.Visible = false;
        lblmsgKm.Visible = false;
        lblmsgPlaca.Visible = false;
        txtBoxObservacao.Visible = false;
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
                lblmsgPlaca.Text = vehicleDetails["VEI_PLACA"].ToString();
                txtBoxObservacao.Text = vehicleDetails["ODS_DESCRICAO"].ToString();
                txtBoxStatus.Text = vehicleDetails["ODS_STATUS"].ToString();
                osv.Codigo = osv.Codigo = Convert.ToInt32(vehicleDetails["ODS_ID"]);

                // tornando visivel 
                lblmsgMarca.Visible = true;
                lblmsgModelo.Visible = true;
                lblmsgChassi.Visible = true;
                lblmsgAno.Visible = true;
                lblmsgKm.Visible = true;
                lblmsgPlaca.Visible = true;
                txtBoxObservacao.Visible= true;
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
            lblmsgMarca.Visible = false;
            lblmsgModelo.Visible = false;
            lblmsgChassi.Visible = false;
            lblmsgAno.Visible = false;
            lblmsgKm.Visible = false;
            lblmsgPlaca.Visible = false;
            txtBoxObservacao.Visible = false;
        }
    }

    private DataRow GetVehicleDetailsById(string veiculoId)
    {
        VeiculoBD vei = new VeiculoBD();
        Veiculo carro = vei.Select(Convert.ToInt32(veiculoId));

        OrdemsvBD odv = new OrdemsvBD();
        Ordemsv ordem = odv.SelectVei(Convert.ToInt32(veiculoId));

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
            dt.Columns.Add("ODS_DESCRICAO", typeof(string));
            dt.Columns.Add("ODS_STATUS", typeof(string));
            dt.Columns.Add("ODS_ID", typeof(int));

            DataRow dr = dt.NewRow();
            dr["VEI_MARCA"] = carro.Marca;
            dr["VEI_MODELO"] = carro.Modelo;
            dr["VEI_CHASSI"] = carro.Chassi;
            dr["VEI_ANO"] = carro.Ano;
            dr["VEI_KM"] = carro.Quilometragem;
            dr["VEI_ID"] = carro.Codigo;
            dr["VEI_PLACA"] = carro.Placa;
            dr["ODS_DESCRICAO"] = ordem.Observacao;
            dr["ODS_STATUS"] = ordem.Status;
            dr["ODS_ID"] = ordem.Codigo;

            return dr;
        }

        return null;
    }


}
