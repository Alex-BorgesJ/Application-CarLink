<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Cadastro.aspx.cs" Inherits="Paginas_CarLink_Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Cadastros Hub</h5>

            <!-- Pills Tabs -->
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="pills-carros-tab" data-toggle="pill" href="#pills-carros" role="tab" aria-controls="pills-carros" aria-selected="true">Carros</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="pills-clientes-tab" data-toggle="pill" href="#pills-clientes" role="tab" aria-controls="pills-clientes" aria-selected="false">Clientes</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="pills-mecanicos-tab" data-toggle="pill" href="#pills-mecanicos" role="tab" aria-controls="pills-mecanicos" aria-selected="false">Mecânicos</a>
                </li>
            </ul>
            <div class="tab-content pt-2" id="myTabContent">
                <!-- Content Tabs - Carros -->
                <div class="tab-pane fade show active" id="pills-carros" role="tabpanel" aria-labelledby="carros-tab">
                    <!-- Carros Form -->
                    <form class="row form-group">
                        <div class="col-6 my-2">
                            <label for="inputMarca" class="form-label">Marca</label>
                            <input type="text" class="form-control" id="inputMarca" placeholder="Chevrolet">
                        </div>
                        <div class="col-6 my-2">
                            <label for="inputModelo" class="form-label">Modelo</label>
                            <input type="text" class="form-control" id="inputModelo" placeholder="Corsa Classic">
                        </div>
                        <div class="col-6 my-2">
                            <label for="inputAno" class="form-label">Ano</label>
                            <input type="number" class="form-control" id="inputAno" min="1886" placeholder="YYYY">
                        </div>
                        <div class="col-6 my-2">
                            <label for="inputPlaca" class="form-label">Placa</label>
                            <input type="text" class="form-control" id="inputPlaca" placeholder="ABC-1234 ou AAA1A23">
                        </div>
                        <div class="col-6 my-2">
                            <label for="inputKm" class="form-label">Quilometragem</label>
                            <input type="text" class="form-control" id="inputKm" placeholder="40000 (km)">
                        </div>
                        <div class="col-6 my-2">
                            <label for="inputChassi" class="form-label">Chassi</label>
                            <input type="text" class="form-control" id="inputChassi" placeholder="ABC12345678901234">
                        </div>
                        <div class="row col-6 my-3">
                            <label for="inputColor" class="col-sm-2 ">Cor do Veiculos</label>
                            <div class="col-sm-4">
                                <input type="color" class="form-control form-control-color" id="exampleColorInput" value="#4154f1" title="Choose your color">
                            </div>
                        </div>

                        <div class="col-6 my-2">
                            <label for="inputCliente" class="form-label">Dono do Veículo</label>
                            <input class="form-control" id="inputCliente" list="datalistOptions" multiple>
                            <datalist class="dropdown-list" id="datalistOptions">
                                <option value="Option 1">
                                <option value="Option 2">
                                <option value="Option 3">
                            </datalist>
                            <div class="form-check my-2">
                                <input class="form-check-input" type="checkbox" id="checkClienteCadastro">
                                <label class="form-check-label" for="checkClienteCadastro">
                                    Não possui dono cadastrado
                                </label>
                            </div>
                        </div>
                        <div class="text-center col-12 mt-4">
                            <button type="submit" class="btn btn-primary">Salvar</button>
                            <button type="reset" class="btn btn-secondary">Cancelar</button>
                        </div>
                    </form>
                    <!-- End Carros Form -->
                </div>
                <!-- End Content Tabs - Carros -->

                <!-- Content Tabs - Clietes -->
                <div class="tab-pane fade" id="pills-clientes" role="tabpanel" aria-labelledby="clientes-tab">
                    Nesciunt totam et. Consequuntur magnam aliquid eos nulla dolor iure eos quia. Accusantium distinctio omnis et atque fugiat. Itaque doloremque aliquid sint quasi quia distinctio similique. Voluptate nihil recusandae mollitia dolores. Ut laboriosam voluptatum dicta.
                </div>
                <!-- End Content Tabs - Clietes -->

                <!-- Content Tabs - Mecanicos -->
                <div class="tab-pane fade" id="pills-mecanicos" role="tabpanel" aria-labelledby="mecanicos-tab">
                    Saepe animi et soluta ad odit soluta sunt. Nihil quos omnis animi debitis cumque. Accusantium quibusdam perspiciatis qui qui omnis magnam. Officiis accusamus impedit molestias nostrum veniam. Qui amet ipsum iure. Dignissimos fuga tempore dolor.
                </div>
                <!-- End Content Tabs - Clietes -->

            </div>

            <!-- End Pills Tabs -->

        </div>
    </div>

</asp:Content>

