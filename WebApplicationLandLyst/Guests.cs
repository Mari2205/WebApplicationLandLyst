using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplicationLandLyst
{
    //GuestsID, ForeName, LastName, Address, Email, TelephoneNo, ZipCode
    public class Guests
    {
        public int GuestsID { get; set; }
        public string ForeName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public int TelefonNo { get; set; }
        public int ZipCode { get; set; }
    }
}
