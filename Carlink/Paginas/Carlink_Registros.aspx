<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="Carlink_Registros.aspx.cs" Inherits="Paginas_Carlink_Registros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .custom-img {
            width: 64%;
        }

        .custom-message {
            text-align: center;
            color: blue;
        }

        .centralize-img {
            display: flex-columm;
            justify-content: center;
            align-items: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container centralize-img my-5">
        <div class="row">
            <div class="col-12 custom-message centralize-img">
                <h1>Estamos trabalhando nisso!</h1>
                <img src="../img/img_EmProcesso.png" alt="página-em-desenvolvimento" class="img-fluid custom-img">
            </div>
        </div>
    </div>
</asp:Content>

