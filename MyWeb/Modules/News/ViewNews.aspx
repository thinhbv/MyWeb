<%@ Page Title="" Language="C#" MasterPageFile="~/Modules/PageMaster.Master" AutoEventWireup="true" CodeBehind="ViewNews.aspx.cs" Inherits="MyWeb.Modules.News.ViewNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div id="columns" class="container">
		<!-- Breadcrumb -->
		<div class="breadcrumb clearfix">
			<ul>
				<li class="home">
					<a class="home" href="https://ld-prestashop.template-help.com/prestashop_60012/" title="Return to Home">
						<i class="fa fa-home"></i>
					</a>
				</li>
				<li class="crumb-1">
					<span class="navigation-page"><a href="https://ld-prestashop.template-help.com/prestashop_60012/index.php?fc=module&module=smartblog&controller=category&id_lang=1">All Blog News</a></span>
				</li>
				<li class="crumb-2 last"><span>Management</span>
				</li>
			</ul>
			<asp:Literal ID="ltrBreadcrumb" runat="server"></asp:Literal>
		</div>
		<!-- /Breadcrumb -->
		<div class="row">
			<div class="large-left col-sm-12">
				<div class="row">
					<div id="center_column" class="center_column col-xs-12 col-sm-9">
						<h1 class="page-heading"><%=groupName %></h1>
						<div id="smartblogcat" class="block">
							<asp:Literal ID="ltrNews" runat="server"></asp:Literal>
							<asp:Repeater ID="rptNews" runat="server">
								<ItemTemplate>
									<div itemtype="#" itemscope="" class="sdsarticleCat clearfix">
										<div id="smartblogpost-<%# Container.ItemIndex + 1 %>">
											<h2 class='title_block_exclusive'><a title="<%# Eval("Name").ToString() %>" href='<%# MyWeb.Common.PageHelper.GeneralDetailUrl(MyWeb.Common.Consts.CON_TIN_TUC, groupName, Eval("Id").ToString(), Eval("Name").ToString()) %>'><%# Eval("Name").ToString() %></a></h2>
											<div class="articleContent">
												<a href="<%# MyWeb.Common.PageHelper.GeneralDetailUrl(MyWeb.Common.Consts.CON_TIN_TUC, groupName, Eval("Id").ToString(), Eval("Name").ToString()) %>" itemprop="url" title="<%#Eval("Name").ToString() %>" class="imageFeaturedLink post-image">
													<img itemprop="image" alt="<%# Eval("Name").ToString() %>" src="<%# Eval("Image").ToString() %>" class="imageFeatured img-responsive">
												</a>
												<div class="sdsarticle-des" itemprop="description">
													<%# MyWeb.Common.StringClass.FormatContentNews(Eval("Content").ToString(), 200) %>
													<a class="read-more" title="<%# Eval("Name").ToString() %>" href="<%# MyWeb.Common.PageHelper.GeneralDetailUrl(MyWeb.Common.Consts.CON_TIN_TUC, groupName, Eval("Id").ToString(), Eval("Name").ToString()) %>"><strong>Chi tiết...</strong></a>
												</div>
												<div class="articleHeader">
													<div class="postInfo">
														Posted by
														<span itemprop="author">
															<i class="fa fa-user"></i>
															Admin Administrator
														</span>
														<span itemprop="articleSection">
															<i class="fa fa-tags"></i>
															<a href="#">Management</a>
														</span>
														<span class="comment">
															<i class="fa fa-comments"></i>
															<a title="0 Comments" href="#">0  Comments</a>
														</span>
														<span class="views">
															<i class="fa fa-eye"></i>views (505)
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</ItemTemplate>
							</asp:Repeater>
						</div>
						<!--.smartblogcat-->
					</div>
				</div>
				<!--.row-->
			</div>
			<!--.large-left-->
		</div>
		<!--.row-->
	</div>
	<!-- #columns -->
</asp:Content>
