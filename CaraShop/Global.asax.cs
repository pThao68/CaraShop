using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace CaraShop
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["danhsach_user"] = new List<User>();
            User admin = new User();
            admin.ID = 1;
            admin.Email = "admin@gmail.com";
            admin.MatKhau = "123456789";
            admin.SDT = "0123456789";
            admin.HoTen = "admin";
            List<User> ds;
            ds = (List<User>)Application["danhsach_user"];
            ds.Add(admin);
            Application["danhsach_user"] = ds;

            Application["numberWrong"] = 0;
            Application["timeError"] = null;


        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = false;
            Session["name"] = "";
            /*Session["listCart"] = new List<Cart>();*/

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}