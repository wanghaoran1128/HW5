<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Recipes], [Name], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@Recipes, @Name, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Recipes] = @Recipes, [Name] = @Name, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipes" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipes" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <div id="container">

            <div id="content">
                <h1 class="title">Wicked Easy Recipes</h1>
                <p class="cont">Using 5 Ingedients or Less!</p>
                <ul id="nav">
                    <li> <a href="Default.aspx">Home</a></li>
                    <li> <a href="NewRecipe.aspx"> New Recipe</a></li>
                    <li> <a href="About.aspx">About Us</a></li>
                    <li> <a href="Contact.aspx">Contact</a></li>
                </ul><br />

        <asp:GridView 
            ID="GridView1" 
            runat="server" 
            AllowPaging="True" 
            AllowSorting="True" 
            AutoGenerateColumns="False" 
            DataKeyNames="Id" 
            DataSourceID="SqlDataSource1" 
            PageSize="5"
            Gridlines="none"
            CssClass="cssgridview"
            AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr" Width="560px"
           
            >



            <AlternatingRowStyle CssClass="alt" />



            <Columns>
                <asp:BoundField DataField="Recipes" HeaderText="Recipe Name" SortExpression="Recipes" />
                <asp:BoundField DataField="Name" HeaderText="Submitted By" SortExpression="Name" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" HeaderText="Submitted By" DataNavigateUrlFormatString="RecipeDetails.aspx?Id={0}"  Text="View Details" />
            </Columns>
            <EmptyDataTemplate>
                <a href="javascript:__doPostBack('GridView1','Sort$Id')">Id</a>
            </EmptyDataTemplate>
            <PagerStyle CssClass="pgr" />
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
            </div><br />

        <div id="footer">
                Copyright &copy; <asp:Label ID="lblcopy" runat="server" Text=""></asp:Label> 2013. 6K183 Software Design &amp; Development
            </div><br /><br />
    
    </div>
    </div>
    </form>
</body>
</html>
