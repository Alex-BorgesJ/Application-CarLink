using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarLink.Classes.Equipe;
using CarLink.Persistencia.Equipe;
using CarLink.Classes.Local;
using CarLink.Persistencia.Local;
using CarLink.Classes.Automotivo;
using CarLink.Persistencia.Automotivo;

public partial class Paginas_CarLink_Cadastro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    // Essas informações são mandadas para o objeto de criação para passar pelo tratamento de dados. 
    private void LimparCampos_Clientes()
    {
        txtBoxNomeCliente.Text = "";
        txtBoxEmailCliente.Text = "";
        txtBoxCPF.Text = "";
        txtBoxTelefoneCliente.Text = "";
        dropDownEstado.SelectedIndex = -1;
        txtBoxCidade.Text = "";
        txtBoxBairro.Text = "";
        txtBoxRua.Text = "";
        txtBoxNumero.Text = "";
        txtBoxCEP.Text = "";
    }

        /// Limpa os campos do formulário de veículo.
        private void LimparCampos_Veiculo()
        {
            txtBoxAno.Text = "";
            txtBoxModelo.Text = "";
            txtBoxMarca.Text = "";
            txtBoxPlaca.Text = "";
            txtBoxChassi.Text = "";
            txtBoxKm.Text = "";
        }

        // botão salvar carros
        protected void btnSalvarCarros_Click(object sender, EventArgs e)
        {
            Veiculo veiculo = new Veiculo();

            try // Bloco try para capturar erros
            {
                // Atribui os valores dos campos do formulário ao objeto Veiculo
                veiculo.Ano = Convert.ToInt32(txtBoxAno.Text);
                veiculo.Modelo = txtBoxModelo.Text;
                veiculo.Marca = txtBoxMarca.Text;
                veiculo.Placa = txtBoxPlaca.Text;
                veiculo.Chassi = txtBoxChassi.Text;
                veiculo.Quilometragem = txtBoxKm.Text;
            }
            catch (Exception ex) // Captura qualquer exceção
            {
                lblMensagem_Veiculo.Text = "ERRO! " + ex.Message; 
                return; 
            }

            VeiculoBD bdVeiculo = new VeiculoBD(); // Cria uma instância da classe VeiculoBD
            int retornoVeiculo = bdVeiculo.Insert(veiculo); // Insere o veículo no banco de dados

            // Verifica o retorno da inserção
            if (retornoVeiculo == 0)
            {
                LimparCampos_Veiculo(); // Limpa os campos do formulário
                lblMensagem_Veiculo.Text = "Cadastro realizado com sucesso.";
            }
            else
            {
                lblMensagem_Veiculo.Text = "Erro ao cadastrar o veículo."; 
            }
        }

        /// botão Cancelar Carros.
        protected void btnCancelarCarros_Click(object sender, EventArgs e)
        {
            // Implemente a lógica de cancelar aqui (opcional)
            LimparCampos_Veiculo(); // Limpa os campos do formulário
        }

protected void btnSalvarClientes_Click(object sender, EventArgs e)
    {
        Cliente cliente = new Cliente();

        try
        {
            cliente.Nome = txtBoxNomeCliente.Text;
            cliente.Email = txtBoxEmailCliente.Text;
            cliente.Cpf = txtBoxCPF.Text;
            cliente.Telefone = txtBoxTelefoneCliente.Text;

        }
        catch (ArgumentException ex)
        {
            lblMensagem_Clientes.Text = "ERRO! " + ex.Message;
            return;
        }

        ClienteBD bdCliente = new ClienteBD();
        int retornoCliente = bdCliente.Insert(cliente);
        int retornoEndereco = 0;

        if (retornoCliente == 0)
        {
            Endereco endereco = new Endereco();
            try
            {
                endereco.Estado = dropDownEstado.SelectedItem.Text;
                endereco.Cidade = txtBoxCidade.Text;
                endereco.Bairro = txtBoxBairro.Text;
                endereco.Rua = txtBoxRua.Text;
                endereco.Numero = txtBoxNumero.Text;
                endereco.Cep = Convert.ToInt32(txtBoxCEP.Text);
                endereco.CLI_codigo = bdCliente.Select(txtBoxEmailCliente.Text).Codigo;
            }
            catch (ArgumentException ex)
            {
                lblMensagem_Clientes.Text = "ERRO! " + ex.Message;
                return;
            }

            EnderecoBD bdEndereco = new EnderecoBD();
            retornoEndereco = bdEndereco.Insert(endereco);

            if (retornoEndereco == 0)
            {
                // Cadastro de cliente e endereço realizado com sucesso
                LimparCampos_Clientes();
                lblMensagem_Clientes.Text = "Cadastro realizado com sucesso";
            }
            else
            {
                // Se houve erro ao cadastrar o endereço, exclua o cliente
                bdCliente.Delete(cliente.Codigo);
                if (string.IsNullOrEmpty(lblMensagem_Clientes.Text))
                {
                    lblMensagem_Clientes.Text = "Erro ao cadastrar o endereço";
                }
            }
        }
        else
        {
            if (string.IsNullOrEmpty(lblMensagem_Clientes.Text))
            {
                lblMensagem_Clientes.Text = "Erro ao cadastrar o cliente";
            }
        }
    }

    protected void btnCancelarClientes_Click(object sender, EventArgs e)
    {
        LimparCampos_Clientes();
    }
    protected void btnSalvarMecanicos_Click(object sender, EventArgs e)
    {
        // Implemente a lógica de salvar aqui
    }

    protected void btnCancelarMecanicos_Click(object sender, EventArgs e)
    {
        // Implemente a lógica de cancelar aqui
    }
}