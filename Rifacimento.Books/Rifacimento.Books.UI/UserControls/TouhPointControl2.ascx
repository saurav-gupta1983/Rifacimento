<%@ Control Language="C#" AutoEventWireup="true" Codebehind="TouhPointControl2.ascx.cs"
    Inherits="Humana.EAG.Insights.UI.UserControls.TouhPointControl2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="Calendar.ascx" TagName="DateCalendar" TagPrefix="uc1" %>
<body title="Touchpoint Data Entry Screen">
    <asp:Panel ID="Panel1" Style="display: none" CssClass="ModalPopup" runat="server"
        Width="100%">
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td colspan="2">
                    <h2>
                        <asp:Label ID="Label1" runat="server" Text="Touchpoint Title (Touchpoint Id)" Font-Bold="True"></asp:Label>
                    </h2>
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server" Width="100%" Style="left: 0px; position: relative;
            top: 20px">
            <table cellpadding="0" cellspacing="0" border="0" width="99%">
                <tr>
                    <td colspan="2" style="height: 20px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%">
                        <table>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label2" CssClass="medium" runat="server" Text="Touchpoint Title"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox1" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label3" CssClass="medium" runat="server" Text="Touchpoint Description"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox2" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label4" CssClass="medium" runat="server" Text="Spirit Number"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox3" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label5" CssClass="medium" runat="server" Text="Experience Segment"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="DropDown" Width="99%">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>ExperienceSegment1</asp:ListItem>
                                        <asp:ListItem>ExperienceSegment2</asp:ListItem>
                                        <asp:ListItem>ExperienceSegment3</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label6" CssClass="medium" runat="server" Text="Segment Type"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="DropDown" Width="99%">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>SegmentType1</asp:ListItem>
                                        <asp:ListItem>SegmentType2</asp:ListItem>
                                        <asp:ListItem>SegmentType3</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label7" CssClass="medium" runat="server" Text="Life Cycle"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="DropDown" Width="99%">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>LifeCycle1</asp:ListItem>
                                        <asp:ListItem>LifeCycle2</asp:ListItem>
                                        <asp:ListItem>LifeCycle3</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label8" CssClass="medium" runat="server" Text="Duration Start Date"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <uc1:DateCalendar ID="DateCalendar1" runat="server"></uc1:DateCalendar>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label9" CssClass="medium" runat="server" Text="Duration End Date"
                                        Width="96%"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <uc1:DateCalendar ID="DateCalendar2" runat="server"></uc1:DateCalendar>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label10" CssClass="medium" runat="server" Text="Frequency"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox4" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label11" CssClass="medium" runat="server" Text="Owner"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox5" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label12" CssClass="medium" runat="server" Text="Contact Person"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox6" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label13" CssClass="medium" runat="server" Text="Tags"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox7" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 50%">
                        <table>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label14" CssClass="medium" runat="server" Text="Impact"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox8" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label15" CssClass="medium" runat="server" Text="Membership Impact"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox9" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label16" CssClass="medium" runat="server" Text="Measurement"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox10" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label17" CssClass="medium" runat="server" Text="Volume"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox11" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label18" CssClass="medium" runat="server" Text="Regulation"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox12" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label19" CssClass="medium" runat="server" Text="Requirement"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox13" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label20" CssClass="medium" runat="server" Text="LegalReview"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox14" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label21" CssClass="medium" runat="server" Text="ComplianceReview"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox15" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label22" CssClass="medium" runat="server" Text="Interaction Rank"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox16" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label23" CssClass="medium" runat="server" Text="Report Name"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox17" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label24" CssClass="medium" runat="server" Text="ReportOwner"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:TextBox ID="TextBox18" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 38%">
                                    <asp:Label ID="Label25" CssClass="medium" runat="server" Text="Life Cycle Phase"></asp:Label>
                                </td>
                                <td style="width: 50%">
                                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="DropDown" Width="99%">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>LifeCyclePhase1</asp:ListItem>
                                        <asp:ListItem>LifeCyclePhase2</asp:ListItem>
                                        <asp:ListItem>LifeCyclePhase3</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table width="100%">
                            <tr style="width: 100%">
                                <td style="width: 18%">
                                    <asp:Label ID="CollaborationURLLabel1" CssClass="medium" runat="server" Text="Collaboration URL"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;<asp:TextBox ID="CollaborationURLTextBox1" CssClass="TextBox" runat="server"
                                        Width="88%"></asp:TextBox>
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
                        <asp:Button ID="Button1" runat="server" Width="75px" Text="Update" CssClass="Button" />
                        <asp:Button ID="Button2" runat="server" Width="75px" Text="Delete" CssClass="Button" />
                        <asp:Button ID="Button4" runat="server" Width="75px" Text="Clear" CssClass="Button"
                            OnClick="Button4_Click" />
                        <asp:Button ID="Button3" runat="server" Width="75px" Text="Close" CssClass="Button"
                            OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Button runat="server" ID="CloseControlButton" SkinID="InVisibleButton" Style="display: none" />
    <ajaxToolkit:ModalPopupExtender ID="CloseModalPopupExtender" runat="server" TargetControlID="CloseControlButton"
        PopupControlID="Panel1" BackgroundCssClass="ModalBackground" DynamicServicePath=""
        Enabled="True">
    </ajaxToolkit:ModalPopupExtender>
    <asp:Panel ID="WrapperPanel" runat="server" Width="750px" Style="left: 30px; position: relative;
        top: 5px">
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td align="center">
                    <h1>
                        <asp:Label ID="HeaderLabel" runat="server" Text="Touchpoint Screen" Font-Bold="True"></asp:Label>
                    </h1>
                </td>
            </tr>
        </table>
        <asp:Panel ID="AddUpdatePanel" runat="server" Width="100%" Style="left: 0px; position: relative;
            top: 20px">
            <ajaxToolkit:TabContainer ID="AddUpdateTabContainer" runat="server" ActiveTabIndex="1"
                Style="left: 5px; position: relative; top: 5px">
                <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="Update / Delete Touchpoint">
                    <ContentTemplate>
                        <asp:Panel ID="SearchPanel" runat="server" Width="750px" Style="left: 0px; position: relative;
                            top: 10px">
                            <div id="SearchDiv" runat="server" style="width: 100%">
                                <asp:Panel runat="server" ID="SearchFilterPanel" GroupingText="Search Criteria" Width="100%"
                                    Font-Bold="True">
                                    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                        <tr>
                                            <td style="height: 20px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 50%">
                                                <table>
                                                    <tr style="height: 25px">
                                                        <td style="width: 37%">
                                                            &nbsp;&nbsp;<asp:Label ID="SearchTouchpointIdLabel" CssClass="medium" runat="server"
                                                                Text=" Touchpoint ID"></asp:Label>
                                                        </td>
                                                        <td style="width: 50%">
                                                            <asp:TextBox ID="SearchTouchpointIdTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 25px">
                                                        <td style="width: 37%">
                                                            &nbsp;&nbsp;<asp:Label ID="SearchLifeCycleLabel" CssClass="medium" runat="server"
                                                                Text=" Life Cycle"></asp:Label>
                                                        </td>
                                                        <td style="width: 50%">
                                                            <asp:DropDownList ID="SearchLifeCycleDropDownList" runat="server" CssClass="DropDown"
                                                                Width="100%">
                                                                <asp:ListItem></asp:ListItem>
                                                                <asp:ListItem>LifeCycle1</asp:ListItem>
                                                                <asp:ListItem>LifeCycle2</asp:ListItem>
                                                                <asp:ListItem>LifeCycle3</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 25px">
                                                        <td style="width: 37%">
                                                            &nbsp;&nbsp;<asp:Label ID="SearchDurationStartLabel" CssClass="medium" runat="server"
                                                                Text=" Duration Start Date"></asp:Label>
                                                        </td>
                                                        <td style="width: 50%">
                                                            <uc1:DateCalendar ID="SearchDurationStartCalendar" runat="server"></uc1:DateCalendar>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 50%">
                                                <table>
                                                    <tr style="height: 25px">
                                                        <td style="width: 34%">
                                                            <asp:Label ID="SearchTouchpointTitleLabel" CssClass="medium" runat="server" Text="Touchpoint Title"></asp:Label>
                                                        </td>
                                                        <td style="width: 50%">
                                                            <asp:TextBox ID="SearchTouchpointTitleTextBox" CssClass="TextBox" runat="server"
                                                                Width="98%"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 25px">
                                                        <td style="width: 34%">
                                                            <asp:Label ID="SearchLifeCyclePhaseLabel" CssClass="medium" runat="server" Text="Life Cycle Phase"></asp:Label>
                                                        </td>
                                                        <td style="width: 50%">
                                                            <asp:DropDownList ID="SearchLifeCyclePhaseDropDownList" runat="server" CssClass="DropDown"
                                                                Width="100%">
                                                                <asp:ListItem></asp:ListItem>
                                                                <asp:ListItem>LifeCyclePhase1</asp:ListItem>
                                                                <asp:ListItem>LifeCyclePhase2</asp:ListItem>
                                                                <asp:ListItem>LifeCyclePhase3</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 25px">
                                                        <td style="width: 34%">
                                                            <asp:Label ID="SearchDurationEndDateLabel" CssClass="medium" runat="server" Text="Duration End Date"></asp:Label>
                                                        </td>
                                                        <td style="width: 50%">
                                                            <uc1:DateCalendar ID="SearchDurationEndDateCalendar" runat="server"></uc1:DateCalendar>
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
                                                <table>
                                                    <tr>
                                                        <td align="center" style="height: 24px">
                                                            <asp:Button ID="SearchButton" runat="server" Width="75px" Text="Search" CssClass="Button"
                                                                OnClick="SearchButton_Click" />
                                                            <asp:Button ID="SearchClearButton" runat="server" Width="75px" Text="Clear" CssClass="Button"
                                                                OnClick="SearchClearButton_Click" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </div>
                        </asp:Panel>
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
                                                <asp:TemplateField HeaderText="Touchpoint ID" Visible="False">
                                                    <ItemTemplate>
                                                        <asp:Label ID="TouchpointIDLabel" runat="server" Text='<%# Bind("TouchpointId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Touchpoint Title" DataField="TouchpointTitle" ReadOnly="True" />
                                                <asp:BoundField HeaderText="Description" DataField="Description" ReadOnly="True"
                                                    Visible="False" />
                                                <asp:BoundField HeaderText="Spirit Number" DataField="SpiritNumber" ReadOnly="True" />
                                                <asp:BoundField HeaderText="Experience Segment" DataField="ExperienceSegment" ReadOnly="True"
                                                    Visible="False" />
                                                <asp:BoundField HeaderText="Segment Type" DataField="SegmentType" ReadOnly="True"
                                                    Visible="False" />
                                                <asp:BoundField HeaderText="Life Cycle" DataField="LifeCycle" ReadOnly="True" />
                                                <asp:BoundField HeaderText="Duration Start Date" DataField="DurationStart" ReadOnly="True" />
                                                <asp:BoundField HeaderText="Duration End Date" DataField="DurationEndDate" ReadOnly="True" />
                                                <asp:BoundField HeaderText="Owner" DataField="Owner" ReadOnly="True" />
                                                <asp:BoundField HeaderText="Market" DataField="Market" ReadOnly="True" Visible="False" />
                                                <asp:BoundField HeaderText="Product" DataField="Product" ReadOnly="True" Visible="False" />
                                                <asp:BoundField HeaderText="Life Cycle Phase" DataField="LifeCyclePhase" ReadOnly="True" />
                                                <asp:TemplateField ShowHeader="False">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="DetailsLinkButton" runat="server" CausesValidation="False" CommandName="Details"
                                                            Text="Details"></asp:LinkButton>
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
                                <tr align="center">
                                    <td style="height: 20px">
                                        <asp:Button ID="DetailsButton" runat="server" Width="75px" Text="Details" CssClass="Button"
                                            OnClick="DetailsButton_Click" />
                                    </td>
                                </tr>
                        </asp:Panel>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel" runat="server" HeaderText="Create New Touchpoint">
                    <ContentTemplate>
                        <asp:Panel ID="AddPanel" runat="server" Width="100%" Style="left: 0px; position: relative;
                            top: 20px">
                            <table cellpadding="0" cellspacing="0" border="0" width="99%">
                                <tr>
                                    <td colspan="2" style="height: 20px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <table>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="TouchpointTitleLabel" CssClass="medium" runat="server" Text="Touchpoint Title"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="TouchpointTitleTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="TouchpointDescriptionLabel" CssClass="medium" runat="server" Text="Touchpoint Description"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="TouchpointDescriptionTextBox" CssClass="TextBox" runat="server"
                                                        Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="SpiritNumberLabel" CssClass="medium" runat="server" Text="Spirit Number"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="SpiritNumberTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="ExperienceSegmentLabel" CssClass="medium" runat="server" Text="Experience Segment"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:DropDownList ID="ExperienceSegmentDropDownList" runat="server" CssClass="DropDown"
                                                        Width="99%">
                                                        <asp:ListItem></asp:ListItem>
                                                        <asp:ListItem>ExperienceSegment1</asp:ListItem>
                                                        <asp:ListItem>ExperienceSegment2</asp:ListItem>
                                                        <asp:ListItem>ExperienceSegment3</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="SegmentTypeLabel" CssClass="medium" runat="server" Text="Segment Type"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:DropDownList ID="SegmentTypeDropDownList" runat="server" CssClass="DropDown"
                                                        Width="99%">
                                                        <asp:ListItem></asp:ListItem>
                                                        <asp:ListItem>SegmentType1</asp:ListItem>
                                                        <asp:ListItem>SegmentType2</asp:ListItem>
                                                        <asp:ListItem>SegmentType3</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="LifeCycleLabel" CssClass="medium" runat="server" Text="Life Cycle"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:DropDownList ID="LifeCycleDropDownList" runat="server" CssClass="DropDown" Width="99%">
                                                        <asp:ListItem></asp:ListItem>
                                                        <asp:ListItem>LifeCycle1</asp:ListItem>
                                                        <asp:ListItem>LifeCycle2</asp:ListItem>
                                                        <asp:ListItem>LifeCycle3</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="DurationStartLabel" CssClass="medium" runat="server" Text="Duration Start Date"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <uc1:DateCalendar ID="DurationStartCalendar" runat="server"></uc1:DateCalendar>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="DurationEndDateLabel" CssClass="medium" runat="server" Text="Duration End Date"
                                                        Width="96%"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <uc1:DateCalendar ID="DurationEndDateCalendar" runat="server"></uc1:DateCalendar>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="FrequencyLabel" CssClass="medium" runat="server" Text="Frequency"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="FrequencyTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="OwnerLabel" CssClass="medium" runat="server" Text="Owner"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="OwnerTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="ContactPersonLabel" CssClass="medium" runat="server" Text="Contact Person"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="ContactPersonTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="TagsLabel" CssClass="medium" runat="server" Text="Tags"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="TagsTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 50%">
                                        <table>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="ImpactLabel" CssClass="medium" runat="server" Text="Impact"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="ImpactTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="MembershipImpactLabel" CssClass="medium" runat="server" Text="Membership Impact"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="MembershipImpactTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="MeasurementLabel" CssClass="medium" runat="server" Text="Measurement"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="MeasurementTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="VolumeLabel" CssClass="medium" runat="server" Text="Volume"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="VolumeTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="RegulationLabel" CssClass="medium" runat="server" Text="Regulation"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="RegulationTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="RequirementLabel" CssClass="medium" runat="server" Text="Requirement"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="RequirementTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="LegalReviewLabel2" CssClass="medium" runat="server" Text="LegalReview"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="LegalReviewTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="ComplianceReviewLabel" CssClass="medium" runat="server" Text="ComplianceReview"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="ComplianceReviewTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="InteractionRankLabel" CssClass="medium" runat="server" Text="Interaction Rank"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="InteractionRankTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="ReportNameLabel" CssClass="medium" runat="server" Text="Report Name"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="ReportNameTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="ReportOwnerLabel" CssClass="medium" runat="server" Text="ReportOwner"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:TextBox ID="ReportOwnerTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height: 25px">
                                                <td style="width: 38%">
                                                    <asp:Label ID="LifeCyclePhaseLabel" CssClass="medium" runat="server" Text="Life Cycle Phase"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:DropDownList ID="LifeCyclePhaseDropDownList" runat="server" CssClass="DropDown"
                                                        Width="99%">
                                                        <asp:ListItem></asp:ListItem>
                                                        <asp:ListItem>LifeCyclePhase1</asp:ListItem>
                                                        <asp:ListItem>LifeCyclePhase2</asp:ListItem>
                                                        <asp:ListItem>LifeCyclePhase3</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%">
                                            <tr style="width: 100%">
                                                <td style="width: 18%">
                                                    <asp:Label ID="CollaborationURLLabel" CssClass="medium" runat="server" Text="Collaboration URL"></asp:Label>
                                                </td>
                                                <td>
                                                    &nbsp;<asp:TextBox ID="CollaborationURLTextBox" CssClass="TextBox" runat="server"
                                                        Width="88%"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr style="height: 20px">
                                    <td colspan="2">
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="SavePanel" runat="server" Width="100%" Style="left: 0px; position: relative;
                            top: 0px">
                            <table cellpadding="0" cellspacing="0" border="0" width="99%">
                                <tr>
                                    <td align="center">
                                        <table>
                                            <tr>
                                                <td align="center" style="height: 24px">
                                                    <asp:Button ID="SaveButton" runat="server" Width="75px" Text="Save" CssClass="Button" />
                                                    <asp:Button ID="ClearButton" runat="server" Width="75px" Text="Clear" CssClass="Button" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
                    <td style="height: 20px">
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
</body>
