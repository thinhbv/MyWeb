using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyWeb.Data;
using MyWeb.Business;
using MyWeb.Common;
using System.Data;

namespace MyWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtConfig = ConfigService.Config_GetByTop("1", "", "");
                if (dtConfig.Rows.Count > 0)
                {
                    Page.Title = dtConfig.Rows[0]["Title"].ToString();
                    Page.MetaDescription = dtConfig.Rows[0]["Description"].ToString();
                    Page.MetaKeywords = dtConfig.Rows[0]["Keyword"].ToString();
                }
                List<Product> listProduct = new List<Product>();
                //Get sản phẩm phổ biến
                listProduct = ProductService.Product_GetByTop("", "Active = 1 And [IsPopular] = 1", "Ord");
                if (listProduct.Count > 0)
                {
                    for (int i = 0; i < listProduct.Count; i++)
                    {
                        ltrProFeatured.Text += GeneralProductHtml(i + 1, listProduct);
                    }
                }
                //Get sản phẩm mới
                listProduct = ProductService.Product_GetByTop("", "Active = 1 And [IsNew] = 1", "Ord");
                if (listProduct.Count > 0)
                {
                    for (int i = 0; i < listProduct.Count; i++)
                    {
                        ltrProNew.Text += GeneralProductHtml(i + 1, listProduct);
                    }
                }
                //Get sản phẩm bán chạy
                listProduct = ProductService.Product_GetByTop("", "Active = 1 And [IsHot] = 1", "Ord");
                if (listProduct.Count > 0)
                {
                    for (int i = 0; i < listProduct.Count; i++)
                    {
                        ltrProSeller.Text += GeneralProductHtml(i + 1, listProduct);
                    }
                }
                //Get sản phẩm đặc biệt
                listProduct = ProductService.Product_GetByTop("", "Active = 1 And [IsSpecial] = 1", "Ord");
                if (listProduct.Count > 0)
                {
                    for (int i = 0; i < listProduct.Count; i++)
                    {
                        ltrProSpecial.Text += GeneralProductHtml(i + 1, listProduct);
                    }
                }

                //Giới thiệu về chúng tôi
                DataTable dt = PageService.Page_GetByTop("1", "Name like N'%giới thiệu%'", "");
                if (dt.Rows.Count > 0)
                {
                    ltrAbout.Text = "<h3>" + dt.Rows[0]["Name"].ToString() + "</h3>\n";
                    ltrAbout.Text += "<p>" + StringClass.GetContent(dt.Rows[0]["Description"].ToString(), 500) + "</p>\n";
                    ltrAbout.Text += "<p><a href='" + dt.Rows[0]["Link"].ToString() + "' class='btn btn-default'><span>Chi tiết</span></a></p>\n";
                    ltrAboutImg.Text = "<a href='" + dt.Rows[0]["Link"].ToString() + "' class='item-link' title='" + dt.Rows[0]["Name"].ToString() + "'>\n";
                    ltrAboutImg.Text += "<img src='" + dt.Rows[0]["Image"].ToString() + "' class='item-img' title='" + dt.Rows[0]["Name"].ToString() + "' alt='" + dt.Rows[0]["Name"].ToString() + "' width='100%' height='100%'/></a>";
                }
                dt.Clear();
                dt = NewsService.News_GetByTop("3", "Active = 1 AND [Priority] = 1", "Date Desc");
                if (dt.Rows.Count > 0)
                {
                    ltrNews.Text = "<h4 class='title_block'>Tin mới nhất</h4>\n";
                    ltrNews.Text += "<div class='block_content'>\n<ul class='row'>\n";
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        ltrNews.Text += GeneralNewsHtml(i, dt);
                    }
                    ltrNews.Text += "</ul>\n</div>\n";
                }
            }
        }

        private string GeneralProductHtml(int i, List<Product> listProduct)
        {
            string strHtml = string.Empty;
            strHtml = "<li class=\"ajax_block_product col-xs-12 col-sm-4 col-md-3 ";
            if (i % 4 == 1)
            {
                strHtml += "first-in-line ";
            }
            else if (i % 4 == 0)
            {
                strHtml += "last-in-line ";
            }
            if (i > 4)
            {
                strHtml += "last-line ";
            }
            if (i % 3 == 1)
            {
                strHtml += "first-item-of-tablet-line ";
            }
            else if (i % 3 == 0)
            {
                strHtml += "last-item-of-tablet-line ";
            }
            if (i % 2 == 1)
            {
                strHtml += "first-item-of-mobile-line";
            }
            else if (i % 2 == 0)
            {
                strHtml += "last-item-of-mobile-line";
            }
            i = i - 1;
            strHtml += "\">\n";
            strHtml += "<div class=\"product-container\">\n";
            strHtml += "<div class=\"left-block\">\n";
            strHtml += "<div class=\"product-image-container\">\n";
            List<GroupProduct> listG = GroupProductService.GroupProduct_GetByTop("1", "Id=" + listProduct[i].GroupId, "");
            string strURL = PageHelper.GeneralDetailUrl(Consts.CON_SAN_PHAM, listG[0].Name, listProduct[i].Id, listProduct[i].Name);
            strHtml += "<a class=\"product_img_link\" href=\"" + strURL + "\" title='" + listProduct[i].Name + "' itemprop=\"url\">\n";
            strHtml += "<img class=\"replace-2x img-responsive\" src='" + listProduct[i].Image1 + "' alt='" + listProduct[i].Name + "' title='" + listProduct[i].Name + "' itemprop=\"image\" /></a>\n";
            strHtml += "<a class=\"new-box\" href='#'><span class=\"new-label\">New</span></a>\n";
            strHtml += "</div><!--left-block-->\n</div><!--roduct-image-container-->\n";
            strHtml += "<div class=\"right-block\">\n";
            strHtml += "<h5 itemprop=\"name\">\n";
            strHtml += "<a class=\"product-name\" href=\"" + strURL + "\" title='" + listProduct[i].Name + "' itemprop=\"url\">\n";
            strHtml += "<span class=\"list-name\">" + listProduct[i].Name + "</span>\n";
            strHtml += "<span class=\"grid-name\">" + listProduct[i].Name + "</span>\n";
            strHtml += "</a></h5>\n";
            strHtml += "<p class=\"product-desc\" itemprop=\"description\">\n";
            strHtml += "<span class=\"list-desc\">" + StringClass.FormatContentNews(listProduct[i].Content, 200) + "</span>\n";
            strHtml += "<span class=\"grid-desc\">" + StringClass.FormatContentNews(listProduct[i].Content, 50) + "</span></p>\n";
            strHtml += "<div class=\"buttons\">\n";
            strHtml += "<a class=\"quick-view\" href=\"" + strURL + "\" data-href=\"" + strURL + "\">\n";
            strHtml += "<span>Chi tiết</span></a>\n</div><!--buttons-->\n";
            strHtml += "</div><!--right-block-->\n</div><!--product-container--></li>\n";
            return strHtml;
        }
        private string GeneralNewsHtml(int i, DataTable dt)
        {
            string strHtml = string.Empty;
            if (i == 0)
            {
                strHtml = "<li class=\"col-xs-12 col-sm-4 col-md-4 first-in-line last-line first-item-of-tablet-line first-item-of-mobile-line\">\n";
            }
            else if (i == 1)
            {
                strHtml = "<li class=\"col-xs-12 col-sm-4 col-md-4 last-line last-item-of-mobile-line\">\n";
            }
            else if (i == 2)
            {
                strHtml = "<li class=\"col-xs-12 col-sm-4 col-md-4 last-in-line last-line last-item-of-tablet-line first-item-of-mobile-line last-mobile-line\">\n";
            }
            string strURL = PageHelper.GeneralGroupUrl(Consts.CON_TIN_TUC, dt.Rows[i]["Id"].ToString(), dt.Rows[i]["Name"].ToString());
            strHtml += "<div class='post-container'>\n";
            strHtml += "<div class='blog-image'>\n";
            strHtml += "<a href='" + strURL + "'>\n";
            strHtml += "<img alt='" + dt.Rows[i]["Name"].ToString() + "' class='img-responsive' src='" + dt.Rows[i]["Image"].ToString() + "'></a></div>\n";
            strHtml += "<div class='post-content'>\n";
            strHtml += "<h5><a class='product-name' href='" + strURL + "'>" + dt.Rows[i]["Name"].ToString() + "</a></h5>\n";
            strHtml += "<p class='post-descr'>" + StringClass.FormatContentNews(dt.Rows[i]["Content"].ToString(), 200) + "</p>\n";
            strHtml += "<a href='" + strURL + "' class='btn btn-default btn-sm icon-right'><span>Chi tiêt</span></a>";
            strHtml += "<p class='date-added'>" + DateTimeClass.ConvertDateTime(dt.Rows[i]["Date"].ToString(), "MM/dd/yyyy HH:mm:ss") + "</p>\n";
            strHtml += "</div>\n</div>\n</li>\n";
            return strHtml;
        }
    }
}