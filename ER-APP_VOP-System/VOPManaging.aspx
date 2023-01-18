<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="VOPManaging.aspx.cs" Inherits="ER_APP_VOP_System.VOPManaging" %>

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
                VOP Managing Screen
            </h1>
        </div>
    </section>

    <br />

    <div>
        <%--dropdown--%>
        <div>
            <div class="container alert alert-primary w3-padding-top w3-padding-bottom w3-margin-top w3-margin-bottom" style=" background-color:#28313B; color:white;">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:DropDownList ID="dwRC" CssClass="btn btn-primary dropdown-toggle" runat="server">
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
                            <asp:Button ID="btnSearchRC" class="btn" runat="server" Text="Search" OnClick="btnSearchRC_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>


        <%--DataGridView--%>
        <div class="container">
            <%--style="margin: auto;" class="container w3-padding-top w3-padding-bottom w3-margin-top w3-margin-bottom"--%>
            <asp:GridView ID="dgvVOPManagingScreen" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" EmptyDataText="No Record Found" PageSize="30" OnRowCancelingEdit="dgvVOPManagingScreen_RowCancelingEdit" OnRowEditing="dgvVOPManagingScreen_RowEditing" OnRowUpdating="dgvVOPManagingScreen_RowUpdating" HorizontalAlign="Center" BackColor="White" BorderColor="#003366">
                <Columns>
                    <asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                            <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" class="btn btn-outline-primary btn-sm" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" class="btn btn-outline-primary btn-sm" />
                            <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" class="btn btn-outline-warning btn-sm" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NO" Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="lblNO" runat="server" Text='<%#Eval("no") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EPF">
                        <ItemTemplate>
                            <asp:Label ID="lblEPF" runat="server" Text='<%#Eval("EPF") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Team" HeaderText="Team" ReadOnly="True">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Number_Of_Absent_Days" HeaderText="Number Of Absent Days" ReadOnly="True">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Reason_Category" HeaderText="Reason Category" ReadOnly="True">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <%--                    <asp:BoundField DataField="First_VOP_Status" HeaderText="1st VOP Status ">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>--%>
                    <asp:TemplateField HeaderText="1st VOP Status">
                        <ItemTemplate>
                            <asp:Label ID="lblFVOPS" runat="server" Text='<%#Eval("First_VOP_Status") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddFVOPS" runat="server" Text='<%#Eval("First_VOP_Status") %>'>
                                <asp:ListItem>Done</asp:ListItem>
                                <asp:ListItem>Not Done</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <%--                    <asp:BoundField DataField="Termination_Payment_Status" HeaderText="Termination Payment Status">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>--%>
                    <asp:TemplateField HeaderText="Termination Payment Status">
                        <ItemTemplate>
                            <asp:Label ID="lblTPS" runat="server" Text='<%#Eval("Termination_Payment_Status") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddTPS" runat="server" Text='<%#Eval("Termination_Payment_Status") %>'>
                                <asp:ListItem>Done</asp:ListItem>
                                <asp:ListItem>Not Done</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <%--                    <asp:BoundField DataField="2nd VOP Status" HeaderText="2nd VOP Status">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>--%>
                    <asp:TemplateField HeaderText="2nd VOP Status">
                        <ItemTemplate>
                            <asp:Label ID="lblSVOPS" runat="server" Text='<%#Eval("Secod_VOP_Status") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddSVOPS" runat="server" Text='<%#Eval("Secod_VOP_Status") %>'>
                                <asp:ListItem>Done</asp:ListItem>
                                <asp:ListItem>Not Done</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" BorderColor="#003366" BorderStyle="Groove" />
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
