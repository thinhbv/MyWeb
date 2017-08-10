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
                if (dtConfig.Rows.Count>0)
                {
                    Page.Title = dtConfig.Rows[0]["Title"].ToString();
                    Page.MetaDescription = dtConfig.Rows[0]["Description"].ToString();
                    Page.MetaKeywords = dtConfig.Rows[0]["Keyword"].ToString();
                }
                List<Product> listProduct = new List<Product>();
                //Get sản phẩm phổ biến
                listProduct = ProductService.Product_GetByTop("", "Active = 1 And [IsPopular] = 1", "Level,Ord");
                if (listProduct.Count > 0)
                {
                    ltrProducts.Text = "<li class=\"ajax_block_product col-xs-12 col-sm-4 col-md-3 first-in-line first-item-of-tablet-line first-item-of-mobile-line\">\n";
                    ltrProducts.Text += "<div class=\"product-container\">\n";
                    ltrProducts.Text += "<div class=\"left-block\">\n";
                    ltrProducts.Text += "<div class=\"product-image-container\">\n";
                    ltrProducts.Text += "<a class=\"product_img_link\" href=\"https://ld-prestashop.template-help.com/prestashop_60012/index.php?id_product=27&amp;controller=product&amp;id_lang=1\" title='" + listProduct[0].Name + "' itemprop=\"url\">\n";
                    ltrProducts.Text += "<img class=\"replace-2x img-responsive\" src='" + listProduct[0].Image1 + "' alt='" + listProduct[0].Name + "' title='" + listProduct[0].Name + "' itemprop=\"image\" /></a>\n";
                    ltrProducts.Text += "<a class=\"new-box\" href='#'><span class=\"new-label\">New</span></a>\n";
                    ltrProducts.Text += "</div><!--left-block-->\n</div><!--roduct-image-container-->\n";
                    ltrProducts.Text += "<div class=\"right-block\">\n";
                    ltrProducts.Text += "<h5 itemprop=\"name\">\n";
                    ltrProducts.Text += "<a class=\"product-name\" href=\"https://ld-prestashop.template-help.com/prestashop_60012/index.php?id_product=27&amp;controller=product&amp;id_lang=1\" title='" + listProduct[0].Name + "' itemprop=\"url\">\n";
                    ltrProducts.Text += "<span class=\"list-name\">" + listProduct[0].Name + "</span>\n";
                    ltrProducts.Text += "<span class=\"grid-name\">" + listProduct[0].Name + "</span>\n";
                    ltrProducts.Text += "</a></h5>\n";
                    ltrProducts.Text += "<p class=\"product-desc\" itemprop=\"description\">\n";
                    ltrProducts.Text += "<span class=\"list-desc\">" + StringClass.FormatContentNews(listProduct[0].Content, 200) + "</span>\n";
                    ltrProducts.Text += "<span class=\"grid-desc\">" + StringClass.FormatContentNews(listProduct[0].Content, 50) + "</span></p>\n";
                    ltrProducts.Text += "<div class=\"buttons\">\n";
                    ltrProducts.Text += "<a class=\"quick-view\" href=\"https://ld-prestashop.template-help.com/prestashop_60012/index.php?id_product=27&amp;controller=product&amp;id_lang=1\" data-href=\"https://ld-prestashop.template-help.com/prestashop_60012/index.php?id_product=27&amp;controller=product&amp;id_lang=1\">\n";
                    ltrProducts.Text += "<span>Quick view</span></a>\n</div><!--buttons-->\n";
                    ltrProducts.Text += "</div><!--right-block-->\n</div><!--product-container--></li>\n";
                    for (int i = 0; i < listProduct.Count; i++)
                    {
                        GeneralProductHtml(i + 1, listProduct);
                    }
                }
            }
        }

        private string GeneralProductHtml(int i, List<Product> listProduct)
        {
            string strHtml = string.Empty;
            strHtml = "<li class=\"ajax_block_product col-xs-12 col-sm-4 col-md-3 ";
            if (i % 4 == 1)
            {
                strHtml += "first-in-line";
            }
            else if (i % 4 == 0)
            {
                strHtml += "last-in-line";
            }
            if (i > 4)
            {
                strHtml += "last-line";
            }
            if (i % 3 == 1)
            {
                strHtml += "first-item-of-tablet-line";
            }
            else if (i % 3 == 0)
            {
                strHtml += "last-item-of-tablet-line";
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
            strHtml += "<a class=\"product_img_link\" href=\"https://ld-prestashop.template-help.com/prestashop_60012/index.php?id_product=27&amp;controller=product&amp;id_lang=1\" title='" + listProduct[i].Name + "' itemprop=\"url\">\n";
            strHtml += "<img class=\"replace-2x img-responsive\" src='" + listProduct[i].Image1 + "' alt='" + listProduct[i].Name + "' title='" + listProduct[i].Name + "' itemprop=\"image\" /></a>\n";
            strHtml += "<a class=\"new-box\" href='#'><span class=\"new-label\">New</span></a>\n";
            strHtml += "</div><!--left-block-->\n</div><!--roduct-image-container-->\n";
            strHtml += "<div class=\"right-block\">\n";
            strHtml += "<h5 itemprop=\"name\">\n";
            strHtml += "<a class=\"product-name\" href=\"https://ld-prestashop.template-help.com/prestashop_60012/index.php?id_product=27&amp;controller=product&amp;id_lang=1\" title='" + listProduct[i].Name + "' itemprop=\"url\">\n";
            strHtml += "<span class=\"list-name\">" + listProduct[i].Name + "</span>\n";
            strHtml += "<span class=\"grid-name\">" + listProduct[i].Name + "</span>\n";
            strHtml += "</a></h5>\n";
            strHtml += "<p class=\"product-desc\" itemprop=\"description\">\n";
            strHtml += "<span class=\"list-desc\">" + StringClass.FormatContentNews(listProduct[i].Content, 200) + "</span>\n";
            strHtml += "<span class=\"grid-desc\">" + StringClass.FormatContentNews(listProduct[i].Content, 50) + "</span></p>\n";
            strHtml += "<div class=\"buttons\">\n";
            strHtml += "<a class=\"quick-view\" href=\"https://ld-prestashop.template-help.com/prestashop_60012/index.php?id_product=27&amp;controller=product&amp;id_lang=1\" data-href=\"https://ld-prestashop.template-help.com/prestashop_60012/index.php?id_product=27&amp;controller=product&amp;id_lang=1\">\n";
            strHtml += "<span>Quick view</span></a>\n</div><!--buttons-->\n";
            strHtml += "</div><!--right-block-->\n</div><!--product-container--></li>\n";
            return strHtml;
        }
    }
}