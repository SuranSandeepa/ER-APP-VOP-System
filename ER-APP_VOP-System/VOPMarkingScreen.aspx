<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="VOPMarkingScreen.aspx.cs" Inherits="ER_APP_VOP_System.VOPMarkingScreen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 39%;
            height: 37px;
        }
        .auto-style2 {
            width: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<%--    <section>
        <div class="container">
          <div class="row align-items-center">
               <div class="col">
                  <asp:Button ID="F1SA" runat="server" Text="Factory 1 Shift A" />
                </div>
                <div class="col">
                  <asp:Button ID="F1SB" runat="server" Text="Factory 1 Shift B" />
                </div>
                <div class="col">
                  <asp:Button ID="F2SA" runat="server" Text="Factory 2 Shift A" />
                </div>
                <div class="col">
                  <asp:Button ID="F2SB" runat="server" Text="Factory 2 Shift B" />
                </div>
                <div class="col">
                  <asp:Button ID="Deparments" runat="server" Text="Deparments" />
                </div>
            </div>
         </div>
    </section>--%>

    <section>
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
    </section>


        <asp:GridView ID="dgvVOPMarkingScreen" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" EmptyDataText="No Record Found">
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


</asp:Content>
