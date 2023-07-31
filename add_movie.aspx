<%@ Page Title="Add movie" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="add_movie.aspx.cs" Inherits="InternsApplication.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" ValidationGroup="create" />

    <br />
    <h4>Add a new movie</h4>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Movie Name"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="Movie_Name" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requied movie name field" ControlToValidate="Movie_Name" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="Movie_Name" ErrorMessage="Movie name already exists !" ForeColor="#CC3300" OnServerValidate="validate_redundant_record" ValidationGroup="create">!</asp:CustomValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Movie Description"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="Movie_Description" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Requied description field" ControlToValidate="Movie_Description" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Movie Price"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="Movie_Price" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Requied price field" ControlToValidate="Movie_Price" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="add_movie" Class="btn px-5" runat="server" Text="Save" BackColor="#CC3300" ForeColor="White" OnClick="add_movie_Click" ValidationGroup="create" />

    &nbsp;&nbsp;&nbsp;

    <asp:Button ID="cancel_movie" Class="btn px-5" runat="server" Text="Cancel" BackColor="#333300" ForeColor="White" OnClick="cancel_movie_Click" />

</asp:Content>
