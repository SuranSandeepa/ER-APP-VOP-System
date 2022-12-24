<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="VOPManaging.aspx.cs" Inherits="ER_APP_VOP_System.VOPManaging" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 32%;
            height: 37px;
            margin: auto;
        }

        .auto-style2 {
            width: 232px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <div>
        <%--dropdown--%>
        <div>
            <div class="container bg-success w3-padding-top w3-padding-bottom w3-margin-top w3-margin-bottom">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:DropDownList ID="dwRC" runat="server">
                                <asp:ListItem>Absent - Informed</asp:ListItem>
                                <asp:ListItem>Absent - Not Informed</asp:ListItem>
                                <asp:ListItem>Leave - Applied</asp:ListItem>
                                <asp:ListItem>Leave - Not Applied</asp:ListItem>
                                <asp:ListItem>Maternity Leave Over</asp:ListItem>
                                <asp:ListItem>Maternity Leave Start</asp:ListItem>
                                <asp:ListItem>Late Resign</asp:ListItem>
                                <asp:ListItem>1Month Resign</asp:ListItem>
                                <asp:ListItem>VOP</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                        <td>
                            <asp:Button ID="btnSearchRC" runat="server" BackColor="#333333" Text="Search" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="btnSearchRC_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <br />

        <%--DataGridView--%>
        <div style="margin: auto;" class="container w3-padding-top w3-padding-bottom w3-margin-top w3-margin-bottom">

            <asp:GridView ID="dgvVOPManagingScreen" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" EmptyDataText="No Record Found" PageSize="20">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbEdit" CommandArgument='<%# Eval("EPF") %>' CommandName="EditRow" ForeColor="#8C4510" runat="server">Edit</asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="lbUpdate" CommandArgument='<%# Eval("EPF") %>' CommandName="UpdateRow" ForeColor="#8C4510" runat="server">Update</asp:LinkButton>
                            <asp:LinkButton ID="lbCancel" CommandArgument='<%# Eval("EPF") %>' CommandName="CancelUpdate" ForeColor="#8C4510" runat="server" CausesValidation="false">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="EPF" HeaderText="EPF">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Name">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Team" HeaderText="Team">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Number_Of_Absent_Days" HeaderText="Number Of Absent Days">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Reason_Category" HeaderText="Reason Category" ReadOnly="True">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="First_VOP_Status" HeaderText="1st VOP Status ">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Termination_Payment_Status" HeaderText="Termination Payment Status">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Secod_VOP_Status" HeaderText="2nd VOP Status">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>

        </div>
    </div>
</asp:Content>
