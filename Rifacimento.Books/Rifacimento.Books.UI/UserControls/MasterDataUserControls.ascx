<%@ Control Language="C#" AutoEventWireup="true" Codebehind="MasterDataUserControls.ascx.cs"
    Inherits="Rifacimento.Books.UI.UserControls.MasterDataUserControls" %>
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
                        <asp:Label ID="HeaderLabel" runat="server" Text="Language" Font-Bold="True"></asp:Label>
                    </h1>
                </td>
            </tr>
            <tr style="height: 20px">
                <td>
                </td>
            </tr>
        </table>
        <%--    <asp:Panel runat="server" ID="SearchFilterPanel" GroupingText="Search Criteria" Width="100%"
        Font-Bold="True">
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td style="height: 20px">
                </td>
                <td style="width: 50%">
                    <asp:Label ID="SearchDescriptionLabel" CssClass="medium" runat="server" Text=" Project ID"></asp:Label>
                </td>
                <td style="width: 50%">
                    <asp:TextBox ID="SearchDescriptionTextBox" CssClass="TextBox" runat="server" Width="80%"></asp:TextBox>
                </td>
                <td align="center" style="height: 24px">
                    <asp:Button ID="SearchButton" runat="server" Width="75px" Text="Search" CssClass="Button"
                        OnClick="SearchButton_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
--%>
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
                    <asp:GridView ID="MasterDataDetailsGridView" runat="server" BackColor="White" BorderColor="#CCCCCC"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False"
                        Width="100%" AllowPaging="True" OnPageIndexChanging="MasterDataDetailsGridView_PageIndexChanging"
                        OnRowDataBound="MasterDataDetailsGridView_RowDataBound" OnRowUpdating="MasterDataDetailsGridView_RowUpdating"
                        OnRowCancelingEdit="MasterDataDetailsGridView_RowCancelingEdit" PageSize="20">
                        <RowStyle ForeColor="#000066" />
                        <Columns>
                            <asp:BoundField ReadOnly="True" DataField="row" />
                            <asp:TemplateField HeaderText="ID" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="IDLabel" runat="server" Text='<%# Bind("Id") %>' Visible="true"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description">
                                <ItemTemplate>
                                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>'
                                        Visible="true"></asp:Label>
                                    <asp:TextBox ID="DescriptionTextBox" CssClass="TextBox" runat="server" Width="80%"
                                        Visible="false"></asp:TextBox>
                                </ItemTemplate>
                                <ControlStyle ForeColor="Navy" />
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="SaveLinkButton" runat="server" CausesValidation="False" CommandName="Add"
                                        Visible="false" Text="SAVE" OnCommand="SaveDetailsLinkButton_Click" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                    <asp:LinkButton ID="UpdateLinkButton" runat="server" CausesValidation="False" CommandName="Update"
                                        Text="UPDATE" OnCommand="UpdateDetailsLinkButton_Click" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                        Visible="true" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="CancelLinkButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                        Visible="false" Text="CANCEL" OnCommand="CancelDetailsLinkButton_Click" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                    <asp:LinkButton ID="DeleteLinkButton" runat="server" CausesValidation="False" CommandName="Delete"
                                        Visible="true" Text="DELETE" OnCommand="DeleteDetailsLinkButton_Click" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                </ItemTemplate>
                                <ControlStyle ForeColor="Navy" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="#00C0C0" />
                        <AlternatingRowStyle BackColor="#FFE0C0" />
                        <SelectedRowStyle BackColor="CornflowerBlue" />
                    </asp:GridView>
                </td>
            </tr>
            <tr style="height: 20px">
                <td>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Panel>
