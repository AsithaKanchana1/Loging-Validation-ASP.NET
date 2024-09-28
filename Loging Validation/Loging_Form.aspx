<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loging_Form.aspx.cs" Inherits="Loging_Validation.Loging_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #0000FF;
            width: 179px;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
            text-align: right;
            font-weight: bold;
            width: 315px;
        }
        .auto-style5 {
            text-align: right;
            font-weight: bold;
            width: 315px;
        }
        .auto-style6 {
            height: 29px;
            text-align: right;
            width: 179px;
        }
        .auto-style7 {
            text-align: right;
            width: 179px;
        }
        .auto-style9 {
            width: 315px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style11 {
            width: 315px;
            text-align: right;
        }
        .auto-style12 {
            color: #FF3300;
        }
        .auto-style14 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style2">
                        <h1><strong><span class="auto-style14">LOGING FORM</span></strong></h1>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_uname" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox>
                    </td>
                    <td><em>
                        <asp:RequiredFieldValidator ID="val_uname" runat="server" ControlToValidate="txt_uname" CssClass="auto-style12" ErrorMessage="User Name Requierd"></asp:RequiredFieldValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    </td>
                    <td><em>
                        <asp:RequiredFieldValidator ID="val_email" runat="server" ControlToValidate="txt_email" CssClass="auto-style12" ErrorMessage="Email Is Reqired"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="val_email_incorrect" runat="server" ControlToValidate="txt_email" CssClass="auto-style12" ErrorMessage="Email address is Incorrect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbl_passwd" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_passwd" runat="server" CssClass="auto-style10" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style3"><em>
                        <asp:RequiredFieldValidator ID="val_passwd" runat="server" ControlToValidate="txt_passwd" CssClass="auto-style12" ErrorMessage="Password Is Reqired"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="val_incorrect_pswd" runat="server" ControlToCompare="txt_conPasswd" ControlToValidate="txt_passwd" CssClass="auto-style12" ErrorMessage="Password Is Not Match"></asp:CompareValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbl_conPass" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_conPasswd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style3"><em>
                        <asp:RequiredFieldValidator ID="val_conPasswd" runat="server" ControlToValidate="txt_conPasswd" CssClass="auto-style12" ErrorMessage="Password Confirmation Reqired"></asp:RequiredFieldValidator>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="SUBMIT" />
                    </td>
                    <td class="auto-style7">
                        <input id="btn_reset" type="reset" value="RESET" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
