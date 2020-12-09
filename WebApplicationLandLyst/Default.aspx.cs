using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationLandLyst
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// HotelManager.SetGuests(fisteName, lastName, adderss, mail, telefonNo, zipCode);
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ButtonSaveBooking_Click(object sender, EventArgs e)
        {
            HotelManager.SetGuests(fisteName, lastName, adderss, mail, telefonNo, zipCode);
        }
    }
}