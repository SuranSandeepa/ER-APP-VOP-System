<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="VOPMarkingScreen.aspx.cs" Inherits="ER_APP_VOP_System.VOPMarkingScreen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/background.css" rel="stylesheet" />
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

    <%--Header Topic--%>
    <section>
        <div class="container">
            <h1>
                VOP Marking Screen
            </h1>
        </div>
    </section>

    <br />

    <%--style="margin: auto;width: 50%;border: 3px solid green;padding: 10px;"--%>

    <%--dropdown--%>
    <div>
        <div class="container alert alert-primary w3-padding-top w3-padding-bottom w3-margin-top w3-margin-bottom" style=" background-color:#28313B; color:white;">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="dwFactoryShift" CssClass="btn btn-primary dropdown-toggle" runat="server">
                            <asp:ListItem>Factory 1 Shift A</asp:ListItem>
                            <asp:ListItem>Factory 1 Shift B</asp:ListItem>
                            <asp:ListItem>Factory 2 Shift A</asp:ListItem>
                            <asp:ListItem>Factory 2 Shift B</asp:ListItem>
                            <asp:ListItem>Departments</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                    <td>
                        <asp:Button ID="btnSearchFnS" class="btn" runat="server" Text="Search" OnClick="btnSearchFnS_Click"/>
                    </td>
                </tr>
            </table>
        </div>

        <br />


        <%--Update Field--%>
        <%--        <div>
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
        </div>--%>

        <%--DataGridView--%>
        <div class="container">
            <%--BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"--%>

            <asp:GridView ID="dgvVOPMarkingScreen" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" EmptyDataText="No Record Found" PageSize="30" OnRowCancelingEdit="dgvVOPMarkingScreen_RowCancelingEdit" OnRowEditing="dgvVOPMarkingScreen_RowEditing" OnRowUpdating="dgvVOPMarkingScreen_RowUpdating" HorizontalAlign="Center" BackColor="#99CCFF" BorderColor="#003366">
                <Columns>
                    <asp:TemplateField HeaderText="Update" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <ItemTemplate>
                            <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" class="btn btn-outline-primary btn-sm" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" class="btn btn-outline-primary btn-sm" />
                            <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" class="btn btn-outline-warning btn-sm" />
                        </EditItemTemplate>

<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NO" Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="lblNO" runat="server" Text='<%#Eval("no") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EPF" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <ItemTemplate>
                            <asp:Label ID="lbl_EPF" runat="server" Text='<%#Eval("EPF") %>'></asp:Label>
                        </ItemTemplate>

<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Team" HeaderText="Team" ReadOnly="True" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Number_Of_Absent_Days" HeaderText="Number Of Absent Days" ReadOnly="True" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Reason Category" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <ItemTemplate>
                            <asp:Label ID="lblRC" runat="server" Text='<%#Eval("Reason_Category") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddRC" runat="server" Text='<%#Eval("Reason_Category") %>'>
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
                            <%--<asp:TextBox ID="txtRC" runat="server" Text='<%#Eval("Reason_Category") %>'></asp:TextBox>--%>
                        </EditItemTemplate>

<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Factory_And_Shift" HeaderText="Factory And Shift" ReadOnly="True" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" BorderStyle="Groove" BorderColor="#003366" />
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
