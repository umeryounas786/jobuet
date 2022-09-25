<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="FindTrackingNo.aspx.vb" Inherits="Candidate_FindTrackingNo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <center>

<table>
<tr>
<td>
CNIC:
</td>
<td>
<asp:TextBox ID="txtcnic" Width="200px" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcnic" 
        ErrorMessage="*"></asp:RequiredFieldValidator>
</td>
<td>
<asp:Button ID="cmdloadnic" runat="server" Text="Show Tracking No" />
</td>
</tr>
<tr>
<td colspan="3">
<asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
</td>
</tr>
</table>
    <asp:GridView ID="gvNic" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="CandidateID" HeaderText="Tracking No" />
            <asp:BoundField DataField="candidateName" HeaderText="Name" />
            <asp:BoundField DataField="postAppliedFor" HeaderText="Job Title" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

</center>

</asp:Content>

