<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="MyWeb.Modules.Page.Contact" %>

<%@ Register Src="../../Controls/U_MenuLeft.ascx" TagName="U_MenuLeft" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <%--<script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery('#<%= btnReset.ClientID %>').click(function () {
                jQuery('#<%= txtTitle.ClientID %>').val("");
                jQuery('#<%= txtHoTen.ClientID %>').val("");
                jQuery('#<%= txtEmail.ClientID %>').val("");
                jQuery('#<%= txtPhone.ClientID %>').val("");
                jQuery('#<%= txtAddress.ClientID %>').val("");
                jQuery('#<%= txtDetail.ClientID %>').val("");
                return false;
            });
            jQuery('#<%= btnSend.ClientID %>').click(function () {
                if (jQuery('#<%= txtTitle.ClientID %>').val().trim() == "") {
                    alert("Vui lòng nhập tiêu đề của bạn!");
                    jQuery('#<%= txtTitle.ClientID %>').focus()
                    return false
                }

                if (jQuery('#<%= txtHoTen.ClientID %>').val().trim() == "") {
                    alert("Vui lòng nhập họ tên của bạn!");
                    jQuery('#<%= txtHoTen.ClientID %>').focus()
                    return false
                }
                if (jQuery('#<%= txtEmail.ClientID %>').val().trim() == "") {
                    alert("Vui lòng nhập email của bạn!");
                    jQuery('#<%= txtEmail.ClientID %>').focus()
                    return false
                }
                if (jQuery('#<%= txtDetail.ClientID %>').val().trim() == "") {
                    alert("Vui lòng nhập nội dung!");
                    jQuery('#<%= txtDetail.ClientID %>').focus()
                    return false
                }
                return true;
            });
        });
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-left">
        <uc1:U_MenuLeft ID="U_MenuLeft1" runat="server" />
    </div>
    <div class="col-right">
        <h3>
            LIÊN HỆ</h3>
        <strong>Family Spa</strong>
        <div style="border-bottom: 1px solid #d58134; padding-bottom: 10px">
            <div style="border-bottom: 1px solid #d58134; margin-bottom: 10px">
                <asp:Literal ID="ltrContact" runat="server"></asp:Literal></div>
            <iframe width="619" height="250" frameborder="0" scrolling="no" marginheight="0"
                marginwidth="0" src="https://www.google.com/maps/ms?msa=0&amp;msid=211629434479432123467.0004c6e441d378448fc78&amp;hl=vi&amp;ie=UTF8&amp;t=m&amp;source=embed&amp;ll=21.016132,105.81601&amp;spn=0.002504,0.002242&amp;z=17&amp;output=embed">
            </iframe>
            <br />
            <small>Xem <a href="https://www.google.com/maps/ms?msa=0&amp;msid=211629434479432123467.0004c6e441d378448fc78&amp;hl=vi&amp;ie=UTF8&amp;t=m&amp;source=embed&amp;ll=21.016132,105.81601&amp;spn=0.002504,0.002242&amp;z=17"
                style="color: #0000FF; text-align: left">Family Skincare &amp; Spa</a> ở bản đồ
                lớn hơn</small>
        </div>
        <br />
        <p>
            Xin quý khách vui lòng đặt chỗ trước để chúng tôi có sự chuẩn bị tốt và nhanh nhất
            cho quý khách <a href="/dat-hen.aspx"><b style="text-decoration:underline">tại đây</b></a></p>
        <%--<table class="form-contact" cellpadding="0" cellspacing="0">
            <tr>
                <th>
                    Tiêu đề (*):
                </th>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 10px" colspan="2">
                </td>
            </tr>
            <tr>
                <th>
                    Họ tên (*):
                </th>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 10px" colspan="2">
                </td>
            </tr>
            <tr>
                <th>
                    Email (*):
                </th>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 10px" colspan="2">
                </td>
            </tr>
            <tr>
                <th>
                    Điện thoại:
                </th>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 10px" colspan="2">
                </td>
            </tr>
            <tr>
                <th>
                    Địa chỉ:
                </th>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 10px" colspan="2">
                </td>
            </tr>
            <tr>
                <th>
                    Nội dung (*):
                </th>
                <td>
                    <asp:TextBox ID="txtDetail" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                </th>
                <td>
                    <i>(Lưu ý: * chỉ định những thông tin bắt buộc)</i>
                </td>
            </tr>
        </table>
        <div class="button-contact">
            <asp:Button ID="btnSend" runat="server" Text="GỬI" OnClick="btnSend_Click" CssClass="button small" />
            <asp:Button ID="btnReset" runat="server" Text="RESET" CssClass="button small" />
        </div>--%>
    </div>
</asp:Content>
