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
        protected string yesOrNo = null;
        protected string usrServices = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            LabelDropDownServices.Visible = false;
            DropDownServices.Visible = false;
        }


        protected void ButtonSaveBooking_Click(object sender, EventArgs e)
        {
            #region SetGuests with variabler (OUT COMMENTE)
            //string fisteName = TextBoxFistName.Text;
            //string lastName = TextBoxLastName.Text;
            //string adderss = "JVej no. 8";
            //string mail = TextBoxMail.Text;
            //int telefonNo = Convert.ToInt32(TextBoxPhoneNo.Text);
            //int zipCode = 4800;
            //HotelManager.SetGuests(fisteName, lastName, adderss, mail, telefonNo, zipCode);
            #endregion


            DateTime ArrivalDate = DateTime.Parse(TextBoxArrivalDate.Text);
            DateTime levingDate = DateTime.Parse(TextBoxLevingDate.Text);

            int usrRoomChoose = int.Parse(TextBoxRoompicking.Text);

            

            #region SetBooking
            DalManager.SetBookings(ArrivalDate, levingDate, 1, usrRoomChoose); // manglier noget til vælge brugene
            #endregion

            #region TotalAmount
            TotalAmount totalAmount = new TotalAmount();
            LabelPrice.Text = totalAmount.Percentage(ArrivalDate, levingDate, usrRoomChoose).ToString();
            #endregion
        }

        protected void CalendarArrivalDate_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxArrivalDate.Text = CalendarArrivalDate.SelectedDate.Date.ToString("yyyy-MM-dd");
        }

        protected void CalendarLevingDate_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxLevingDate.Text = CalendarLevingDate.SelectedDate.Date.ToString("yyyy-MM-dd");
        }


        /// <summary>
        /// this button shows all the rooms the user can reserve
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ButtonCheckRooms_Click(object sender, EventArgs e)
        {
            DateTime ArrivalDate = DateTime.Parse(TextBoxArrivalDate.Text);
            DateTime levingDate = DateTime.Parse(TextBoxLevingDate.Text);

            List<Room> rooms = HotelManager.GetRooms(yesOrNo, usrServices, ArrivalDate, levingDate);

            GridViewRoomNo.DataSource = rooms;
            GridViewRoomNo.DataBind();
        }

        protected void RadioButtonYes_CheckedChanged(object sender, EventArgs e)
        {
            LabelDropDownServices.Visible = true;
            DropDownServices.Visible = true;
            yesOrNo = "ja";
            usrServices = DropDownServices.Text;
        }

        protected void RadioButtonNo_CheckedChanged(object sender, EventArgs e)
        {
            LabelDropDownServices.Visible = false;
            DropDownServices.Visible = false;
            yesOrNo = "nej";
            usrServices = "";
        }
    }
}