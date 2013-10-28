
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delRecipe As String = e.Values("Recipes").ToString()

        lbldelRecipe.Text = "The record <span class=deletedrecipe> " & delRecipe & "</span> has been deleted from the database."


        'Response.Write("The record ")
        'Response.Write("<span class=deletedrecipe>")
        'Response.Write(delRecipe)
        'Response.Write("</span> has been deleted from the database")
        Response.AddHeader("REFRESH", "2;URL=./Recipe.aspx")
    End Sub

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Response.Redirect("./Recipe.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lbldate.Text = DateTime.Now.ToLongDateString
        lblcopy.Text = DateTime.Now.Year

    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Recipe.aspx")
    End Sub



End Class
