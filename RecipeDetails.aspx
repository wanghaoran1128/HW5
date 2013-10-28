<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Details</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Recipes], [Name], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@Recipes, @Name, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Table] SET [Recipes] = @Recipes, [Name] = @Name, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Id] = @Id">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
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

                <asp:Label ID="lbldelRecipe" runat="server" Text=""></asp:Label>
        <div id="details">
        <asp:DetailsView 
            ID="DetailsView1" 
            runat="server" 
            AutoGenerateRows="False" 
            DataKeyNames="Id" 
            DataSourceID="SqlDataSource1" 
            HeaderText ="Recipe Details"
            CssClass="cssdetailsview"
            HeaderStyle-CssClass="header"
            FieldHeaderStyle-CssClass="firldheader"
            ItemStyle-CssClass="item"
            AlternatingRowStyle-CssClass="altrow"
            CommandRowStyle-CssClass="command"
            pagerStyle-CssClass="pager" Width="430px"
            
            >
            
<AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>

<CommandRowStyle CssClass="command"></CommandRowStyle>

            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />

<FieldHeaderStyle CssClass="firldheader"></FieldHeaderStyle>
            <Fields>
                <asp:BoundField DataField="Recipes" HeaderText="Recipe Name" SortExpression="Recipes" />
                <asp:BoundField DataField="Name" HeaderText="Submitted By" SortExpression="Name" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient #1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient #2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient #3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient #4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient #5" SortExpression="Ingredient5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ShowCancelButton="False" UpdateText="Save" />
            </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>

            <PagerSettings FirstPageText="" LastPageText="" NextPageText="" PreviousPageText="" />

<PagerStyle CssClass="pager"></PagerStyle>
        </asp:DetailsView>
                </div>
                </div>
        <br />

        <div id="footer">
                Copyright &copy; <asp:Label ID="lblcopy" runat="server" Text=""></asp:Label> 2013. 6K183 Software Design &amp; Development
            </div><br /><br />
    
    </div>
    </div>
    </form>
</body>
</html>
