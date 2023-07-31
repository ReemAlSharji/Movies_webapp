<%@ Page Title="Edit movie" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit_movie.aspx.cs" Inherits="InternsApplication.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" ValidationGroup="create" />
    
    <br />
    <h4>Edit movie</h4>
    <p>&nbsp;</p>
    Movie ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Movie_ID" runat="server" ReadOnly="True" TextMode="Number" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Movie Name"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="Movie_Name" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requied movie name field" ControlToValidate="Movie_Name" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="Movie_Name" ErrorMessage="Movie title already exist" ForeColor="Red" OnServerValidate="redundant_record" ValidationGroup="create">!</asp:CustomValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Movie Description"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="Movie_Description" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Requied movie description field" ControlToValidate="Movie_Description" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Movie Price"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="Movie_Price" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Requied movie price field" ControlToValidate="Movie_Price" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="edit_movie" Class="btn px-5" runat="server" Text="Save" BackColor="#CC3300" ForeColor="White" ValidationGroup="create" OnClick="edit_movie_Click"/>

    &nbsp;&nbsp;&nbsp;

    <asp:Button ID="cancel_movie" Class="btn px-5" runat="server" Text="Cancel" BackColor="#333300" ForeColor="White" OnClick="cancel_movie_Click"  />


    <br />
    <br />


</asp:Content>
