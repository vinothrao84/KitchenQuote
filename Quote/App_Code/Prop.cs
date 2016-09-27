using System;
using System.Collections.Generic;
using System.Web;

namespace Quote.App_Code
{
    public class Prop
    {
        private string _ImageName;
        public string ImageName
        {
            get { return _ImageName; }
            set { _ImageName = value; }
        }

        private string _Name;
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        private string _Email;
        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }

        private string _ContactNo;
        public string ContactNo
        {
            get { return _ContactNo; }
            set { _ContactNo = value; }
        }
    }
}