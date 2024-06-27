<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="Carlink_Administrar.aspx.cs" Inherits="Paginas_Carlink_Administrar" %>

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

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</asp:Content>

