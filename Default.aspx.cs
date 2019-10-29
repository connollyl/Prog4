using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite.Prog4
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                GVProduct.PageIndex = 0;
                Session["GVI"] = GVProduct.PageIndex.ToString();
            }
            else
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                GVProduct.PageIndex = Int32.Parse(Session["GVI"].ToString());
            }
        }

        protected void btnFirst_Click(object sender, EventArgs e)
        {
            GVProduct.PageIndex = 0;
            Session["GVI"] = GVProduct.PageIndex.ToString();
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            int i = Int32.Parse(Session["GVI"].ToString());
            if (GVProduct.PageIndex > 0)
            {
                GVProduct.PageIndex = GVProduct.PageIndex - 1;
                Session["GVI"] = GVProduct.PageIndex.ToString();
            }
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            int i = Int32.Parse(Session["GVI"].ToString());
            if (i <= GVProduct.PageIndex)
            {
                GVProduct.PageIndex = GVProduct.PageIndex + 1;
                Session["GVI"] = GVProduct.PageIndex.ToString();
            }
        }

        protected void btnLast_Click(object sender, EventArgs e)
        {
            GVProduct.PageIndex = GVProduct.PageCount;
            Session["GVI"] = GVProduct.PageIndex.ToString();
        }
    }
}