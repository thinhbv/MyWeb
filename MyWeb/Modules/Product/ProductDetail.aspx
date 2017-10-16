<%@ Page Title="" Language="C#" MasterPageFile="~/Modules/PageMaster.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="MyWeb.Modules.Product.ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div id="columns" class="container">
<!-- Breadcrumb -->
<div class="breadcrumb clearfix">
<ul>
<li class="home">
<a class="home" href="/" title="Return to Home">
<i class="fa fa-home"></i>
</a>
</li>
<li class="last"><%= name %></li>
</ul>
</div>
<!-- /Breadcrumb -->
<div class="row">
<div class="large-left col-sm-12">
<div class="row">
<div id="center_column" class="center_column col-xs-12 col-sm-12 accordionBox">
<!--Replaced theme 2 -->
<div>
<div class="primary_block row">
<!-- left infos-->
<div class="pb-left-column col-sm-6 col-md-6 col-lg-8">
<!-- product img-->
<div id="image-block" class="clearfix is_caroucel">
<span class="sale-box no-print">
<span class="sale-label">Mới!</span>
</span>
<span id="view_full_size">
<a class="jqzoom" title="" rel="gal1" href="./Adobe Acrobat X Pro - Crazysoft_files/26-tm_thickbox_default.jpg" style="outline-style: none; text-decoration: none;">
<div class="zoomPad">
<img itemprop="image" src="./Adobe Acrobat X Pro - Crazysoft_files/26-tm_large_default.jpg" title="" alt="Adobe Acrobat X Pro" style="opacity: 1;">
<div class="zoomPup" style="width: 435px; height: 540px; position: absolute; display: none; border-width: 1px; left: 90px; top: -1px;"></div>
<div class="zoomWindow" style="position: absolute; z-index: 5001; cursor: default; left: 0px; top: 0px; display: block;">
<div class="zoomWrapper" style="width: 660px; border-width: 1px; cursor: crosshair;">
<div class="zoomWrapperTitle" style="width: 100%; position: absolute; display: none;"></div>
<div class="zoomWrapperImage" style="width: 100%; height: 819px;">
<img src="./Adobe Acrobat X Pro - Crazysoft_files/26-tm_thickbox_default.jpg" style="position: absolute; border: 0px; display: block; left: -137.879px; top: 0px;">
</div>
</div>
</div>
<div class="zoomPreload" style="top: 397px; left: 294px; position: absolute; visibility: hidden;">Loading zoom</div>
</div>
</a>
</span>
</div>
<!-- end image-block -->
<!-- thumbnails -->
<div id="views_block" class="clearfix">
<a id="view_scroll_left" class="" title="Other views" href="javascript:{}" style="cursor: default; opacity: 0; display: none;">Previous
</a>
<!-- thumbs_list -->
<div id="thumbs_list">
<ul id="thumbs_list_frame" style="height: 696px;">
<li id="thumbnail_24">
<a href="javascript:void(0);" rel="{gallery: &#39;gal1&#39;, smallimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/4/24-tm_large_default.jpg&#39;,largeimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/4/24-tm_thickbox_default.jpg&#39;}" title="Adobe Acrobat X Pro">
<img class="img-responsive" id="thumb_24" src="./Adobe Acrobat X Pro - Crazysoft_files/24-tm_cart_default.jpg" alt="Adobe Acrobat X Pro" title="Adobe Acrobat X Pro" height="99" width="80" itemprop="image">
</a>
</li>
<li id="thumbnail_26">
<a href="javascript:void(0);" rel="{gallery: &#39;gal1&#39;, smallimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/6/26-tm_large_default.jpg&#39;,largeimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/6/26-tm_thickbox_default.jpg&#39;}" title="Adobe Acrobat X Pro" class="shown">
<img class="img-responsive" id="thumb_26" src="./Adobe Acrobat X Pro - Crazysoft_files/26-tm_cart_default.jpg" alt="Adobe Acrobat X Pro" title="Adobe Acrobat X Pro" height="99" width="80" itemprop="image">
</a>
</li>
<li id="thumbnail_29">
<a href="javascript:void(0);" rel="{gallery: &#39;gal1&#39;, smallimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/9/29-tm_large_default.jpg&#39;,largeimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/9/29-tm_thickbox_default.jpg&#39;}" title="Adobe Acrobat X Pro">
<img class="img-responsive" id="thumb_29" src="./Adobe Acrobat X Pro - Crazysoft_files/29-tm_cart_default.jpg" alt="Adobe Acrobat X Pro" title="Adobe Acrobat X Pro" height="99" width="80" itemprop="image">
</a>
</li>
<li id="thumbnail_28">
<a href="javascript:void(0);" rel="{gallery: &#39;gal1&#39;, smallimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/8/28-tm_large_default.jpg&#39;,largeimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/8/28-tm_thickbox_default.jpg&#39;}" title="Adobe Acrobat X Pro">
<img class="img-responsive" id="thumb_28" src="./Adobe Acrobat X Pro - Crazysoft_files/28-tm_cart_default.jpg" alt="Adobe Acrobat X Pro" title="Adobe Acrobat X Pro" height="99" width="80" itemprop="image">
</a>
</li>
<li id="thumbnail_27">
<a href="javascript:void(0);" rel="{gallery: &#39;gal1&#39;, smallimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/7/27-tm_large_default.jpg&#39;,largeimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/7/27-tm_thickbox_default.jpg&#39;}" title="Adobe Acrobat X Pro">
<img class="img-responsive" id="thumb_27" src="./Adobe Acrobat X Pro - Crazysoft_files/27-tm_cart_default.jpg" alt="Adobe Acrobat X Pro" title="Adobe Acrobat X Pro" height="99" width="80" itemprop="image">
</a>
</li>
<li id="thumbnail_25" class="last">
<a href="javascript:void(0);" rel="{gallery: &#39;gal1&#39;, smallimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/5/25-tm_large_default.jpg&#39;,largeimage: &#39;https://ld-prestashop.template-help.com/prestashop_60012/img/p/2/5/25-tm_thickbox_default.jpg&#39;}" title="Adobe Acrobat X Pro">
<img class="img-responsive" id="thumb_25" src="./Adobe Acrobat X Pro - Crazysoft_files/25-tm_cart_default.jpg" alt="Adobe Acrobat X Pro" title="Adobe Acrobat X Pro" height="99" width="80" itemprop="image">
</a>
</li>
</ul>
</div>
<!-- end thumbs_list -->
<a id="view_scroll_right" title="Other views" href="javascript:{}" style="cursor: default; opacity: 0; display: none;">Next
</a>
</div>
<!-- end thumbnails -->
</div>
<!-- center infos -->
<div class="pb-right-column col-sm-6 col-md-6 col-lg-4">
<h1 itemprop="name"><%= name %></h1>
<div class="product-info-line">
<p id="product_condition">
<label>Mô tả: </label>
<span class="editable"><%=content %></span>
</p>
</div>
<div class="extra-right">
<p class="socialsharing_product no-print">
<button data-type="twitter" type="button" class="btn btn-twitter social-sharing">
<i class="fa fa-twitter"></i>
</button>
<button data-type="facebook" type="button" class="btn btn-facebook social-sharing">
<i class="fa fa-facebook"></i>
</button>
<button data-type="google-plus" type="button" class="btn btn-google-plus social-sharing">
<i class="fa fa-google-plus"></i>
</button>
<button data-type="pinterest" type="button" class="btn btn-pinterest social-sharing">
<i class="fa fa-pinterest"></i>
</button>
</p>
<!-- /Module ProductComments -->
</div>
</div>
<!-- end center infos-->
</div>
<!-- end primary_block -->
<div class="clearfix product-information">
<ul class="product-info-tabs nav nav-stacked col-sm-3 col-md-3 col-lg-3">
<li class="product-description-tab active"><a data-toggle="tab" href="<%=Request.RawUrl %>#product-description-tab-content">More info</a></li>
<li class="product-features-tab"><a data-toggle="tab" href="<%=Request.RawUrl %>#product-features-tab-content">Comments</a></li>
</ul>
<div class="tab-content col-sm-9 col-md-9 col-lg-9">
<div id="product-description-tab-content" class="product-description-tab-content tab-pane active">
<div class="rte">
<asp:Literal ID="ltrDetail" runat="server"></asp:Literal>
</div>
</div>
<!-- quantity discount -->
<!-- Data sheet -->
<div id="product-features-tab-content" class="product-features-tab-content tab-pane">
<span>Comment here</span>
</div>
<!--end Data sheet -->
</div>
</div>

<!-- description & features -->
<!--Accessories -->
<section class="page-product-box">
                                        <h3 class="page-product-heading">Sản phẩm liên quan</h3>
                                        <div class="block products_block accessories-block clearfix">
                                            <div class="block_content">
                                                <div class="bx-wrapper" style="max-width: 1168px; margin: 0px auto;">
                                                    <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 384px;">
                                                        <asp:Literal ID="ltrRelated" runat="server"></asp:Literal>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                             </section>
<!--end Accessories -->
</div>
<!-- itemscope product wrapper -->
</div>
<!-- #center_column -->
</div>
<!--.large-left-->
</div>
<!--.row-->
</div>
<!-- .row -->
</div>
<!-- #columns -->
</asp:Content>
