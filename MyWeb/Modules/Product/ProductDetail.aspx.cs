﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyWeb.Data;
using MyWeb.Business;
using MyWeb.Common;

namespace MyWeb.Modules.Product
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected string name = string.Empty;
        protected string content = string.Empty;
        string id = string.Empty;
        string groupname = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.RouteData.Values["Id"] != null)
            {
                id = Page.RouteData.Values["Id"] as string;
            }
            if (Page.RouteData.Values["groupName"] != null)
            {
                groupname = Page.RouteData.Values["groupName"] as string;
            }
            if (!IsPostBack)
            {
                try
                {
                    if (Microsoft.VisualBasic.Information.IsNumeric(id))
                    {
                        List<Data.Product> pro = ProductService.Product_GetById(id);
                        if (pro.Count > 0)
                        {
                            name = pro[0].Name;
                            content = pro[0].Content;
                            ltrDetail.Text = pro[0].Detail;
                            List<Data.Product> listRelated = ProductService.Product_GetByTop("", "Active = 1 AND GroupId='" + pro[0].GroupId + "'", "Ord");
                            if (listRelated.Count > 0)
                            {
                                ltrRelated.Text += "<ul id='bxslider' class='bxslider clearfix' style='width: 915%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);'>\n";
                                for (int i = 0; i < listRelated.Count; i++)
                                {
                                    if (i == 0)
                                    {
                                        ltrRelated.Text += "<li class='item product-box ajax_block_product first_item product_accessories_description' style='float: left; list-style: none; position: relative; margin-right: 20px; width: 178px;'>\n";
                                    }
                                    else if (i == listRelated.Count - 1)
                                    {
                                        ltrRelated.Text += "<li class='item product-box ajax_block_product last_item product_accessories_description' style='float: left; list-style: none; position: relative; margin-right: 20px; width: 178px;'>\n";
                                    }
                                    else
                                    {
                                        ltrRelated.Text += "<li class='item product-box ajax_block_product product_accessories_description' style='float: left; list-style: none; position: relative; margin-right: 20px; width: 178px;'>\n";
                                    }
                                    ltrRelated.Text += "<div class='product_desc'>\n";
                                    ltrRelated.Text += "<a href='" + PageHelper.GeneralDetailUrl(Consts.CON_SAN_PHAM, groupname, listRelated[i].Id, listRelated[i].Name) + "' title='" + listRelated[i].Name + "' class='product-image product_image'>\n";
                                    ltrRelated.Text += "<img class='lazyOwl' src='" + listRelated[i].Image1 + "' alt='" + listRelated[i].Name + "' width='500' height='620'></a>\n";
                                    ltrRelated.Text += "<div class='block_description'><span>" + StringClass.FormatContentNews(listRelated[i].Content, 50) + "</span></div>\n";
                                    ltrRelated.Text += "</div>\n";
                                    ltrRelated.Text += "<div class='s_title_block'>\n";
                                    ltrRelated.Text += "<h5 class='product-name'>\n";
                                    ltrRelated.Text += "<a href='" + PageHelper.GeneralDetailUrl(Consts.CON_SAN_PHAM, groupname, listRelated[i].Id, listRelated[i].Name) + "' title='" + listRelated[i].Name + "'>" + listRelated[i].Name + "</a>\n</h5>\n</div>\n";
                                    ltrRelated.Text += "</li>";
                                }
                                ltrRelated.Text += "</ul>";
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
    }
}