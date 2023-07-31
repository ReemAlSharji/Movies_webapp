<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sign_up.aspx.cs" Inherits="InternsApplication.Sign_up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <table style="width: 100%">
        <tr>
            <td style="width: 335px">
                <br />
                <span style="font-family: Georgia; font-weight: bold; font-size: large; color: #009933">Hello, Register below a new account</span><br />
            </td>
            <td style="width: 412px">&nbsp;</td>
            <td style="width: 158px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 335px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" ValidationGroup="Sign_up" style="margin-right: 39px" Width="297px" />
            </td>
            <td style="width: 412px">&nbsp;</td>
            <td style="width: 158px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 335px">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            </td>
            <td style="width: 412px">
                <asp:TextBox ID="username" runat="server" Width="200px" style="margin-left: 0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Required username" ValidationGroup="Sign_up" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="username" ErrorMessage="Username already taken" ForeColor="#CC3300" OnServerValidate="validate_redundant_fields" ValidationGroup="Sign_up">!</asp:CustomValidator>
                <br />
            </td>
            <td style="width: 158px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 335px">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 412px">
                <asp:TextBox ID="password" runat="server" Width="202px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Required password" ValidationGroup="Sign_up" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                <br />
            </td>
            <td style="width: 158px">Confirm password</td>
            <td>
                <asp:TextBox ID="confirm_pass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords does not match" ControlToCompare="password" ControlToValidate="confirm_pass" ForeColor="#CC3300" ValidationGroup="Sign_up">!</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 335px">
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="width: 412px">
                <asp:TextBox ID="email" runat="server" Width="201px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required email" ValidationGroup="Sign_up" ControlToValidate="email" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email format invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Sign_up">!</asp:RegularExpressionValidator>
            </td>
            <td style="width: 158px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 335px">
                <br />
                <asp:Button ID="Button1" class="btn" runat="server" Text="Sign up" ValidationGroup="Sign_up" BackColor="#CC3300" Font-Names="Tahoma" ForeColor="White" OnClick="Create_account" Width="150px" />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx">Already have an account? Login</asp:HyperLink>
                <br />
            </td>
            <td style="width: 412px">&nbsp;</td>
            <td style="width: 158px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 335px">&nbsp;</td>
            <td style="width: 412px">&nbsp;</td>
            <td style="width: 158px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>



</asp:Content>
