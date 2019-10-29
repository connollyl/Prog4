using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite.Prog4
{
    public partial class Updating : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                if (string.IsNullOrEmpty(Session["DeVI"] as string))
                {
                    DeVProduct.PageIndex = 0;
                    Session["DeVI"] = DeVProduct.PageIndex.ToString();
                }
                else
                {
                    DeVProduct.PageIndex = Int32.Parse(Session["DeVI"].ToString());
                }
            }
            else
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                DeVProduct.PageIndex = Int32.Parse(Session["DeVI"].ToString());
            }
        }

        protected void btnFirst_Click(object sender, EventArgs e)
        {
            DeVProduct.PageIndex = 0;
            Session["DeVI"] = DeVProduct.PageIndex.ToString();
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            int i = Int32.Parse(Session["DeVI"].ToString());
            if (DeVProduct.PageIndex > 0)
            {
                DeVProduct.PageIndex = DeVProduct.PageIndex - 1;
                Session["DeVI"] = DeVProduct.PageIndex.ToString();
            }
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            int i = Int32.Parse(Session["DeVI"].ToString());
            if (i <= DeVProduct.PageIndex)
            {
                DeVProduct.PageIndex = DeVProduct.PageIndex + 1;
                Session["DeVI"] = DeVProduct.PageIndex.ToString();
            }
        }

        protected void btnLast_Click(object sender, EventArgs e)
        {
            DeVProduct.PageIndex = DeVProduct.PageCount;
            Session["DeVI"] = DeVProduct.PageIndex.ToString();
        }

        protected void DeVProduct_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            txtMessage.Text = "Item Updated";
        }

        protected void DeVProduct_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            txtMessage.Text = "Item Inserted";
        }

        protected void DeVProduct_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            txtMessage.Text = "Item Deleted";
        }
    }
}