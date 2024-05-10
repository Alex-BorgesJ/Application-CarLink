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

public partial class Paginas_CarLink_Cadastro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
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


    protected void btnSalvarCarros_Click(object sender, EventArgs e)
    {
        // Implemente a lógica de salvar aqui
    }

    protected void btnCancelarCarros_Click(object sender, EventArgs e)
    {
        // Implemente a lógica de cancelar aqui
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