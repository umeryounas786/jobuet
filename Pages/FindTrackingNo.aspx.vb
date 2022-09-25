Imports System
Imports System.Data

Partial Class Candidate_FindTrackingNo
    Inherits System.Web.UI.Page

    Protected Sub cmdloadnic_Click(sender As Object, e As System.EventArgs) Handles cmdloadnic.Click

        Try
            Dim dt As DataTable
            dt = SqlHelper.ExecuteDataTable(Util.ConnectionString, "p_findTrackingNoForOpenJob", txtcnic.Text)

            If dt.Rows.Count > 0 Then
                gvNic.DataSource = dt
                gvNic.DataBind()

            Else
                lblMsg.Text = "CNIC is not found for open jobs"

            End If
        Catch ex As Exception
            lblMsg.Text = ex.Message

        End Try
    End Sub
End Class
