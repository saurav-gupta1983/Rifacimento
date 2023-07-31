<%@ Control Language="C#" AutoEventWireup="true" Codebehind="MessageUserControl.ascx.cs"
    Inherits="Rifacimento.Books.UI.UserControls.MessageUserControl" %>
    
<ajax:UpdatePanel ID="HomeUpdatePanel" runat="server">
    <ContentTemplate>
        <table style="width: 100%; height: 100%;" runat="server">
            <tr>
                <td align="center" style="width: 70%" id="HomePageMessagetd" runat="server">
                    <asp:Label ID="HomePageMessageLabel" runat="server" Text="HOME PAGE" CssClass="HyperLinkMenu"
                        ForeColor="#185394"></asp:Label>
                </td>
            </tr>
        </table>
    </ContentTemplate>
</ajax:UpdatePanel>
