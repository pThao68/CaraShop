using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaraShop
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<User> lstuser = (List<User>)Application["danhsach_user"];
            string email, sdt, hoten, matkhau;
                email = Request.Form["email"];
                matkhau = Request.Form["password"];
                sdt = Request.Form["number"];
                hoten = Request.Form["fullname"];

                if (IsPostBack)
                {
                    if (Request.Form["create_acc"] == "create account")
                    {
                        bool check = false;
                     //int i = 0;

                        foreach (User ds in lstuser)
                        {
                            if (ds.Email == email || ds.SDT == sdt)
                            {
                                check = true;
                                string js = "<script>document.getElementById('notificationsubmit').innerHTML = \"Account existed, please register again!\";</script>";
                                notificationsubmit.InnerHtml = js;

                            }

                        }
                        if (email == "" || matkhau == "" || sdt == "" || hoten == "")
                        {
                            check = true;
                        }
                        else if (check == false)
                        {

                            User user = new User();
                            user.HoTen = hoten;
                            user.Email = email;
                            user.MatKhau = matkhau;
                            user.SDT = sdt;

                            lstuser.Add(user);
                            Application["danhsach_user"] = lstuser;
                            Response.Redirect("login.aspx");
                        }
                    //if (Request.Form["fullname"] == "text")
                    //{

                    //}

                }
                }
            }
    }
}