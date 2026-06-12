using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace SGIPC_Portfolio
{
    public static class SecurityHelper
    {
        public static void PreventBrowserCache(Page page)
        {
            page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            page.Response.Cache.SetNoStore();
            page.Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            page.Response.Cache.AppendCacheExtension("must-revalidate,proxy-revalidate");
        }

        public static void RequireLogin(Page page)
        {
            PreventBrowserCache(page);

            if (page.Session["LoggedInUser"] == null)
            {
                page.Response.Redirect("~/login.aspx?msg=login_required", true);
            }
                
        }
    }
}