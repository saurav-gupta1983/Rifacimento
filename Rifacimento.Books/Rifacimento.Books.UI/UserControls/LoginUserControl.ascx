<%@ Control Language="C#" AutoEventWireup="true" Codebehind="LoginUserControl.ascx.cs"
    Inherits="Humana.EAG.Insights.UI.UserControls.LoginUserControl" %>
<body>
    <asp:Panel ID="WrapperPanel" runat="server" Style="left: 20px; top: 30px; position: relative;"
        Width="100%">
        <asp:Label ID="RifacimentoLabel" runat="server" BorderColor="Red" Height="27px" Style="font-size: xx-large;
            color: #2525aa; text-align: center;" Text="Rifacimento Internationals" Width="80%"></asp:Label>
        <asp:Panel ID="UserPanel" runat="server" Style="left: 150px; position: relative;
            top: 50px" Width="450px">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
                    <td>
                        <asp:Label ID="LabelMessage" runat="server" Height="100%" Style="font-weight: bold;
                            color: royalblue; background-color: white; text-align:justify;"
                            Text="Our Directory help you find your buddies and acts as a repository of your personal details"
                            Width="100%"></asp:Label>
                    </td>
                    <td style="width:10px">
                    </td>
                    <td>
                        <asp:Panel ID="LoginPanel" runat="server" Style="position: relative;">
                            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" cellspacing="0" style="background-color: whitesmoke;">
                                            <tr style="height:20px">
                                                <td colspan="2">
                                                    <asp:Label ID="MemberLoginLabel" runat="server" Style="background-color: whitesmoke;
                                                        font-weight: bold; color: mediumblue;" Text=" Member Log in" Width="100%"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr style="height:20px">
                                                <td style="width: 36px;">
                                                    <asp:Label ID="UserLabel" runat="server" Style="font-weight: bold;" Text=" User Name" Width="96px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="UserTextBox" runat="server" Width="168px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height:20px">
                                                <td style="width: 36px">
                                                    <asp:Label ID="PasswordLabel" runat="server" Style="font-weight: bold;" Text=" Password" Width="96px"></asp:Label>
                                                </td>
                                                <td>
                                                    <input id="PasswordTextBox" runat="server" style="width: 168px;" type="password" name="TextBoxPassword" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                            <tr style="height:20px">
                                                <td colspan="3">
                                                    <asp:Label ID="InvalidUserLabel" runat="server" ForeColor="Red" Text="*Invalid User or Password" Visible="False" Width="100%"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr style="height:20px">
                                                <td style="width: 120px;">
                                                    Are you a <B>New User?</B></td>
                                                <td style="width: 100px;">
                                                    <asp:HyperLink ID="HyperLinkSignUp" runat="server" NavigateUrl="~/Forms/MembersForm.aspx"
                                                        Style="font-weight: bold;" Width="100%">Sign Up</asp:HyperLink>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" cellspacing="0" style="background-color: whitesmoke; width:100%;">
                                            <tr style="height:20px">
                                                <td>
                                                    <asp:Button ID="LoginButton" runat="server" Width="75px" Text="Login" CssClass="Button"
                                                        OnClick="LoginButton_Click" />
                                                </td>
                                                <td>
                                                    <asp:HyperLink ID="ForgetPwdHyperLink" Target="_blank" runat="server"
                                                        Style="text-align: right" Width="96px"
                                                        NavigateUrl="~/Forms/ForgotPassword.aspx">Are you Stuck?</asp:HyperLink>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <table>
        <tr style="height:50px;">
        <td>
        </td>
        </tr>
        </table>
    </asp:Panel>
</body>
