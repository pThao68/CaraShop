using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaraShop
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<User> lstuser = (List<User>)Application["danhsach_user"];

            bool check = false;

            if (IsPostBack)
            {
                if (Application["timeError"] == null)
                {
                    if ((int)Application["numberWrong"] > 5)
                    {
                        check = false;
                        Application["timeError"] = DateTime.Now.AddSeconds(15);
                        string js = $@"<p>Input is incorrect 5 times</p>
                                        <p>Log in again after {Application["timeError"]} </p>
                                        ";
                        notificationsubmit.InnerHtml = js;
                    }
                    else
                    {
                        check = true;
                    }
                }
                else
                {
                    if ((DateTime)Application["timeError"] <= DateTime.Now)
                    {
                        check = true;
                        Application["numberWrong"] = 0;
                        Application["timeError"] = null;
                    }
                    else
                    {
                        check = false;
                    }
                }

                if (check)
                {
                    if (Request.Form["log_in"] == "Log In")
                    {
                        string email = Request.Form["email"];
                        string pass = Request.Form["password"];
                        bool checkAccount = false;
                        foreach (User us in lstuser)
                        {
                            if (us.Email == email)
                            {
                                checkAccount = true;
                                if (us.MatKhau == pass)
                                {
                                    Session["email"] = email;
                                    Session["matkhau"] = pass;
                                    Session["login"] = true;
                                    Session["name"] = us.HoTen;
                                    Session["id"] = us.ID;

                                    Response.Redirect("Index.aspx");
                                }
                            }
                        }
                        if (checkAccount == true)
                        {
                            Application["numberWrong"] = (int)Application["numberWrong"] + 1;
                            string js = "<p>Password incorrect!</p>";
                            // js += (int)Application["numberWrong"];
                            notificationsubmit.InnerHtml = js;
                        }
                        else
                        {
                            //string js = "<script>document.getElementById('notificationsubmit').innerHTML = "Not exist account! ";</script>  ";
                            string js = "<p style='text-alight:center'>Not exist account!</p>";
                            notificationsubmit.InnerHtml = js;
                        }
                    }

                }


            }

        }
    }
}