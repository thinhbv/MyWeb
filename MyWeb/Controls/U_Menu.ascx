<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="U_Menu.ascx.cs" Inherits="MyWeb.Controls.U_Menu" %>
<div class="top_menu top-level tmmegamenu_item">
    <ul class="menu clearfix top-level-menu tmmegamenu_item">
        <asp:Literal ID="ltrmenu" runat="server"></asp:Literal>
        <li class="top-level-menu-li form-search">
            <input class="tm_search_query form-control" type="text" id="tm_search_query" name="search_query" placeholder="Search" value="" />
            <button type="submit" name="tm_submit_search" class="btn btn-default button-search">
                <span>Search</span>
            </button>
        </li>
    </ul>
    <!--tmmegamenu_item-->
</div>
<!--top_menu-->
