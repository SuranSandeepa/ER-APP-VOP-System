<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Resignation.aspx.cs" Inherits="ER_APP_VOP_System.Resignation" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/background.css" rel="stylesheet" />

    <style>
        span{
            color:white;
        }
        .row {
            background: #28313B;
            border-radius: 30px;
        }

        side {
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
        }

        .Rsave {
            border: none;
            outline: none;
            height: 40px;
            width: 80px;
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


    <%--Header Topic--%>
    <section>
        <div class="container">
            <h1>
                Resignation
            </h1>
        </div>
    </section>

    <section class="Form my-4 mx-5">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="Images/r3.png" class="side img-fluid" alt="Resignation-Form" />
                </div>
                <div class="col-lg-7 px-5 pt-5">
                    <form>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>Date :</span><asp:TextBox ID="txtRDate" class="form-control my-1 p-1" placeholder="Date" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>EPF :</span><asp:TextBox ID="txtREPF" class="form-control my-1 p-1" placeholder="EPF" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>Name :</span><asp:TextBox ID="txtRName" class="form-control my-1 p-1" placeholder="Name" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>Team :</span><asp:TextBox ID="txtRTeam" class="form-control my-1 p-1" placeholder="Team" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>LWD :</span><asp:TextBox ID="txtRLWD" class="form-control my-1 p-1" placeholder="LWD" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>Resignation Date :</span><asp:TextBox ID="txtRrd" class="form-control my-1 p-1" placeholder="Reasignation Date" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>Termination Payment Date :</span><asp:TextBox ID="txtRtpd" class="form-control my-1 p-1" placeholder="Termination Payment Date" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <asp:Button ID="btnRSave" class="Rsave mt-3 mb-5" runat="server" Text="Save" OnClick="btnRSave_Click" />
                                <asp:Button ID="btnCancel" class="Rsave mt-3 mb-5" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>


    <section>
        <div class="container">
            <asp:GridView ID="gvResignation" CssClass="table table-bordered table-hover table-responsive" AutoGenerateColumns="false" EmptyDataText="No Record Found" PageSize="30" HorizontalAlign="Center" runat="server" BackColor="#99CCFF" BorderColor="#003366">
                <Columns>
                    <asp:BoundField DataField="RDate" HeaderText="Date" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" >
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="REPF" HeaderText="EPF" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" >
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RName" HeaderText="Name" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" >
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RTeam" HeaderText="Team" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" >
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RLWD" HeaderText="LWD" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" >
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RResignDate" HeaderText="Resignation Date" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" >
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RTerminationPaymentDate" HeaderText="Termination Payment Date" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" >
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="Black" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#003366" BorderStyle="Groove" />
            </asp:GridView>
        </div>
    </section>


</asp:Content>
