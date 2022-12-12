<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminScreen.aspx.cs" Inherits="ER_APP_VOP_System.AdminScreen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="container">
            <h1 style="text-align:center; font-size:45px;text-transform:uppercase;letter-spacing:2px;margin-top:25px;font-family:merinda">VOP Excel Upload</h1>
        </div>
    </section>

    <br />
    <br />

    <div class="container" style="text-align:center;">
          <div class="row align-items-center">
            <div class="col">
              <asp:FileUpload ID="ExcelFileUpload" runat="server" />
            </div>
            <div class="col">
              <asp:Button Text="Upload" OnClick = "btnExcelUpload_Click" runat="server" />
            </div>
           </div>
    </div>

</asp:Content>
