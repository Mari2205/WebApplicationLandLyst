<%@ Page Title="Booking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationLandLyst._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	
	<div id="Guests" style="height: 79px; background-color:#DCDCDC;">
		<div id ="Name" style="position : relative; left: 0px">
			<div style ="position : absolute; left: 0px">
				<asp:Label ID="LabelFistName" runat="server" Text="Forenavn"/>
				<br />
				<asp:TextBox ID="TextBoxFistName" runat="server"/>
			</div>
			<div style ="position : absolute; left: 280px">
                <asp:Label ID="LabelLastName" runat="server" Text="Efternavn"></asp:Label>
				<br />
                <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
			</div>
		</div> <%-- Name end--%>
		<br />
		<br />
        <br />
        <div Id ="ContactInformation" style ="position : relative; ">
			<div style ="position : absolute; left: 0px;">
				<asp:Label ID="LabelMail" runat="server" Text="E-mail"></asp:Label>
				<br />
				<asp:TextBox ID="TextBoxMail" runat="server"></asp:TextBox>
			</div> 
			<div style="position : absolute; left: 280px;">
				<asp:Label ID="LabelPhoneNo" runat="server" Text="Telefon number"></asp:Label>
				<br />
				<asp:TextBox ID="TextBoxPhoneNo" runat="server"></asp:TextBox>
			</div>
        </div><%--ContactInformation end--%>
		<br />
        <br/>
		<br/>
		<div>
            <asp:Label ID="LabelGuestsId" runat="server" Text="you´re guest ID "></asp:Label>
			<br />
            <asp:TextBox ID="TextBoxGuestsId" runat="server"></asp:TextBox>
		</div>
		<br />
        <div>
            <asp:Button ID="ButtonSaveGuest" runat="server" Text="Oprat Bruger" OnClick="ButtonSaveGuest_Click" Width="125px" />
        </div>
	</div><%-- Guests end--%>
	<br />
	<br />
	<br />
	<br />
	<div id="Bookring" style="height: 800px;">
		<div id="Calender" style="position: relative; top: 125px; left: 0px; margin-bottom: 55px; height: 238px; width: 1270px;">
			<div style="position: absolute; left: 0px; top: 3px;">
				<asp:Calendar ID="CalendarArrivalDate" runat="server" BackColor="Black" BorderColor="Black" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="White" Height="110px" NextPrevFormat="ShortMonth" TitleFormat="Month" Width="245px" OnSelectionChanged="CalendarArrivalDate_SelectionChanged">
					<DayHeaderStyle BackColor="WhiteSmoke" Font-Bold="True" Font-Size="7pt" ForeColor="Black" Height="10pt"/>
					<DayStyle Width="14%"/>
					<NextPrevStyle Font-Size="8pt" ForeColor="White"/>
					<OtherMonthDayStyle ForeColor="#999999"/>
					<SelectedDayStyle BackColor="#CC3333" ForeColor="White"/>
					<SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%"/>
					<TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt"/>
				</asp:Calendar>
                <asp:TextBox ID="TextBoxArrivalDate" runat="server"></asp:TextBox>

			</div>
			<div style="position: absolute;  left : 280px; top: 4px;">
				<asp:Calendar ID="CalendarLevingDate" runat="server" BackColor="Black" BorderColor="Black" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="White" Height="110px" NextPrevFormat="ShortMonth" TitleFormat="Month" Width="245px" OnSelectionChanged="CalendarLevingDate_SelectionChanged">
					<DayHeaderStyle BackColor="WhiteSmoke" Font-Bold="True" Font-Size="7pt" ForeColor="Black" Height="10pt"/>
					<DayStyle Width="14%"/>
					<NextPrevStyle Font-Size="8pt" ForeColor="White"/>
					<OtherMonthDayStyle ForeColor="#999999"/>
					<SelectedDayStyle BackColor="#CC3333" ForeColor="White"/>
					<SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%"/>
					<TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt"/>
				</asp:Calendar>
                <asp:TextBox ID="TextBoxLevingDate" runat="server"></asp:TextBox>
			</div>
		  </div> <%-- Calendar end--%>
        <br />
        <br />
        <br />
			<div>
				<asp:Label ID="LabelBookingNo" runat="server" Text="BookingNo" />
				<asp:TextBox ID="TextBoxBookingNo" runat="server"/>
			</div>
		<br />
		<div>
            <asp:Label ID="LabelYesAndNo" runat="server" Text="vil vil du have en særlig service: "></asp:Label>
            <asp:Label ID="LabelYes" runat="server" Text="Ja "></asp:Label>
            <asp:RadioButton ID="RadioButtonYes" runat="server" AutoPostBack="True" GroupName="yesAndNoGroup" OnCheckedChanged="RadioButtonYes_CheckedChanged" />
            <asp:Label ID="LabelNo" runat="server" Text="Nej "></asp:Label>
			<asp:RadioButton ID="RadioButtonNo" runat="server" AutoPostBack="True" GroupName="yesAndNoGroup" OnCheckedChanged="RadioButtonNo_CheckedChanged" />
		</div>
        <br/>
		<div>
            <asp:Label ID="LabelDropDownServices" runat="server" Text="Services"></asp:Label>
			<asp:DropDownList ID="DropDownServices" runat="server" Height="30px" Width="250px" DataSourceID="SqlDataSourceDB" DataTextField="ServiceName" DataValueField="ServiceName">
            </asp:DropDownList>
		    <asp:SqlDataSource ID="SqlDataSourceDB" runat="server" ConnectionString="<%$ ConnectionStrings:LandLystDB %>" SelectCommand="SELECT * FROM [HotelServices]"></asp:SqlDataSource>
		    <br />
		</div>
		<div id ="GridView" style = "width: 224px; height: 180px; overflow: scroll; scrollbar-arrow-color:floralwhite; scrollbar-base-color:floralwhite; background-color:#DCDCDC">
        <asp:GridView ID="GridViewRoomNo" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
		</div> <%--Gridview end--%>
        <br />
        <br/>
		<div ID ="usrRoomNo">
            <asp:Label ID="LabelRoomPicking" runat="server" Text="vælg et værelse "></asp:Label>
            <asp:TextBox ID="TextBoxRoompicking" runat="server"></asp:TextBox>
		</div>
        <br/>
		<div ID ="PriceLabels">
            <asp:Label ID="LabelTextBeforePrice" runat="server" Text="Den samlet price er : "></asp:Label>
            <asp:Label ID="LabelPrice" runat="server" Text=""></asp:Label>
		</div>
        <br/>
		<br/>
		<div>
            <asp:Button ID="ButtonCheckRooms" runat="server" Text="Søg på værlser" OnClick="ButtonCheckRooms_Click" />
			<asp:Button ID="ButtonSaveBooking" runat="server" Text="Foretage reservation" OnClick="ButtonSaveBooking_Click" />
		</div>
	  </div> <%--Booking end--%>
</asp:Content>
