<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="VOPMarkingScreen.aspx.cs" Inherits="ER_APP_VOP_System.VOPMarkingScreen" %>

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

    <%--style="margin: auto;width: 50%;border: 3px solid green;padding: 10px;"--%>

    <%--dropdown--%>
    <div>
        <div class="container bg-success w3-padding-top w3-padding-bottom w3-margin-top w3-margin-bottom">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="dwFactoryShift" runat="server">
                            <asp:ListItem>Factory 1 Shift A</asp:ListItem>
                            <asp:ListItem>Factory 1 Shift B</asp:ListItem>
                            <asp:ListItem>Factory 2 Shift A</asp:ListItem>
                            <asp:ListItem>Factory 2 Shift B</asp:ListItem>
                            <asp:ListItem>Departments</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                    <td>
                        <asp:Button ID="btnSearchFnS" runat="server" BackColor="#333333" Text="Search" OnClick="btnSearchFnS_Click" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                    </td>
                </tr>
            </table>
        </div>

        <br />


        <%--Update Field--%>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblEPF" runat="server" Text="EPF :"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtEPF" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUpdateReasonCategory" runat="server" Text="Reason Category :"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="dwUpdateReasonCategory" runat="server">
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
                    <td colspan="2">
                        <asp:Button ID="btnUpdateReasonCategory" runat="server" Text="Update" BackColor="#009933" BorderStyle="None" Font-Bold="True" ForeColor="Black" />
                        <asp:Button ID="btnCancelReasonCategory" runat="server" Text="Cancel" OnClick="btnCancelReasonCategory_Click" BackColor="Yellow" BorderStyle="None" Font-Bold="True" />
                    </td>
                </tr>
            </table>
        </div>

        <br />

        <%--DataGridView--%>
        <div style="margin: auto;" class="container w3-padding-top w3-padding-bottom w3-margin-top w3-margin-bottom">
            <%-- <div>
                <span>Total Number of Records:</span>
                <asp:Label ID="lbTotal" runat="server" Text="0"></asp:Label>
            </div>--%>

            <asp:GridView ID="dgvVOPMarkingScreen" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" EmptyDataText="No Record Found" PageSize="20">
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
                    <asp:TemplateField HeaderText="Reason Category">
                        <EditItemTemplate>
                            <asp:DropDownList ID="dwGVUpdateReasonCategory" runat="server" SelectedValue='<%# Bind("Reason_Category") %>'>
                                <asp:ListItem>Select Gender</asp:ListItem>
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
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Reason_Category") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Factory_And_Shift" HeaderText="Factory And Shift" ReadOnly="True">
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

            <%--            <asp:GridView ID="gvDatabaseTable1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="EPF" HeaderText="EPF" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Team" HeaderText="EPF" />
                    <asp:BoundField DataField="Number_Of_Absent_Days" HeaderText="Number Of Absent Days" />
                    <asp:BoundField DataField="Reason_Category" HeaderText="Reason Category" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:DropDownList runat="server">
                             <asp:ListItem>Absent - Informed</asp:ListItem>
                             <asp:ListItem>Absent - Not Informed</asp:ListItem>
                             <asp:ListItem>Leave - Applied</asp:ListItem>
                             <asp:ListItem>Leave - Not Applied</asp:ListItem>
                             <asp:ListItem>Maternity Leave Over</asp:ListItem>
                             <asp:ListItem>Maternity Leave Start</asp:ListItem>
                             <asp:ListItem>Late Resign</asp:ListItem>
                             <asp:ListItem>1 Month Resign</asp:ListItem>
                             <asp:ListItem>VOP</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>--%>

            <%--            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EPF" OnRowEditing="GridView1_RowEditing">
                <Columns>
                    <asp:BoundField DataField="EPF" HeaderText="EPF" ReadOnly="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Team" HeaderText="Team" ReadOnly="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Number_Of_Absent_Days" HeaderText="Number Of Absent Days" ReadOnly="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Reason_Category" HeaderText="Reason Category">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Factory_And_Shift" HeaderText="Factory And Shift" ReadOnly="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                </Columns>
            </asp:GridView>--%>
        </div>
    </div>
</asp:Content>
