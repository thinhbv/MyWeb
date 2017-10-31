<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="U_Banner.ascx.cs" Inherits="MyWeb.Controls.U_Banner" %>
<ul id="homeslider" style="max-height: 608px;">
    <asp:Repeater ID="rptBanner" runat="server">
        <ItemTemplate>
            <li class="homeslider-container">
                <a href='<%#DataBinder.Eval(Container.DataItem,"Link").ToString() %>' title='<%#DataBinder.Eval(Container.DataItem,"Name").ToString() %>'>
                    <img src='<%#DataBinder.Eval(Container.DataItem,"Image").ToString() %>' width="1437" height="608" alt='<%#DataBinder.Eval(Container.DataItem,"Name").ToString() %>' />
                </a>
                <%--<div class="homeslider-description">
                    <h2><%#DataBinder.Eval(Container.DataItem,"Name").ToString() %></h2>
                    <h3><%#DataBinder.Eval(Container.DataItem,"Content").ToString() %></h3>
                </div>--%>
            </li>
        </ItemTemplate>
    </asp:Repeater>
</ul>
