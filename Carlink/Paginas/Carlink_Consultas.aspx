<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="Carlink_Consultas.aspx.cs" Inherits="Paginas_Carlink_Consultas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container centralize-img my-5">
     <div class="row">
         <div class="col-12 custom-message centralize-img">
             <h1>Estamos trabalhando nisso!</h1>
             <img src="../img/img_EmProcesso.png" alt="página-em-desenvolvimento" class="img-fluid custom-img">
         </div>
     </div>
 </div>
</asp:Content>

