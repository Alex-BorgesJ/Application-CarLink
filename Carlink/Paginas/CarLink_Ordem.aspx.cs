using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Paginas_CarLink_Ordem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindClientesDropDown();
        }
    }

    private void BindClientesDropDown()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MySQLConnectionString"].ConnectionString;
        using (MySqlConnection connection = new MySqlConnection(connectionString))
        {
            string query = "SELECT CLI_CODIGO, CLI_NOME FROM CLI_CLIENTE";
            MySqlCommand command = new MySqlCommand(query, connection);
            try
            {
                connection.Open();
                MySqlDataReader reader = command.ExecuteReader();
                dropDownIdCliente.DataSource = reader;
                dropDownIdCliente.DataTextField = "CLI_NOME";
                dropDownIdCliente.DataValueField = "CLI_CODIGO";
                dropDownIdCliente.DataBind();
            }
            catch (Exception ex)
            {
                // Realiza a verificação e exibe a menssagem
                Console.WriteLine("Erro ao carregar clientes: " + ex.Message);
            }
        }
        dropDownIdCliente.Items.Insert(0, new ListItem("Selecione o Cliente", ""));
    }

    protected void btnSalvarOS_Click(object sender, EventArgs e)
    {
        lblMensagem.Text = string.Empty;

        // Vai validar os campos
        if (string.IsNullOrEmpty(txtBoxDataEntra.Text) || string.IsNullOrEmpty(txtBoxDataFinalizar.Text) ||
            string.IsNullOrEmpty(txtBoxDescri.Text) || string.IsNullOrEmpty(txtBoxValServ.Text) ||
            string.IsNullOrEmpty(txtBoxVeiculo.Text) || string.IsNullOrEmpty(txtBoxMecanico.Text))
        {
            lblMensagem.Text = "Todos os campos são obrigatórios.";
            lblMensagem.CssClass = "text-danger";
            return;
        }

        DateTime dataEntra;
        DateTime dataFinalizar;
        double valorServico;

        if (!DateTime.TryParse(txtBoxDataEntra.Text, out dataEntra) || !DateTime.TryParse(txtBoxDataFinalizar.Text, out dataFinalizar))
        {
            lblMensagem.Text = "Data de Entrada e Data de Finalização devem ser válidas.";
            lblMensagem.CssClass = "text-danger";
            return;
        }

        if (!double.TryParse(txtBoxValServ.Text, out valorServico))
        {
            lblMensagem.Text = "Valor de Serviço deve ser um número válido.";
            lblMensagem.CssClass = "text-danger";
            return;
        }

        string descricao = txtBoxDescri.Text;
        string placaVeiculo = txtBoxVeiculo.Text;
        string mecanico = txtBoxMecanico.Text;

        // verificação se o registro está cadastrado ou não
        string clienteAssociado = GetClienteAssociado(placaVeiculo);
        if (clienteAssociado == null)
        {
            lblMensagem.Text = "Veículo não está cadastrado.";
            lblMensagem.CssClass = "text-danger";
            return;
        }

        //Se estiver cadastrado, faz o link do cliente ao dropdown
        dropDownIdCliente.SelectedValue = clienteAssociado;

        string connectionString = ConfigurationManager.ConnectionStrings["MySQLConnectionString"].ConnectionString;
        using (MySqlConnection connection = new MySqlConnection(connectionString))
        {
            string insertQuery = @"INSERT INTO ODS_ORDEM_SERVICO (ODS_DATACRIACAO, ODS_DATAFINALIZAR, ODS_DESCRICAO, ODS_VALORTOTAL, VEI_PLACA) 
                                   VALUES (@DataCriacao, @DataFinalizar, @Descricao, @ValorTotal, @VeiculoPlaca)";
            MySqlCommand command = new MySqlCommand(insertQuery, connection);
            command.Parameters.AddWithValue("@DataCriacao", dataEntra);
            command.Parameters.AddWithValue("@DataFinalizar", dataFinalizar);
            command.Parameters.AddWithValue("@Descricao", descricao);
            command.Parameters.AddWithValue("@ValorTotal", valorServico);
            command.Parameters.AddWithValue("@VeiculoPlaca", placaVeiculo);
            

            try
            {
                connection.Open();
                int result = command.ExecuteNonQuery();
                if (result > 0)
                {
                    lblMensagem.Text = "Ordem de serviço cadastrada com sucesso.";
                    lblMensagem.CssClass = "text-success";
                }
                else
                {
                    lblMensagem.Text = "Erro ao cadastrar a ordem de serviço.";
                    lblMensagem.CssClass = "text-danger";
                }
            }
            catch (Exception ex)
            {
                lblMensagem.Text = "Erro: " + ex.Message;
                lblMensagem.CssClass = "text-danger";
            }
        }
    }

    private string GetClienteAssociado(string placaVeiculo)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MySQLConnectionString"].ConnectionString;
        using (MySqlConnection connection = new MySqlConnection(connectionString))
        {
            string query = "SELECT CLI_CODIGO FROM VEI_VEICULO WHERE VEI_PLACA = @PlacaVeiculo";
            MySqlCommand command = new MySqlCommand(query, connection);
            command.Parameters.AddWithValue("@PlacaVeiculo", placaVeiculo);

            try
            {
                connection.Open();
                object result = command.ExecuteScalar();
                if (result != null)
                {
                    return result.ToString();
                }
                else
                {
                    return null; // Veículo não cadastrado
                }
            }
            catch (Exception ex)
            {
                // Exibe a mensagem em caso de erro
                Console.WriteLine("Erro ao verificar veículo: " + ex.Message);
                return null;
            }
        }
    }

    protected void btnCancelarOS_Click(object sender, EventArgs e)
    {
        // Limpar todos os campos
        txtBoxDataEntra.Text = "";
        txtBoxDataFinalizar.Text = "";
        txtBoxDescri.Text = "";
        txtBoxValServ.Text = "";
        txtBoxVeiculo.Text = "";
        txtBoxMecanico.Text = "";
        TextBoxPeca.Text = "";
        TextBoxQtd.Text = "";
        dropDownIdCliente.SelectedIndex = 0;

        lblMensagem.Text = "";
    }
}
