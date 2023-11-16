using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desempeno2
{
    public partial class registracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["nombre"];
            Label1.Text = cookie != null ? cookie.Value : "Cookie no creada";

            if (this.Session["nombre"] != null)
            {
                Label2.Text = Session["nombre"].ToString();  
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie1 = new HttpCookie("nombre", "valor");
            HttpCookie cookie2 = new HttpCookie("contraseña", TextBox4.Text);
            cookie2.Expires = DateTime.Now.AddSeconds(3);
            Response.Cookies.Add(cookie1);
            Response.Cookies.Add(cookie2);
            Response.Redirect(Request.RawUrl);

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.Session["nombre"] = TextBox2.Text;
            Response.Redirect(Request.RawUrl);
        }
    }
}