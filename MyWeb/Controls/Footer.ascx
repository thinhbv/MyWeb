<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="MyWeb.Controls.Footer" %>
<div class="foot">
    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery('#<%= btnRegister.ClientID %>').click(function () {
                if (jQuery('#<%= txtEmail.ClientID %>').val().trim() == "") {
                    alert("Vui lòng nhập email của bạn!");
                    jQuery('#<%= txtEmail.ClientID %>').focus();
                    return false
                }
                return true;
            });
        });
    </script>
    <div style="position: absolute; top: 16px; left: 10px">
        <strong>Đăng ký email để nhận bản tin khuyến mại</strong>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" Width="170px"></asp:TextBox>&nbsp;&nbsp;
        <asp:Button ID="btnRegister" runat="server" Text="Đăng ký" CssClass="button small"
            OnClick="btnRegister_Click" />
    </div>
    <div class="nsb_container" align="center">
        <a id="l1" target="_blank" rel="nofollow" href="http://www.facebook.com/sharer.php?u=http://familyspa.vn/&title=">
            <img title="Facebook" border="0" src="/Images/facebook_aqu_24.png" alt="Facebook" /></a>&nbsp;
        <a id="l2" target="_blank" rel="nofollow" href="http://www.myspace.com/Modules/PostTo/Pages/?l=3&amp;u=http://familyspa.vn/&amp;title=">
            <img title="MySpace" border="0" src="/Images/myspace_aqu_24.png" alt="MySpace" /></a>&nbsp;
        <a id="l3" target="_blank" rel="nofollow" href="http://twitter.com/home?status=http://familyspa.vn/&amp;title=">
            <img title="Twitter" border="0" src="/Images/twitter_aqu_24.png" alt="Twitter" /></a>&nbsp;
        <a id="l5" target="_blank" rel="nofollow" href="http://del.icio.us/post?url=http://familyspa.vn/&amp;title=">
            <img title="Delicious" border="0" src="/Images/delicious_aqu_24.png" alt="Delicious" /></a>&nbsp;</div>
    <div style="clear: both;">
    </div>
    <div class="copy">
        <asp:Literal ID="ltrCopyright" runat="server"></asp:Literal>
        <%--<span>Family Spa </span>&copy; 2014 | <a href="#">Privacy policy</a>--%>
    </div>
</div>
