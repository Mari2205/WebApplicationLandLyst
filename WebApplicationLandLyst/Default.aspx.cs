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
            string fisteName = TextBoxFistName.Text;
            string lastName = TextBoxLastName.Text;
            string adderss = "JVej no. 8";
            string mail = TextBoxMail.Text;
            int telefonNo = Convert.ToInt32(TextBoxPhoneNo.Text);
            int zipCode = 4800;
            HotelManager.SetGuests(fisteName, lastName, adderss, mail, telefonNo, zipCode);


            DateTime usrADate = Convert.ToDateTime(TextBoxArrivalDate.Text);
            DateTime usrLDate = Convert.ToDateTime(TextBoxLevingDate.Text);

            List<Room> rooms = HotelManager.GetRooms("nej", "", usrADate, usrLDate);

            Console.WriteLine("Room No | Price");
            foreach (Room item in rooms)
            {
                ListBox1.Items.Add(item);
            }

        }

        protected void CalendarArrivalDate_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxArrivalDate.Text = CalendarArrivalDate.SelectedDate.ToString();
        }

        protected void CalendarLevingDate_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxLevingDate.Text = CalendarLevingDate.SelectedDate.ToString();
        }
    }
}