<%@ Control Language="C#" AutoEventWireup="true" Codebehind="ViewDataUserControl.ascx.cs"
    Inherits="Rifacimento.Books.UI.UserControls.ViewDataUserControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="Calendar.ascx" TagName="DateCalendar" TagPrefix="uc1" %>
<body title="View and Download Data">
    <asp:Panel ID="PopupPanel" Style="display: none" CssClass="ModalPopup" runat="server"
        Width="100%">
        <ajax:UpdatePanel ID="ClosePopupUpdatePanel" runat="server">
            <ContentTemplate>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tr align="right" style="background-color: #0066ff; height: 20px;">
                        <td>
                            <asp:Button ID="PPCloseButton" runat="server" Width="20px" Text="X" CssClass="Button"
                                OnClick="CloseButton_Click" Height="20px" />
                        </td>
                    </tr>
                </table>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tr style="height: 10px">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <h2>
                                <asp:Label ID="CompanyLabel" runat="server" Text="Company Name" Font-Bold="True"></asp:Label>
                            </h2>
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="PopupUpdateDataPanel" runat="server" Width="100%" Style="left: 0px;
                    position: relative; top: 20px">
                    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr>
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 35%">
                                            <asp:Label ID="CompanyNameLabel" CssClass="medium" runat="server" Text="Company Name"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="CompanyNameTextBox" CssClass="TextBox" runat="server" Width="80%"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 35%">
                                            <asp:Label ID="EstdLabel" CssClass="medium" runat="server" Text="Company Name"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="EstdTextBox" CssClass="TextBox" runat="server" Width="80%" OnTextChanged="DisplayTouchpointTitleLabelTextBox_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 35%">
                                            <asp:Label ID="AddressLabel" CssClass="medium" runat="server" Text="Touchpoint Description"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="AddressTextBox" CssClass="TextBox" runat="server" Width="80%"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 35%">
                                            <asp:Label ID="TelephoneLabel" CssClass="medium" runat="server" Text="Company Name"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="TelephoneTextBox" CssClass="TextBox" runat="server" Width="80%"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 35%">
                                            <asp:Label ID="MobileLabel" CssClass="medium" runat="server" Text="Company Name"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="MobileTextBox" CssClass="TextBox" runat="server" Width="80%" OnTextChanged="DisplayTouchpointTitleLabelTextBox_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 35%">
                                            <asp:Label ID="FaxLabel" CssClass="medium" runat="server" Text="Company Name"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="FaxTextBox" CssClass="TextBox" runat="server" Width="80%" OnTextChanged="DisplayTouchpointTitleLabelTextBox_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 35%">
                                            <asp:Label ID="EmailLabel" CssClass="medium" runat="server" Text="Company Name"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="EmailTextBox" CssClass="TextBox" runat="server" Width="80%"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 35%">
                                            <asp:Label ID="WebsiteLabel" CssClass="medium" runat="server" Text="Company Name"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="WebsiteTextBox" CssClass="TextBox" runat="server" Width="80%" OnTextChanged="DisplayTouchpointTitleLabelTextBox_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 35%">
                                            <asp:Label ID="ExecutiveLabel" CssClass="medium" runat="server" Text="Touchpoint Description"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="ExecutiveTextBox" CssClass="TextBox" runat="server" Width="80%"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 35%">
                                            <asp:Label ID="ActivityLabel" CssClass="medium" runat="server" Text="Touchpoint Description"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="ActivityTextBox" CssClass="TextBox" runat="server" Width="80%"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 20px">
                            <td align="center">
                            </td>
                        </tr>
                        <tr style="height: 40px" align="center">
                            <td align="center" colspan="2">
                                <asp:Button ID="UpdateButton" runat="server" Width="75px" Text="Update" CssClass="Button"
                                    OnClick="UpdateButton_Click" />
                                <asp:Button ID="DeleteButton" runat="server" Width="75px" Text="Delete" CssClass="Button"
                                    OnClick="DeleteButton_Click" />
                                <asp:Button ID="PopupClearButton" runat="server" Width="75px" Text="Clear" CssClass="Button"
                                    OnClick="PopupClearButton_Click" />
                                <asp:Button ID="CloseButton" runat="server" Width="75px" Text="Close" CssClass="Button"
                                    OnClick="CloseButton_Click" />
                            </td>
                        </tr>
                        <tr style="height: 20px">
                            <td align="center">
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </ContentTemplate>
        </ajax:UpdatePanel>
    </asp:Panel>
    <asp:Button runat="server" ID="CloseControlButton" SkinID="InVisibleButton" Style="display: none" />
    <ajaxToolkit:ModalPopupExtender ID="CloseModalPopupExtender" runat="server" TargetControlID="CloseControlButton"
        PopupControlID="PopupPanel" BackgroundCssClass="ModalBackground" DynamicServicePath=""
        Enabled="True">
    </ajaxToolkit:ModalPopupExtender>
    <asp:Panel ID="WrapperPanel" runat="server" Width="750px" Style="left: 30px; position: relative;
        top: 5px">
        <asp:Panel ID="SearchPanel" runat="server" Width="750px" Style="left: 0px; position: relative;
            top: 10px">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
                    <td align="center">
                        <h1>
                            <asp:Label ID="HeaderLabel" runat="server" Text="Search and Download Data" Font-Bold="True"></asp:Label>
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td style="height: 10px">
                    </td>
                </tr>
            </table>
            <div id="SearchDiv" runat="server" style="width: 100%">
                <asp:Panel runat="server" ID="SearchFilterPanel" GroupingText="Search Criteria" Width="100%"
                    Font-Bold="true">
                    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr>
                            <td style="height: 20px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 37%">
                                            &nbsp;&nbsp;<asp:Label ID="SearchCompanyNameLabel" CssClass="medium" runat="server"
                                                Text="Company Name"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="SearchCompanyNameTextBox" CssClass="TextBox" runat="server" Width="80%"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 25px">
                                        <td style="width: 37%">
                                            &nbsp;&nbsp;<asp:Label ID="SearchClassificationLabel" CssClass="medium" runat="server"
                                                Text="Classification"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:DropDownList ID="SearchClassificationDropDownList" runat="server" CssClass="DropDown"
                                                Width="83%">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>LifeCycle1</asp:ListItem>
                                                <asp:ListItem>LifeCycle2</asp:ListItem>
                                                <asp:ListItem>LifeCycle3</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr style="height: 25px">
                                        <td style="width: 37%">
                                            &nbsp;&nbsp;<asp:Label ID="SearchEmailLabel" CssClass="medium" runat="server" Text="E-Mail"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:DropDownList ID="SearchEmailDropDownList" runat="server" CssClass="DropDown"
                                                Width="83%">
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                <asp:ListItem>Blank</asp:ListItem>
                                                <asp:ListItem>Non-Blank</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 50%">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr style="height: 25px">
                                        <td style="width: 34%">
                                        </td>
                                        <td style="width: 50%">
                                        </td>
                                    </tr>
                                    <tr style="height: 25px">
                                        <td style="width: 34%">
                                            <asp:Label ID="SearchSubClassificationLabel" CssClass="medium" runat="server" Text="Sub - Classification"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:DropDownList ID="SearchSubClassificationDropDownList" runat="server" CssClass="DropDown"
                                                Width="83%">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>LifeCyclePhase1</asp:ListItem>
                                                <asp:ListItem>LifeCyclePhase2</asp:ListItem>
                                                <asp:ListItem>LifeCyclePhase3</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr style="height: 25px">
                                        <td style="width: 34%">
                                            <asp:Label ID="SearchStatusLabel" CssClass="medium" runat="server" Text="Status"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:DropDownList ID="SearchStatusDropDownList" runat="server" CssClass="DropDown"
                                                Width="83%">
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                <asp:ListItem>Data Validated</asp:ListItem>
                                                <asp:ListItem>Email Sent</asp:ListItem>
                                                <asp:ListItem>Follow-up Done</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr>
                            <td style="height: 20px">
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 46px">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr>
                                        <td align="center" style="height: 24px">
                                            <asp:Button ID="SearchButton" runat="server" Width="75px" Text="Search" CssClass="Button"
                                                OnClick="SearchButton_Click" />
                                            <asp:Button ID="SearchClearButton" runat="server" Width="75px" Text="Clear" CssClass="Button"
                                                OnClick="SearchClearButton_Click" />&nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
        </asp:Panel>
        <asp:Panel ID="AddUpdatePanel" runat="server" Width="100%" Style="left: 0px; position: relative;
            top: 20px">
            <ajaxToolkit:TabContainer ID="AddUpdateTabContainer" runat="server" ActiveTabIndex="0"
                Style="left: 5px; position: relative; top: 5px">
                <ajaxToolkit:TabPanel ID="TabPanel" runat="server" HeaderText="">
                    <ContentTemplate>
                        <ajax:UpdatePanel ID="GridViewUpdatePanel" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="SearchResultsPanel" runat="server" Width="100%" Style="left: 0px;
                                    position: relative; top: 20px">
                                    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                        <tr>
                                            <td align="center">
                                                <asp:GridView ID="TouchpointDetailsGridView" runat="server" BackColor="White" BorderColor="#CCCCCC"
                                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False"
                                                    Width="720px" AllowPaging="True" OnPageIndexChanging="TouchpointDetailsGridView_PageIndexChanging">
                                                    <RowStyle ForeColor="#000066" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Company ID" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:Label ID="CompanyIDLabel" runat="server" Text='<%# Bind("CompanyId") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField HeaderText="Company Name" DataField="Company Name" ReadOnly="True" />
                                                        <asp:BoundField HeaderText="Address" DataField="Address" ReadOnly="True" />
                                                        <asp:BoundField HeaderText="Email" DataField="Email" ReadOnly="True" />
                                                        <asp:TemplateField ShowHeader="False">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="DetailsLinkButton" runat="server" CausesValidation="False" CommandName="Details"
                                                                    Text="Details" OnCommand="DetailsLinkButton_Click" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                                                            </ItemTemplate>
                                                            <ControlStyle ForeColor="Navy" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <HeaderStyle BackColor="#00C0C0" />
                                                    <AlternatingRowStyle BackColor="#FFE0C0" />
                                                    <SelectedRowStyle BackColor="CornflowerBlue" />
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px">
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </ContentTemplate>
                        </ajax:UpdatePanel>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
        </asp:Panel>
    </asp:Panel>
</body>
