﻿<%@ Page Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="News.aspx.cs" Inherits="MyWeb.Admins.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="PageName">
        QUẢN LÝ TIN TỨC</div>
    <asp:UpdatePanel ID="updatePage" runat="server">
        <ContentTemplate>
            <asp:Label ID="lblThongbao" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                Font-Size="12px" ForeColor="Red"></asp:Label>
            <asp:Panel ID="pnView" runat="server">
                <div style="margin-bottom: 5px">
                    <asp:DropDownList ID="drlnhom" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drlChuyenmuc_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                <div class="Control">
                    <ul>
                        <li>
                            <asp:LinkButton CssClass="vadd" ID="lbtAddT" runat="server" OnClick="AddButton_Click">Thêm mới</asp:LinkButton></li>
                        <li>
                            <asp:LinkButton CssClass="vdelete" ID="lbtDeleteT" runat="server" OnClick="DeleteButton_Click">Xóa</asp:LinkButton></li>
                        <li>
                            <asp:LinkButton CssClass="vrefresh" ID="lbtRefreshT" runat="server" OnClick="RefreshButton_Click">Làm mới</asp:LinkButton></li>
                        <li><a class="vback" href="javascript:void(0);" onclick="window.history.go(-1);">Trở
                            lại</a> </li>
                    </ul>
                </div>
                <asp:DataGrid ID="grdNews" runat="server" Width="100%" CssClass="TableView" AutoGenerateColumns="False"
                    AllowPaging="True" PageSize="40" PagerStyle-Mode="NumericPages" PagerStyle-HorizontalAlign="Center"
                    OnItemDataBound="grdNews_ItemDataBound" OnItemCommand="grdNews_ItemCommand" OnPageIndexChanged="grdNews_PageIndexChanged">
                    <HeaderStyle CssClass="trHeader"></HeaderStyle>
                    <ItemStyle CssClass="trOdd"></ItemStyle>
                    <AlternatingItemStyle CssClass="trEven"></AlternatingItemStyle>
                    <Columns>
                        <asp:TemplateColumn ItemStyle-CssClass="tdCenter">
                            <HeaderTemplate>
                                <asp:CheckBox ID="chkSelectAll" runat="server" AutoPostBack="False"></asp:CheckBox>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkSelect" runat="server"></asp:CheckBox>
                            </ItemTemplate>
                            <ItemStyle CssClass="tdCenter"></ItemStyle>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="Id" HeaderText="Id" Visible="False" />
                        <asp:BoundColumn DataField="Active" HeaderText="Active" Visible="False" />
                        <asp:BoundColumn DataField="Name" HeaderText="Tiêu đề tin" ItemStyle-CssClass="Text"
                            Visible="true" />
                        <asp:TemplateColumn ItemStyle-CssClass="Image">
                            <HeaderTemplate>
                                Hình ảnh</HeaderTemplate>
                            <ItemTemplate>
                                <image src='<%#Eval("Image") %>' width="70px" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn ItemStyle-CssClass="Center">
                            <HeaderTemplate>
                                Ngày đăng</HeaderTemplate>
                            <ItemTemplate>
                                <%#MyWeb.Common.DateTimeClass.ConvertDate(Eval("Date").ToString()) %></ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn ItemStyle-CssClass="Center">
                            <HeaderTemplate>
                                Tin mới</HeaderTemplate>
                            <ItemTemplate>
                                <asp:ImageButton ID="Image1" runat="server" CommandName="Index" CommandArgument='<%#Eval("Id") %>' ImageUrl='<%#MyWeb.Common.PageHelper.ShowCheckImage(DataBinder.Eval(Container.DataItem, "Index").ToString())%>' /></ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn ItemStyle-CssClass="CheckBox">
                            <HeaderTemplate>
                                Ưu tiên trang chủ</HeaderTemplate>
                            <ItemTemplate>
                                <asp:ImageButton ID="Image2" runat="server" CommandName="Priority" CommandArgument='<%#Eval("Id") %>' ImageUrl='<%#MyWeb.Common.PageHelper.ShowCheckImage(DataBinder.Eval(Container.DataItem, "Priority").ToString())%>' /></ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn ItemStyle-CssClass="Center">
                            <HeaderTemplate>
                                Thứ tự<asp:ImageButton ID="imgUpdateOrd" runat="server" ToolTip="Cập nhật thứ tự"
                                    ImageUrl="~/Images/Update.png" OnClick="imgUpdateOrd_Click" /></HeaderTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="txtOrd" runat="server" Text='<%#(Eval("Ord").ToString()) %>' Width="70px"
                                    Style="text-align: center" /></ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn ItemStyle-CssClass="Center">
                            <HeaderTemplate>
                                Kích hoạt</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblStatus" runat="server" Text='<%# MyWeb.Common.PageHelper.ShowActiveStatus(DataBinder.Eval(Container.DataItem, "Active").ToString()) %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn ItemStyle-CssClass="Function">
                            <HeaderTemplate>
                                Chức năng</HeaderTemplate>
                            <ItemTemplate>
                                <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Sửa" CommandName="Edit"
                                    CssClass="Edit" ToolTip="Sửa" ImageUrl="/App_Themes/Admin/images/edit.png" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"Id")%>' /><asp:ImageButton
                                        ID="cmdDelete" runat="server" AlternateText="Xóa" CommandName="Delete" CssClass="Delete"
                                        ToolTip="Xóa" ImageUrl="/App_Themes/Admin/images/delete.png" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"Id")%>'
                                        OnClientClick="javascript:return confirm('Bạn có muốn xóa?');" /><asp:ImageButton
                                            ID="cmdActive" runat="server" AlternateText='<%#MyWeb.Common.PageHelper.ShowActiveToolTip(DataBinder.Eval(Container.DataItem, "Active").ToString())%>'
                                            CommandName="Active" CssClass="Active" ToolTip='<%# MyWeb.Common.PageHelper.ShowActiveToolTip(DataBinder.Eval(Container.DataItem, "Active").ToString())%>'
                                            ImageUrl='<%#MyWeb.Common.PageHelper.ShowActiveImage(DataBinder.Eval(Container.DataItem, "Active").ToString())%>'
                                            CommandArgument='<%#DataBinder.Eval(Container.DataItem,"Id")%>' /></ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle HorizontalAlign="Center" CssClass="Paging" Position="Bottom" NextPageText="Previous"
                        PrevPageText="Next" Mode="NumericPages"></PagerStyle>
                </asp:DataGrid>
                <div class="Control">
                    <ul>
                        <li>
                            <asp:LinkButton CssClass="vadd" ID="lbtAddB" runat="server" OnClick="AddButton_Click">Thêm mới</asp:LinkButton></li>
                        <li>
                            <asp:LinkButton CssClass="vdelete" ID="lbtDeleteB" runat="server" OnClick="DeleteButton_Click">Xóa</asp:LinkButton></li>
                        <li>
                            <asp:LinkButton CssClass="vrefresh" ID="lbtRefreshB" runat="server" OnClick="RefreshButton_Click">Làm mới</asp:LinkButton></li>
                        <li><a class="vback" href="javascript:void(0);" onclick="window.history.go(-1);">Trở
                            lại</a> </li>
                    </ul>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnUpdate" runat="server" Visible="False">
                <table class="TableUpdate" border="1">
                    <tr>
                        <td class="Control" colspan="2">
                            <ul>
                                <li>
                                    <asp:LinkButton CssClass="uupdate" ID="lbtUpdateT" runat="server" OnClick="Update_Click">Ghi lại</asp:LinkButton></li>
                                <li>
                                    <asp:LinkButton CssClass="uback" ID="lbtBackT" runat="server" OnClick="Back_Click"
                                        CausesValidation="False">Trở về</asp:LinkButton></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblGroupNewsId" runat="server" Text="Nhóm tin:"></asp:Label>
                        </th>
                        <td>
                            <asp:DropDownList ID="ddlGroupNews" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvGroupNews" runat="server" ControlToValidate="ddlGroupNews"
                                Display="Dynamic" ErrorMessage="*" SetFocusOnError="True" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblName" runat="server" Text="Tiêu đề tin:"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" CssClass="text"></asp:TextBox><asp:RequiredFieldValidator
                                ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblImage" runat="server" Text="Hình ảnh:"></asp:Label><span style="color:Red; font-size:11px;"> (153x102)</span>
                        </th>
                        <td>
                            <asp:TextBox ID="txtImage" runat="server" CssClass="text image"></asp:TextBox>&nbsp;<input
                                id="btnImgImage" type="button" onclick="BrowseServer('<% =txtImage.ClientID %>','Images');"
                                value="Browse Server" />&nbsp;
                            <asp:Image ID="imgImage" runat="server" ImageAlign="Middle" Width="100px" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblDate" runat="server" Text="Ngày đăng:"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                            <asp:MaskedEditExtender
                        ID="meeDate" runat="server" Mask="99/99/9999 99:99:99" MaskType="DateTime" OnFocusCssClass="MaskedEditFocus"
                        OnInvalidCssClass="MaskedEditError" TargetControlID="txtDate" AcceptAMPM="True"
                        Century="2000" />
                    <asp:MaskedEditValidator ID="mevDate" runat="server" ControlExtender="meeDate" ControlToValidate="txtDate"
                        Display="Dynamic" EmptyValueBlurredText="Date and time is required" IsValidEmpty="True"
                        InvalidValueBlurredMessage="Date and time is invalid" SetFocusOnError="True" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblContent" runat="server" Text="Mô tả:"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtContent" runat="server" CssClass="multiline" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblDetail" runat="server" Text="Nội dung:"></asp:Label>
                        </th>
                        <td>
                            <FCKeditorV2:FCKeditor ID="fckDetail" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblIndex" runat="server" Text="Tin mới:"></asp:Label>
                        </th>
                        <td>
                            <asp:CheckBox ID="chkIndex" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblPriority" runat="server" Text="Ưu tiên trang chủ:"></asp:Label>
                        </th>
                        <td>
                            <asp:CheckBox ID="chkPriority" runat="server" />
                        </td>
                    </tr>
                    <%--<tr>
                        <th>
                            <asp:Label ID="lblDescription" runat="server" Text="Description meta:"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtDescription" runat="server" CssClass="text multiline" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblKeyword" runat="server" Text="Keyword meta:"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtKeyword" runat="server" CssClass="text multiline" TextMode="MultiLine"></asp:TextBox>
                        </td>
                     </tr>--%>
                     <tr>
                        <th>
                            <asp:Label ID="lblOrd" runat="server" Text="Thứ tự:"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtOrd" runat="server" CssClass="text number" /><asp:RequiredFieldValidator
                                ID="rfvOrd" runat="server" ControlToValidate="txtOrd" Display="Dynamic" ErrorMessage="*"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblActive" runat="server" Text="Kích hoạt:"></asp:Label>
                        </th>
                        <td>
                            <asp:CheckBox ID="chkActive" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="Control" colspan="2">
                            <ul>
                                <li>
                                    <asp:LinkButton CssClass="uupdate" ID="lbtUpdateB" runat="server" OnClick="Update_Click">Ghi lại</asp:LinkButton></li>
                                <li>
                                    <asp:LinkButton CssClass="uback" ID="lbtBackB" runat="server" OnClick="Back_Click"
                                        CausesValidation="False">Trở về</asp:LinkButton></li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="lbtUpdateT" />
        </Triggers>
        <Triggers>
            <asp:PostBackTrigger ControlID="lbtUpdateB" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
