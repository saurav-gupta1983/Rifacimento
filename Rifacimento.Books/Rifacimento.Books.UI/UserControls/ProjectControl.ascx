<%@ Control Language="C#" AutoEventWireup="true" Codebehind="ProjectControl.ascx.cs"
    Inherits="Humana.EAG.Insights.UI.ProjectControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="Calendar.ascx" TagName="DateCalendar" TagPrefix="uc1" %>

<script type="text/javascript"> 
//Function restricting user to Enter only Numeric Data
            function NumericOnly()
            {
                if(event.keyCode != 46)
                {
                    if (event.keyCode < 48 || event.keyCode > 57)
                    {
                        alert("Please enter Numeric values for SLA Limits");
                        event.returnValue = false; 
                    }  
                } 
            }    
</script>

<body title="Project Data Entry Screen">
    <asp:Panel ID="WrapperPanel" runat="server" Width="830px" Style="left: 30px; position: relative;
        top: 20px">
        <asp:Panel ID="SearchPanel" runat="server" Width="830px" Style="left: 0px; position: relative;
            top: 0px">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <h1>
                            <asp:Label ID="HeaderLabel" runat="server" Text="Project Screen" Font-Bold="True"></asp:Label>
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px">
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
                                <table>
                                    <tr style="height: 25px">
                                        <td style="width: 28%">
                                            &nbsp;&nbsp;<asp:Label ID="SearchProjectIdLabel" CssClass="medium" runat="server" Text=" Project ID"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="SearchProjectIdTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 25px">
                                        <td style="width: 28%">
                                            &nbsp;&nbsp;<asp:Label ID="SearchLifeCycleLabel" CssClass="medium" runat="server" Text=" Life Cycle"></asp:Label>
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
                                        <td style="width: 28%">
                                            &nbsp;&nbsp;<asp:Label ID="SearchBeginDateLabel" CssClass="medium" runat="server" Text=" Begin Date"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <uc1:DateCalendar ID="SearchBeginDateCalendar" runat="server"></uc1:DateCalendar>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 50%">
                                <table>
                                    <tr style="height: 25px">
                                        <td style="width: 34%">
                                            <asp:Label ID="SearchProjectTitleLabel" CssClass="medium" runat="server" Text="Project Title"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <asp:TextBox ID="SearchProjectTitleTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
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
                                            <asp:Label ID="SearchEndDateLabel" CssClass="medium" runat="server" Text="End Date"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            <uc1:DateCalendar ID="SearchEndDateCalendar" runat="server"></uc1:DateCalendar>
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
                            <td align="center">
                                <table>
                                    <tr>
                                        <td align="center" style="height: 24px">
                                            <asp:Button ID="SearchButton" runat="server" Width="75" Text="Search" CssClass="Button" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
                    <td style="height: 20px">
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:GridView ID="ProjectDetailsGridView" runat="server" BackColor="White" BorderColor="#CCCCCC"
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False"
                            Width="720px" AllowPaging="True" OnPageIndexChanging="ProjectDetailsGridView_PageIndexChanging">
                            <RowStyle ForeColor="#000066" />
                            <Columns>
                                <asp:TemplateField HeaderText="Project ID" Visible="False">
                                    <ItemTemplate>
                                        <asp:Label ID="ProjectIDLabel" runat="server" Text='<%# Bind("ProjectId") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="Project Title" DataField="ProjectTitle" ReadOnly="True" />
                                <asp:BoundField HeaderText="Description" DataField="Description" ReadOnly="True"
                                    Visible="false" />
                                <asp:BoundField HeaderText="Spirit Number" DataField="SpiritNumber" ReadOnly="True" />
                                <asp:BoundField HeaderText="Experience Segment" DataField="ExperienceSegment" ReadOnly="True"
                                    Visible="false" />
                                <asp:BoundField HeaderText="Segment Type" DataField="SegmentType" ReadOnly="True"
                                    Visible="false" />
                                <asp:BoundField HeaderText="Life Cycle" DataField="LifeCycle" ReadOnly="True" />
                                <asp:BoundField HeaderText="Begin Date" DataField="BeginDate" ReadOnly="True" />
                                <asp:BoundField HeaderText="End Date" DataField="EndDate" ReadOnly="True" />
                                <asp:BoundField HeaderText="Owner" DataField="Owner" ReadOnly="True" />
                                <asp:BoundField HeaderText="Market" DataField="Market" ReadOnly="True" Visible="false" />
                                <asp:BoundField HeaderText="Product" DataField="Product" ReadOnly="True" Visible="false" />
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
            </table>
        </asp:Panel>
        <asp:Panel ID="AddUpdatePanel" runat="server" Width="830px" Style="left: 0px; position: relative;
            top: 20px">
            <ajaxToolkit:TabContainer ID="AddUpdateTabContainer" runat="server" ActiveTabIndex="0"
                Style="left: 5px; position: relative; top: 5px">
                <ajaxToolkit:TabPanel ID="AddTabPanel" runat="server" HeaderText="Create New project">
                    <ContentTemplate>
                        <table cellpadding="0" cellspacing="0" border="0" width="99%">
                            <tr>
                                <td colspan="2" style="height:20px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%">
                                    <table>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="ProjectTitleLabel" CssClass="medium" runat="server" Text="Project Title"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="ProjectTitleTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="ProjectDescriptionLabel" CssClass="medium" runat="server" Text="Project Description"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="ProjectDescriptionTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
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
                                                <asp:Label ID="BeginDateLabel" CssClass="medium" runat="server" Text="Begin Date"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <uc1:DateCalendar ID="BeginDateCalendar" runat="server"></uc1:DateCalendar>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="EndDateLabel" CssClass="medium" runat="server" Text="End Date" Width="96%"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <uc1:DateCalendar ID="EndDateCalendar" runat="server"></uc1:DateCalendar>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="InitiativeLabel" CssClass="medium" runat="server" Text="Initiative"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:CheckBox ID="InitiativeLabelCheckBox" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%">
                                    <table>
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
                                                <asp:Label ID="VendorUtilizationLabel" CssClass="medium" runat="server" Text="Vendor Utilization"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="VendorUtilizationTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="MarketLabel" CssClass="medium" runat="server" Text="Market"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="MarketDropDownList" runat="server" CssClass="DropDown" Width="99%">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>Market1</asp:ListItem>
                                                    <asp:ListItem>Market2</asp:ListItem>
                                                    <asp:ListItem>Market3</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="ProductLabel" CssClass="medium" runat="server" Text="Product"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="ProductDropDownList" runat="server" CssClass="DropDown" Width="99%">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>Product1</asp:ListItem>
                                                    <asp:ListItem>Product2</asp:ListItem>
                                                    <asp:ListItem>Product3</asp:ListItem>
                                                </asp:DropDownList>
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
                            <tr>
                                <td colspan="2" align="center">
                                    <table>
                                        <tr>
                                            <td align="center" colspan="6" style="height: 24px">
                                                <asp:Button ID="AddButton" runat="server" Width="125px" Text="Create Project" CssClass="Button" />
                                                <asp:Button ID="ClearButton" runat="server" Width="75px" Text="Clear" CssClass="Button" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="UpdateDeleteTabPanel" runat="server" HeaderText="Update / Delete Project">
                    <ContentTemplate>
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                            <tr>
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <h2>
                                        <asp:Label ID="DisplayProjectTitleLabel" runat="server" Text="Project Title" Font-Bold="True"></asp:Label>
                                    </h2>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%; height: 279px;">
                                    <table>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayProjectIDLabel1" CssClass="medium" runat="server" Text="Project ID"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="DisplayProjectIDTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayProjectDescriptionLabel" CssClass="medium" runat="server" Text="Project Description"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="DisplayProjectDescriptionTextBox" CssClass="TextBox" runat="server"
                                                    Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplaySpiritNumberLabel" CssClass="medium" runat="server" Text="Spirit Number"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="DisplaySpiritNumberTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayExperienceSegmentLabel" CssClass="medium" runat="server" Text="Experience Segment"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="DisplayExperienceSegmentDropDownList" runat="server" CssClass="DropDown"
                                                    Width="100%">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>ExperienceSegment1</asp:ListItem>
                                                    <asp:ListItem>ExperienceSegment2</asp:ListItem>
                                                    <asp:ListItem>ExperienceSegment3</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplaySegmentTypeLabel" CssClass="medium" runat="server" Text="Segment Type"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="DisplaySegmentTypeDropDownList" runat="server" CssClass="DropDown"
                                                    Width="100%">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>SegmentType1</asp:ListItem>
                                                    <asp:ListItem>SegmentType2</asp:ListItem>
                                                    <asp:ListItem>SegmentType3</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayLifeCycleLabel" CssClass="medium" runat="server" Text="Life Cycle"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="DisplayLifeCycleDropDownList" runat="server" CssClass="DropDown"
                                                    Width="100%">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>LifeCycle1</asp:ListItem>
                                                    <asp:ListItem>LifeCycle2</asp:ListItem>
                                                    <asp:ListItem>LifeCycle3</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayBeginDateLabel" CssClass="medium" runat="server" Text="Begin Date"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <uc1:DateCalendar ID="DisplayBeginDateCalendar" runat="server"></uc1:DateCalendar>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayEndDateLabel8" CssClass="medium" runat="server" Text="End Date"
                                                    Width="96%"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <uc1:DateCalendar ID="DisplayEndDateCalendar" runat="server"></uc1:DateCalendar>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayInitiativeLabel" CssClass="medium" runat="server" Text="Initiative"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:CheckBox ID="DisplayInitiativeCheckBox" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%; height: 279px;">
                                    <table>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayMembershipImpactLabel" CssClass="medium" runat="server" Text="Membership Impact"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="DisplayMembershipImpactTextBox" CssClass="TextBox" runat="server"
                                                    Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayMeasurementLabel" CssClass="medium" runat="server" Text="Measurement"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="DisplayMeasurementTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayOwnerLabel" CssClass="medium" runat="server" Text="Owner"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="DisplayOwnerTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayContactPersonLabel" CssClass="medium" runat="server" Text="Contact Person"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="DisplayContactPersonTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayVendorUtilizationLabel" CssClass="medium" runat="server" Text="Vendor Utilization"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="DisplayVendorUtilizationTextBox" CssClass="TextBox" runat="server"
                                                    Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayMarketLabel" CssClass="medium" runat="server" Text="Market"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="DisplayMarketDropDownList" runat="server" CssClass="DropDown"
                                                    Width="100%">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>Market1</asp:ListItem>
                                                    <asp:ListItem>Market2</asp:ListItem>
                                                    <asp:ListItem>Market3</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayProductLabel" CssClass="medium" runat="server" Text="Product"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="DisplayProductDropDownList" runat="server" CssClass="DropDown"
                                                    Width="100%">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>Product1</asp:ListItem>
                                                    <asp:ListItem>Product2</asp:ListItem>
                                                    <asp:ListItem>Product3</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayLifeCyclePhaseLabel" CssClass="medium" runat="server" Text="Life Cycle Phase"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="DisplayLifeCyclePhaseDropDownList" runat="server" CssClass="DropDown"
                                                    Width="100%">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>LifeCyclePhase1</asp:ListItem>
                                                    <asp:ListItem>LifeCyclePhase2</asp:ListItem>
                                                    <asp:ListItem>LifeCyclePhase3</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 38%">
                                                <asp:Label ID="DisplayTagsLabel" CssClass="medium" runat="server" Text="Tags"></asp:Label>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:TextBox ID="DisplayTagsTextBox" CssClass="TextBox" runat="server" Width="98%"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%">
                                        <tr style="width: 100%">
                                            <td style="width: 19%">
                                                <asp:Label ID="DisplayCollaborationURLLabel" CssClass="medium" runat="server" Text="Collaboration URL"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;<asp:TextBox ID="DisplayCollaborationURLTextBox" CssClass="TextBox" runat="server"
                                                    Width="88%"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                            <tr style="height: 20px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <table>
                                        <tr>
                                            <td align="center" colspan="6" style="height: 24px">
                                                <asp:Button ID="UpdateButton" runat="server" Width="75px" Text="Update" CssClass="Button" />
                                                <asp:Button ID="DeleteButton" runat="server" Width="75px" Text="Delete" CssClass="Button" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
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
