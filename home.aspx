<%@ Page Title="Movies" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="InternsApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Label ID="user_account" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#009933"></asp:Label>
            <br />
            <br />
            Search&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Search_Box" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" class="btn" Text="Search By name" OnClick="Search_Movie" BackColor="#CC3300" ForeColor="White" />
            <asp:Button ID="Button2" runat="server" class="btn" Text="Show All movies" OnClick="ShowAllMovies" BackColor="#CC3300" ForeColor="White" />

            &nbsp;<br />
            <asp:Label ID="error_label" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            <asp:GridView ID="Movies_table" class="mt-5" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="8" Width="700px" OnRowDeleting="delete_row">
                <Columns>
                    <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="ID" DataNavigateUrlFormatString="edit_movie.aspx?id={0}">
                        <ControlStyle BackColor="#CC3300" ForeColor="White" Width="80px" CssClass="btn" />
                    </asp:HyperLinkField>
                    <asp:ButtonField CommandName="Delete" Text="Delete">
                        <ControlStyle BackColor="#CC3300" ForeColor="White" CssClass="btn" Width="90px" />
                    </asp:ButtonField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="Black" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </asp:View>

        <asp:View ID="View2" runat="server">
            <h2>&nbsp;</h2>

            <h2>Do you want to delete
                <asp:Label ID="movie_name" runat="server" Text="">?</asp:Label>
            </h2>
            <p>
                &nbsp;</p>

            <asp:Button ID="delete_button" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="delete_button_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cancel_button" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick="cancel_button_Click"/>
            <p>
                <asp:HiddenField ID="hide_field" runat="server" />
            </p>
            <p>
                &nbsp;</p>
        </asp:View>

    </asp:MultiView>

</asp:Content>
