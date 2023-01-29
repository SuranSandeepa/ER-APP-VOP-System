<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="ER_APP_VOP_System.Feedback" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/background.css" rel="stylesheet" />

    <style>
        span {
            color: white;
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
            <h1>Feedaback
            </h1>
        </div>
    </section>

    <section class="Form my-4 mx-5">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="Images/r4.png" class="side img-fluid" alt="Feedback-Form" />
                </div>
                <div class="col-lg-7 px-5 pt-5">
                    <form>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>1. Did you like our website design ?</span><asp:TextBox ID="txtFQ1" class="form-control my-1 p-1" placeholder="Type here..." runat="server" Height="80px" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>2. On a scale of 0-10, how would you rate the usability of our website?</span><asp:TextBox ID="txtFQ2" class="form-control my-1 p-1" placeholder="Type here..." runat="server" Height="80px" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>3. Do you have any other suggestions ?</span><asp:TextBox ID="txtFQ3" class="form-control my-1 p-1" placeholder="Type here..." runat="server" Height="80px" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <asp:Button ID="btnFSave" class="Rsave mt-3 mb-5" runat="server" Text="Save" OnClick="btnFSave_Click" />
                                <asp:Button ID="btnFCancel" class="Rsave mt-3 mb-5" runat="server" Text="Cancel" OnClick="btnFCancel_Click" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>


    <section>
        <div class="container">
            <asp:GridView ID="gvFeedback" CssClass="table table-bordered table-hover table-responsive" AutoGenerateColumns="false" EmptyDataText="No Record Found" PageSize="30" HorizontalAlign="Center" runat="server" BackColor="White" BorderColor="#003366">
                <Columns>
                    <asp:BoundField DataField="Fdate" HeaderText="Date" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Fq1" HeaderText="Did you like our website design?" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Fq2" HeaderText="On a scale of 0-10, how would you rate the usability of our website?" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Fq3" HeaderText="Do you have any other suggestions?" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>

                </Columns>
                <HeaderStyle BackColor="#333333" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#003366" BorderStyle="Groove" />
            </asp:GridView>
        </div>
    </section>
</asp:Content>
