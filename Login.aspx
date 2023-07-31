<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InternsApplication.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%">
        <tr>
            <td style="width: 362px">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Welcome back, you have been missed !" Font-Bold="True" Font-Names="Georgia" Font-Size="Large" ForeColor="#009933"></asp:Label>
                <br />
            </td>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 362px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" ValidationGroup="login" style="margin-right: 0px" />
                <br />
                <asp:Label ID="error_message" runat="server" Font-Size="X-Large" ForeColor="#CC3300"></asp:Label>
            </td>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 362px; height: 31px;">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            </td>
            <td style="width: 235px; height: 31px;">
                <asp:TextBox ID="username" runat="server" Width="200px" Style="margin-left: 0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Required username" ValidationGroup="login" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td style="width: 120px; height: 31px;"></td>
            <td style="height: 31px"></td>
        </tr>
        <tr>
            <td style="width: 362px">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 235px">
                <asp:TextBox ID="password" runat="server" Width="202px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Required password" ValidationGroup="login" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 362px">&nbsp;</td>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 362px">
                <br />
                <asp:Button ID="Button1" class="btn" runat="server" Text="Login" ValidationGroup="login" BackColor="#CC3300" Font-Names="Tahoma" ForeColor="White" Width="150px" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Sign_up.aspx">Don&#39;t have an account? create one</asp:HyperLink>
            </td>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 362px">&nbsp;</td>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
