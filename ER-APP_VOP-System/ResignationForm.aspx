<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ResignationForm.aspx.cs" Inherits="ER_APP_VOP_System.ResignationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
