using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaraShop
{
    public class User
    {
        int id;
        string email;
        string sdt;
        string hoten;
        string matkhau;
        string repass;
        int aabc { get; set; }

        public int ID
        {
            get { return id; }
            set { id = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        public string MatKhau
        {
            get { return matkhau; }
            set { matkhau = value; }
        }
        public string SDT
        {
            get { return sdt; }
            set { sdt = value; }
        }
        public string HoTen
        {
            get { return hoten; }
            set { hoten = value; }
        }

        public string Repass
        {
            get { return repass; }
            set { repass = value; }
        }

    }
}