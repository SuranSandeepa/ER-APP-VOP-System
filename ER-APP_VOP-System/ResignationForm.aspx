﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ResignationForm.aspx.cs" Inherits="ER_APP_VOP_System.ResignationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .row {
            background: rgb(219,226,226);
            border-radius: 30px;
        }

        img {
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
        }

        .Rsave {
            border: none;
            outline: none;
            height: 30px;
            width: 20%;
            background-color: orangered;
            color: white;
            border-radius: 4px;
            font-weight: bold;
        }

            .Rsave:hover {
                background: white;
                border: 1px solid;
                color: black;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="Form my-4 mx-5">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="Images/r3.png" class="img-fluid" alt="Resignation-Form" />
                </div>
                <div class="col-lg-7 px-5 pt-5">
                    <h1 class="font-weight-bold py-3">Resignation</h1>
                    <form>
                        <div class="form-row">
                            <div class="col-lg-7">
                                Date<asp:TextBox ID="TextBox1" class="form-control my-1 p-1" placeholder="Date" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                EPF<asp:TextBox ID="TextBox2" class="form-control my-1 p-1" placeholder="EPF" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                Name<asp:TextBox ID="TextBox3" class="form-control my-1 p-1" placeholder="Name" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                Team<asp:TextBox ID="TextBox4" class="form-control my-1 p-1" placeholder="Team" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                LWD<asp:TextBox ID="TextBox5" class="form-control my-1 p-1" placeholder="LWD" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                Resignation Date<asp:TextBox ID="txtRrd" class="form-control my-1 p-1" placeholder="Reasignation Date" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                Termination Payment Date<asp:TextBox ID="txtRtpd" class="form-control my-1 p-1" placeholder="Termination Payment Date" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <asp:Button ID="Rsave" class="Rsave mt-3 mb-5" runat="server" Text="Save" />
                                <asp:Button ID="Button2" class="Rsave mt-3 mb-5" runat="server" Text="Cancel" />
                            </div>
                        </div>
                    </form>

                </div>

            </div>

        </div>
    </section>


    <section>
        <div>
            <table>
                <tr>
                    <td>Date :
                    </td>
                    <td>
                        <asp:TextBox ID="txtRdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>EPF :
                    </td>
                    <td>
                        <asp:TextBox ID="txtRepf" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtRname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Team :
                    </td>
                    <td>
                        <asp:TextBox ID="txtRteam" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>LWD :
                    </td>
                    <td>
                        <asp:TextBox ID="txtRlwd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Resigntion Date :
                    </td>
                    <td>
                        <asp:TextBox ID="txtRresignationdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Termination Payment Date :
                    </td>
                    <td>
                        <asp:TextBox ID="txtRterminationpaymentdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnRsave" runat="server" Text="Save" OnClick="btnRsave_Click" />
                        <asp:Button ID="btnRcancel" runat="server" Text="Cancel" />
                    </td>
                </tr>
            </table>
        </div>
    </section>

    <section>
        <div class="container">
            <asp:GridView ID="gvResignation" CssClass="table table-bordered table-hover table-responsive" AutoGenerateColumns="false" EmptyDataText="No Record Found" PageSize="30" HorizontalAlign="Center" runat="server">
                <Columns>
                    <asp:BoundField DataField="RDate" HeaderText="Date" />
                    <asp:BoundField DataField="REPF" HeaderText="EPF" />
                    <asp:BoundField DataField="RName" HeaderText="Name" />
                    <asp:BoundField DataField="RTeam" HeaderText="Team" />
                    <asp:BoundField DataField="RLWD" HeaderText="LWD" />
                    <asp:BoundField DataField="RResignDate" HeaderText="Resignation Date" />
                    <asp:BoundField DataField="RTerminationPaymentDate" HeaderText="Termination Payment Date" />
                </Columns>
                <HeaderStyle BackColor="#333333" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </div>
    </section>

</asp:Content>