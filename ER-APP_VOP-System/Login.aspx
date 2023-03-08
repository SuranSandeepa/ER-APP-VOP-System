<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ER_APP_VOP_System.Login" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link href="CSS/LoginStyle.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="main">
            <div class="login-container">
                <p class="title">Welcome back</p>
                <div class="separator"></div>
                <p class="welcome-message">Please, provide login credential to proceed and have access to all our services</p>

                <form class="login-form">
                    <div class="form-control">
                        <asp:TextBox ID="Ltbun" class="Ltb" placeholder="Username" type="text" runat="server"></asp:TextBox>
                        <%--<input type="text" placeholder="Username">--%>
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="form-control">
                        <asp:TextBox ID="Ltbpw" class="Ltb" placeholder="Password" type="password" runat="server"></asp:TextBox>
                        <%--<input type="password" placeholder="Password">--%>
                        <i class="fas fa-lock"></i>
                    </div>

                    <%--<asp:Button ID="Button1" runat="server" Text="Button" />--%>
                    <button class="submit" onclick="btnLogin_Click" runat="server">Login</button>
                </form>
            </div>
        </section>
    </form>
</body>
</html>
