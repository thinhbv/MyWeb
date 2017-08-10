<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="MyWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="columns" class="container">
        <div class="row">
            <div class="large-left col-sm-12">
                <div class="row">
                    <div id="center_column" class="center_column col-xs-12 col-sm-12">
                        <ul id="home-page-tabs" class="nav nav-tabs clearfix">
                            <li class="homefeatured">
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
                            <ul id="homefeatured" class=" product_list grid row homefeatured tab-pane">
                                <asp:Literal ID="ltrProducts" runat="server"></asp:Literal>
                            </ul><!--homefeatured-->
                        </div><!--tab-content-->
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
</asp:Content>
