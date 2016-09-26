using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using Newtonsoft.Json;

namespace Quote.ws
{
    /// <summary>
    /// Summary description for service
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class service : System.Web.Services.WebService
    {
        [WebMethod]
        [ScriptMethod(ResponseFormat=ResponseFormat.Json)]
        public int getMeasurementSize(string rbShape)
        {
            int option = 0;

            switch (rbShape)
            {
                case "u":
                    option = 1;
                    break;
                case "island":
                    option = 2;
                    break;
                case "g":
                    option = 3;
                    break;
                case "gk":
                    option = 4;
                    break;
                case "i":
                    option = 5;
                    break;
                case "l":
                    option = 6;
                    break;
            }

            return option;
        }
    }
}
