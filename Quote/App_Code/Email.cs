using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Configuration;

namespace Quote.App_Code
{
    public class Email
    {
        public void Send(Prop p)
        {
            string[] MailFrom = ConfigurationManager.AppSettings["MailFrom"].ToString().Split('|');

            MailMessage mail = new MailMessage();
            mail.To.Add(ConfigurationManager.AppSettings["MailTo"].ToString());
            mail.From = new MailAddress(MailFrom[1], MailFrom[0]);
            mail.Sender = new MailAddress("sender@domain.com"); 
            mail.Subject = "Test Subject"; 
            mail.Body = "Test Body";

            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            client.Host = "localhost";
            client.Send(mail);
        }
    }
}