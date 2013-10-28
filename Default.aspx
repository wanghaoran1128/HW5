<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="container">

            <div id="menu">
                <ul id="nav">
                    <li> <a href="Default.aspx">Home</a></li>
                    <li> <a href="Recipe.aspx"> View our recipes</a></li>
                    <li> <a href="NewRecipe.aspx">Add New Recipe</a></li>
                </ul>
            </div>

            <div id="date">
                <asp:Label ID="lbldate" runat="server" Text=""></asp:Label>

            </div>

            <div id="content">
            <h1>Choose your favourate recipe here!</h1>

            </div>
            <div id="footer">
                Copyright &copy; <asp:Label ID="lblcopy" runat="server" Text=""></asp:Label> Mike Colbert - 6K183: Systems Analysis &amp; Design
            </div>

        </div>
    </div>
    </form>
</body>
</html>
