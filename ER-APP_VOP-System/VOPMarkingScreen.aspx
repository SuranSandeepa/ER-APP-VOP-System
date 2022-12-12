<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="VOPMarkingScreen.aspx.cs" Inherits="ER_APP_VOP_System.VOPMarkingScreen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 39%;
            height: 37px;
            margin: auto;
        }
        .auto-style2 {
            width: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <div style="margin: auto;width: 50%;border: 3px solid green;padding: 10px;">
        <div >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
         <asp:DropDownList ID="dwFactoryShift" runat="server">
             <asp:ListItem>20</asp:ListItem>
             <asp:ListItem>40</asp:ListItem>
             <asp:ListItem>30</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="#999999" Text="Search" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>

        <br />

        <div style="margin:auto;">
            <asp:GridView ID="dgvVOPMarkingScreen" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" EmptyDataText="No Record Found" PageSize="20">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="age" HeaderText="Age">
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
