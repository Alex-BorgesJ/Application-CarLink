﻿using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using CarLink.Classes.Gestao;
using CarLink.Persistencia.Gestão;
using System.Data;

public partial class Paginas_CarLink_Ordem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void btnSalvarOS_Click(object sender, EventArgs e)
    {
        Ordemsv osv = new Ordemsv();

        try
        {
            DateTime dataEntrada;
            if (!DateTime.TryParse(txtBoxDataEntra.Text, out dataEntrada))
            {
                // Tratar caso a conversão falhe
                lblMensagem.Text = "Erro ao converter a data de entrada.";
                return;
            }

            // Agora você pode usar dataFinalizacao para fazer a atribuição desejada
            osv.DataEntrada = dataEntrada;

            DateTime dataFinalizacao;
            if (!DateTime.TryParse(txtBoxDataFinalizar.Text, out dataFinalizacao))
            {
                // Tratar caso a conversão falhe
                lblMensagem.Text = "Erro ao converter a data de finalização.";
                return;
            }

            // Agora você pode usar dataFinalizacao para fazer a atribuição desejada
            osv.DataEntrada = dataFinalizacao;


            if (String.IsNullOrEmpty(txtBoxObservacao.Text))
            {
                lblMensagem.Text = "O campo não pode estar em branco. Insira alguma informação sobre o estado do veículo";
                return;
            }


        }
        catch (ArgumentException ex)
        {
            lblMensagem.Text = "ERRO! Verifique os campos digitados " + ex.Message;
            return;
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

        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            dropDownModelo.DataSource = ds;
            dropDownModelo.DataTextField = "VEI_MODELO"; // Ou a coluna que você deseja exibir
            dropDownModelo.DataValueField = "VEI_ID"; // Ou outra coluna que você deseja usar como valor
            dropDownModelo.DataBind();

            // Adiciona um item padrão
            dropDownModelo.Items.Insert(0, new ListItem("-- Selecione um Modelo --", "0"));
        }
        else
        {
            lblMensagem.Text = "Nenhum veículo encontrado com a marca especificada.";
        }

    }

    protected void btnCancelarOS_Click(object sender, EventArgs e)
    {
        // Limpar todos os campos
        txtBoxVeiculo.Text = "";
        lblmsgNomeVeic.Text = "";
        lblmsgMarca.Text = "";
        lblmsgModelo.Text = "";
        lblmsgChassi.Text = "";
        lblmsgAno.Text = "";
        lblmsgKm.Text = "";
        txtBoxDataEntra.Text = "";
        txtBoxDataFinalizar.Text = "";
        txtBoxObservacao.Text = "";


        lblMensagem.Text = "";
    }
}
