<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="U_Menu.ascx.cs" Inherits="MyWeb.Controls.U_Menu" %>
<script type="text/javascript">
	$(document).ready(function () {
		var key = '<%=keyword%>';
		$("#tm_submit_search").click(function () {
			key = $("#tm_search_query").val();
			window.location.href = "/san-pham?key=" + encodeURIComponent(key);
		})
		if (key !=='') {
			$("#tm_search_query").val(key);
		}
	})
	function PressEnter(e) {
		if (e.keyCode == 13) {
			var key = $("#tm_search_query").val();
			window.location.href = "/san-pham?key=" + encodeURIComponent(key);
		}
		return false;
	}
</script>
<div class="top_menu top-level tmmegamenu_item">
    <ul class="menu clearfix top-level-menu tmmegamenu_item">
        <asp:Literal ID="ltrmenu" runat="server"></asp:Literal>
        <li class="top-level-menu-li form-search">
			<input class="tm_search_query form-control" type="text" id="tm_search_query" name="search_query" placeholder="Từ khóa" value="" onkeypress="PressEnter(event);" />
            <button  type="button" id="tm_submit_search" class="btn btn-default button-search">
                <span>Tìm kiếm</span>
            </button>
        </li>
    </ul>
    <!--tmmegamenu_item-->
</div>
<!--top_menu-->
