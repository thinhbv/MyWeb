<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="MyWeb.Default" %>
<%@ Register Src="Controls/U_Banner.ascx" TagName="U_Banner" TagPrefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper it_WHFXKNZIJFPP top-2-wrap-1">
        <div class="row it_CWSQNFBKEXKW top-2-wrap-2-row-1">
            <div class="it_MIEJULRDEGLU col-xs-12 top-2-wrap-2-row-1-div">
                <!-- Module HomeSlider -->
                <div id="homepage-slider">
                    <uc3:u_banner id="U_Banner" runat="server" />
                </div>
                <!-- /Module HomeSlider -->
            </div>
        </div>
    </div>
    <div id="columns" class="container">
        <div class="row">
            <div class="large-left col-sm-12">
                <div class="row">
                    <div id="center_column" class="center_column col-xs-12 col-sm-12">
                        <ul id="home-page-tabs" class="nav nav-tabs clearfix">
                            <li class="homefeatured active">
                                <a data-toggle="tab" href="#homefeatured" class="homefeatured">Sản phẩm phổ biến</a>
                            </li>
                            <li class="blocknewproducts">
                                <a data-toggle="tab" href="#blocknewproducts" class="blocknewproducts">Sản phẩm mới</a>
                            </li>
                            <li class="blockbestsellers">
                                <a data-toggle="tab" href="#blockbestsellers" class="blockbestsellers">Sản phẩm bán chạy
                                </a>
                            </li>
                            <li class="blockspecials">
                                <a data-toggle="tab" href="#blockspecials" class="blockspecials">Sản phẩm đặc biệt</a>
                            </li>
                        </ul>
                        <!--home-page-tabs-->
                        <div class="tab-content">
                            <!-- Products list -->
                            <ul id="homefeatured" class=" product_list grid row homefeatured tab-pane active">
                                <asp:Literal ID="ltrProFeatured" runat="server"></asp:Literal>
                            </ul>
                            <!--homefeatured-->
                            <!-- Products list -->
                            <ul id="blocknewproducts" class=" product_list grid row blocknewproducts tab-pane">
                                <asp:Literal ID="ltrProNew" runat="server"></asp:Literal>
                            </ul>
                            <!--blocknewproducts-->
                            <!-- Products list -->
                            <ul id="blockbestsellers" class=" product_list grid row blockbestsellers tab-pane">
                                <asp:Literal ID="ltrProSeller" runat="server"></asp:Literal>
                            </ul>
                            <!--blockbestsellers-->
                            <!-- Products list -->
                            <ul id="blockspecials" class=" product_list grid row blockspecials tab-pane">
                                <asp:Literal ID="ltrProSpecial" runat="server"></asp:Literal>
                            </ul>
                            <!--blockspecials-->
                        </div>
                        <!--tab-content-->
                    </div>
                    <!--center_column-->
                </div>
                <!--row-->
            </div>
            <!--large-left-->
        </div>
        <!--row-->
    </div>
    <!--columns-->
    <div class="wrapper it_SKYMGLBNFTTP third_home">
        <div class="row it_GUOTHFKJDHYN ">
            <div class="it_MMHSILNZUEHB col-xs-12">
                <div id="tmhtmlcontent_home">
                    <ul class="tmhtmlcontent-home clearfix row">
                        <li class="tmhtmlcontent-item-1 col-xs-4 ">
                            <div class="item-html">
                                <asp:Literal ID="ltrAbout" runat="server"></asp:Literal>
                            </div>
                            <!--item-html-->
                        </li>
                        <!--tmhtmlcontent-item-1-->
                        <li class="tmhtmlcontent-item-2 col-xs-4 ">
                            <asp:Literal ID="ltrAboutImg" runat="server"></asp:Literal>
                        </li>
                        <!--tmhtmlcontent-item-2-->
                    </ul>
                    <!--tmhtmlcontent-->
                </div>
                <!--tmhtmlcontent_home-->
            </div>
            <!--it_MMHSILNZUEHB-->
        </div>
        <!--it_GUOTHFKJDHYN-->
    </div>
    <!--it_SKYMGLBNFTTP-->
    <div class="wrapper it_TYXKTIOMWBWT ">
        <div class="row it_TLOGDDJJFJFS full-width">
            <div class="it_ZVUATFARMTOP col-xs-12 container">
                <section id="homepage-blog" class="block">
                    <asp:Literal ID="ltrNews" runat="server"></asp:Literal>
                </section>
                <!--homepage-blog-->
            </div>
            <!--it_ZVUATFARMTOP-->
        </div>
        <!--it_TLOGDDJJFJFS-->
    </div>
    <!--it_TYXKTIOMWBWT-->
</asp:Content>
