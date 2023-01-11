<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Resignation.aspx.cs" Inherits="ER_APP_VOP_System.Resignation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .row{
            background:rgb(219,226,226);
            border-radius:30px;
        }

        img{
            border-top-left-radius:30px;
            border-bottom-left-radius:30px;
        }
        .Rsave{
            border:none;
            outline:none;
            height:40px;
            width:50%;
            background-color:black;
            color:white;
            border-radius:4px;
            font-weight:bold;
        }
        .Rsave:hover{
            background:white;
            border:1px solid;
            color:black;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="Form my-4 mx-5">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="Images/Resignation1.jpeg" class="img-fluid" alt="Resignation-Form" />
                </div>
                <div class="col-lg-7 px-5 pt-5">
                    <h1 class="font-weight-bold py-3">Resignation</h1>
                    <form>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <%--<input type="text" class="form-control my-1 p-1" placeholder="Date" />--%>
                                <asp:TextBox ID="txtRDate" class="form-control my-1 p-1" placeholder="Date" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <%--<input type="text" class="form-control my-1 p-1" placeholder="EPF" />--%>
                                <asp:TextBox ID="txtREPF" class="form-control my-1 p-1" placeholder="EPF" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <%--<input type="text" class="form-control my-1 p-1" placeholder="Name" />--%>
                                <asp:TextBox ID="txtRName" class="form-control my-1 p-1" placeholder="Name" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <%--<input type="text" class="form-control my-1 p-1" placeholder="Team" />--%>
                                <asp:TextBox ID="txtRTeam" class="form-control my-1 p-1" placeholder="Team" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <%--<input type="text" class="form-control my-1 p-1" placeholder="LWD" />--%>
                                <asp:TextBox ID="txtRLWD" class="form-control my-1 p-1" placeholder="LWD" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <%--<input type="text" class="form-control my-1 p-1" placeholder="Reasignation Date" />--%>
                                <asp:TextBox ID="txtRrd" class="form-control my-1 p-1" placeholder="Reasignation Date" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <%--<input type="text" class="form-control my-1 p-1" placeholder="Termination Payment Date" />--%>
                                <asp:TextBox ID="txtRtpd" class="form-control my-1 p-1" placeholder="Termination Payment Date" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <button type="button" class="Rsave mt-3 mb-5">Save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
