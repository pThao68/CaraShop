using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaraShop
{
    public partial class ManageAccount : System.Web.UI.Page
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
                a += $"{ Session["name"]}";
                a += "</a>";
                a += "<ul class=\"layer2\">";
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
            }
            else if (Convert.ToString(Session["email"]) != "")
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
            }
        
    

    List<User> danhsach = (List<User>)Application["danhsach_user"];
            if (Convert.ToString(Session["name"]) == "")
            {
                Response.Redirect("login.aspx");
            }
            else if (IsPostBack)
            {

                    if (Request.Form["luu"] == "Save")
                    {
                        if (Request.Form["hoten"] == "" || Request.Form["Email"] == "" || Request.Form["pass1"] == ""|| Request.Form["pass2"] == "" || Request.Form["sdt"] == "")
                        {
                        string notice = "<script>document.getElementById(\"notify\").innerHTML = \"Not empty!\"</script>";
                        notify.InnerHtml = notice;
                    }
                        else
                        {
                            int check = 0;
                            foreach (User u1 in danhsach)
                            {
                                if (u1.Email == Request.Form["Email"])
                                {
                                    check = 1;
                                }
                            }
                            //check có trùng pass word ko!!!!!!!!!!!!!!!!!!
                            if (check != 1)
                            {
                            if (Request.Form["pass1"] == Request.Form["pass2"])
                            {
                                User u = new User();
                                u.HoTen = Request.Form["hoten"];
                                u.Email = Request.Form["Email"];
                                u.MatKhau = Request.Form["pass1"];
                                u.Repass = Request.Form["pass2"];
                                u.SDT = Request.Form["SDT"];
                                danhsach.Add(u);
                                Application["danhsach_user"] = danhsach;
                            }
                            else
                            {
                                string notice = "<script>document.getElementById(\"notify\").innerHTML = \"Repassword are not same password!\"</script>";
                                notify.InnerHtml = notice;
                            }
                        }

                        else
                        {
                            Response.Write("User have existed!");
                        }
                    }
                        //

                    }
                    if (Request.Form["sua"] == "Change")
                    {
                        if (Request.Form["hoten"] == "")
                        {
                            Response.Write("No information to change! ");
                        }
                        else
                        {
                            foreach (User u1 in danhsach)
                            {
                                if (u1.HoTen.Equals(Request.Form["hoten"]))
                                {
                                    u1.MatKhau = Request.Form["pass1"];
                                    /*u1.SDT = Request.Form["SDT"];*/
                                    /*Response.Write("Changed successfully!");*/
                                    string notice = "<script>document.getElementById(\"notify\").innerHTML = \"Changed successfully!\"</script>";
                                    notify.InnerHtml = notice;
                                }
                            }
                        }

                    }
                    if (Request.Form["xoa"] != null)
                    {
                        foreach (User us in danhsach)
                        {

                            if (us.ID == 1)
                            {
                                string js = "<script>document.getElementById('notify').innerHTML = \"Could not delete account ADMIN\";</script>  ";
                                notify.InnerHtml = js;
                            }
                            else
                            {
                                danhsach.Remove(us);
                                string js = "<script>document.getElementById('notify').innerHTML = \"\";</script>  ";
                                notify.InnerHtml = js;
                                break;

                            }
                        }
                    }
                }
                string chuoi = "";
                chuoi += "<table border ='1'>";
                chuoi += "<tr>";
                chuoi += "<td> ID </td>";
                chuoi += "<td> Name </td>";
                chuoi += "<td> Email </td>";
                chuoi += "<td> Password </td>";
                chuoi += "<td> Phone </td>";
                chuoi += "<td> Change </td>";
                chuoi += "<td> Delete </td>";
                chuoi += "</tr>";

                //lặp
                int i = 1;
                foreach (User u in danhsach)
                {
                    chuoi += "<tr>";
                    chuoi += "<td> " + (i++) + " </td>";
                    chuoi += "<td> " + u.HoTen + " </td>";
                    chuoi += "<td> " + u.Email + " </td>";
                    chuoi += "<td> " + u.MatKhau + " </td>";
                    chuoi += "<td> " + u.SDT + " </td>";

                    chuoi += "<td> <a href='ManageAccount.aspx?hoten=" + u.HoTen + "&Email=" + u.Email + "&pass1=" + u.MatKhau + "&SDT=" + u.SDT + "'/>Change</td> ";
                    chuoi += "<td> <a href='ManageAccount.aspx?hoten=" + u.HoTen + "&Email=" + u.Email + "&pass1=" + u.MatKhau + "&SDT=" + u.SDT + "'/>Delete</td> ";
                    chuoi += "</tr>";
                }
                chuoi += "</Table>";
                bang.InnerHtml = chuoi;

                if (Request.QueryString["hoten"] != "")
                {
                    hoten.Value = Request.QueryString["hoten"];
                    Email.Value = Request.QueryString["Email"];
                    pass1.Value = Request.QueryString["pass1"];
                pass2.Value = Request.QueryString["pass2"];
                SDT.Value = Request.QueryString["SDT"];
                }

            }
                    
        
    }
    
}