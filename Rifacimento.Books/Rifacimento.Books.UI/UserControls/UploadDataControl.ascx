<%@ Control Language="C#" AutoEventWireup="true" Codebehind="UploadDataControl.ascx.cs"
    Inherits="Humana.EAG.Insights.UI.UserControls.UploadDataControl" %>
<asp:Panel ID="WrapperPanel" runat="server" Width="750px" Style="left: 30px; position: relative;
    top: 5px; text-align: center;">
    <asp:Panel ID="Panel" runat="server" Width="50%" Style="position: relative;">
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr style="height: 20px">
                <td>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <h1>
                        <asp:Label ID="HeaderLabel" runat="server" Text="Upload Data" Font-Bold="True"></asp:Label>
                    </h1>
                </td>
            </tr>
            <tr style="height: 20px">
                <td>
                </td>
            </tr>
        </table>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td>
                    <asp:Label ID="MessageLabel" CssClass="medium" runat="server" Text="" Width="100%"
                        ForeColor="red"></asp:Label>
                </td>
            </tr>
            <tr style="height: 5px">
                <td>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:FileUpload ID="DataFileUpload" runat="server" />
                </td>
            </tr>
            <tr style="height: 10px">
                <td>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="UploadButton" runat="server" Text="Upload" CssClass="Button"
                                    OnClick="UploadButton_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Panel>
