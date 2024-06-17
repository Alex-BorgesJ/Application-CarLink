using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using CarLink.Classes.Gestao;
using CarLink.Persistencia.Gestão;
using CarLink.Persistencia.Automotivo;
using CarLink.Persistencia.Local;
using System.Data;
using CarLink.Classes.Automotivo;
using CarLink.Classes.Equipe;
using CarLink.Persistencia.Equipe;
using CarLink.Classes.Local;

public partial class Paginas_CarLink_EditaVeiculo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Ocultar os rótulos ao carregar a página pela primeira vez
            txtBoxMarca.Visible = false;
            txtBoxModelo.Visible = false;
            txtBoxChassi.Visible = false;
            txtBoxAno.Visible = false;
            txtBoxKm.Visible = false;
            txtBoxPlaca.Visible = false;
     
        }
    }
    

    private void LimparCampos_Veic()
    {
        // Limpar todos os campos
        txtBoxVeiculo.Text = "";
        txtBoxMarca.Text = "";
        txtBoxModelo.Text = "";
        txtBoxChassi.Text = "";
        txtBoxAno.Text = "";
        txtBoxKm.Text = "";

        txtBoxPlaca.Text = "";

        lblMensagem_veic.Text = "";
    }
    Veiculo veic = new Veiculo();

    protected void btnSalvarVeic_Click(object sender, EventArgs e)
    {
        
        if (dropDownModelo.SelectedItem.Value != "0")
        {

            lblMensagem_veic.Visible = true;
            try
            {               
                
                veic.Codigo = Convert.ToInt32(dropDownModelo.SelectedItem.Value);
                veic.Ano = Convert.ToInt32(txtBoxAno.Text);
                veic.Marca = txtBoxMarca.Text;
                veic.Modelo = txtBoxModelo.Text;
                veic.Placa = txtBoxPlaca.Text;
                veic.Chassi = txtBoxChassi.Text;
                veic.Quilometragem = txtBoxKm.Text;


                //Insere valores no banco   
                VeiculoBD veiculoBD = new VeiculoBD();
                int retornoVeic = veiculoBD.Update(veic);
                // Verifica o retorno da inserção
                if (retornoVeic == 0)
                {
                    LimparCampos_Veic(); // Limpa os campos do formulário
                    lblMensagem_veic.Text = "Cadastro atualizado com sucesso";
                }
                else
                {
                    lblMensagem_veic.Text = "Erro ao atualizar o veículo" + retornoVeic;
                }

            }
            catch (Exception ex)
            {
                lblMensagem_veic.Text = "ERRO! Verifique os campos digitados" + ex.Message;
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

        lblMensagem_veic.Visible = !String.IsNullOrEmpty(lblMensagem_veic.Text); // Define a visibilidade da mensagem com base no seu conteúdo
    }

    protected void btnCancelarVeic_Click(object sender, EventArgs e)
    {
        LimparCampos_Veic();
        // Ocultar os rótulos ao carregar a página pela primeira vez
        txtBoxMarca.Visible = false;
        txtBoxModelo.Visible = false;
        txtBoxChassi.Visible = false;
        txtBoxAno.Visible = false;
        txtBoxKm.Visible = false;
        txtBoxPlaca.Visible = false;
        
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
                txtBoxMarca.Text = vehicleDetails["VEI_MARCA"].ToString();
                txtBoxModelo.Text = vehicleDetails["VEI_MODELO"].ToString();
                txtBoxChassi.Text = vehicleDetails["VEI_CHASSI"].ToString();
                txtBoxAno.Text = vehicleDetails["VEI_ANO"].ToString();
                txtBoxKm.Text = vehicleDetails["VEI_KM"].ToString();
                txtBoxPlaca.Text = vehicleDetails["VEI_PLACA"].ToString();

                // tornando visivel 
                txtBoxMarca.Visible = true;
                txtBoxModelo.Visible = true;
                txtBoxChassi.Visible = true;
                txtBoxAno.Visible = true;
                txtBoxKm.Visible = true;
                txtBoxPlaca.Visible = true;
            }
            else
            {
                lblMensagem_veic.Text = "Erro ao buscar os detalhes do veículo.";
            }

        }
        else
        {
            // Limpar os campos se a opção padrão for selecionada
            txtBoxMarca.Text = "";
            txtBoxModelo.Text = "";
            txtBoxChassi.Text = "";
            txtBoxAno.Text = "";
            txtBoxKm.Text = "";
            txtBoxPlaca.Text = " ";



            // tornando invisivel 
            txtBoxMarca.Visible = false;
            txtBoxModelo.Visible = false;
            txtBoxChassi.Visible = false;
            txtBoxAno.Visible = false;
            txtBoxKm.Visible = false;
            txtBoxPlaca.Visible = false;

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
