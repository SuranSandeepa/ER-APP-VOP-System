<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ER_APP_VOP_System.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/HomePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />

    <div class="typing px-5 pt-5 mt-5">
        <img src="Images/Logo_of_MAS.png" width="60" height="60" />
        <h1>MAS <span class="auto-type"></span></h1>

        <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>

        <script>
            var typed = new Typed(".auto-type", {
                strings: ["KREEDA", "SYNERGY"],
                typeSpeed: 150,
                backSpeed: 150,
                loop: true
            })
        </script>
    </div>

</asp:Content>
