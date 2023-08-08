using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaraShop
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["email"]) == "admin@gmail.com")
            {
              /*   < ul class="layer2">
                        <li><a href = "" > Log out</a></li>
                        <li><a href = "" > Log out</a></li>
                        <li><a href = "" > Log out</a></li>
                    </ul>*/
                string a = "<a href=\"#\">";
                a +=   $"{ Session["name"]}";
                a += "</a>";
                a +=  "<ul class=\"layer2\">";
                a += "<li>";
                a += "<a href=\"#\">";
                a += "Add product";
                a += "</a>";
                a += "</li>";
                a += "<li>";
                a += "<a href=\"ManageAccount.aspx\">";
                a += "Manage account";
                a += "</a>";
                a += "</li>";
                a += "<li>";
                a += "<a href=\"Logout.aspx\">";

                a += "Log out";
                a += "</a>";
                a += "</li>";
                a += "</ul>";

                session.InnerHtml = a;
                string menuNone = "<script>document.getElementById('login_admin').style.display = \"none\";</script>";
                login_admin.InnerHtml = menuNone;

                /*string cartNone = "<script>document.getElementById('lg_bag').style.display = \"block\";</script>";
                lg_bag.InnerHtml = cartNone;*/


            }
            else if(Convert.ToString(Session["email"]) != "")
            {
                string a = "<a href=\"#\">";
                a += $"{ Session["name"]}";
                a += "</a>";
                a += "<ul class=\"layer2\">";
                a += "<li>";
                a += "<a href=\"#\">";
                a += "Add product";
                a += "</a>";
                a += "</li>";
                a += "<li>";
                a += "<a href=\"#\">";
                a += "Manage account";
                a += "</a>";
                a += "</li>";
                a += "<li>";
                a += "<a href=\"Logout.aspx\">";

                a += "Log out";
                a += "</a>";
                a += "</li>";
                a += "</ul>";
                session.InnerHtml = a;
                string menuNone = "<script>document.getElementById('login_admin').style.display = \"none\";</script>";
                login_admin.InnerHtml = menuNone;

                /*string cartNone = "<script>document.getElementById('lg_bag').style.display = \"block\";</script>";
                lg_bag.InnerHtml = cartNone;*/
            }    
        }
    }
}