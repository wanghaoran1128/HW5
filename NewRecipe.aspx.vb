
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lbldate.Text = DateTime.Now.ToLongDateString
        lblcopy.Text = DateTime.Now.Year

    End Sub
    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Response.Redirect("./Recipe.aspx")

    End Sub
End Class
