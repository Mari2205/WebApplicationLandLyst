﻿<%@ Page Title="Booking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationLandLyst._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	
	<div id="Guests" style="height: 79px">
		<div id ="Name" style="position : relative; top: 30px; left: 0px; height: 69px;">
			<div style ="position : absolute; left: 0px">
				<asp:Label ID="LabelFistName" runat="server" Text="Forenavn"/>
				<asp:TextBox ID="TextBoxFistName" runat="server"/>
			</div>
			<div style ="position : absolute; left: 280px">
                <asp:Label ID="LabelLastName" runat="server" Text="Efternavn"></asp:Label>
                <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
			</div>
		</div>

        <div style ="position : relative">
			<div style ="position : absolute; left: 0px; top: 2px; height: 25px; width: 169px;">
				<asp:Label ID="LabelMail" runat="server" Text="E-mail"></asp:Label>
				<asp:TextBox ID="TextBoxMail" runat="server"></asp:TextBox>
			</div>
			<div style="position : absolute; left: 280px; height: 31px">
				<asp:Label ID="LabelPhoneNo" runat="server" Text="Telefon number"></asp:Label>
				<asp:TextBox ID="TextBoxPhoneNo" runat="server"></asp:TextBox>

			</div>
        </div>
	</div>
	<div id="Bookring" style="height: 900px">
		<br />
		<div id="Calender" style="position: relative; top: 17px; left: 2px; margin-bottom: 55px; height: 238px; width: 1270px;">
			<div style="position: absolute; left: 0px">
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
		</div>
		<div>
			<div>
				<asp:Label ID="LabelBookingNo" runat="server" Text="BookingNo" />
				<asp:TextBox ID="TextBoxBookingNo" runat="server"/>
			</div>
		</div>
		<br />
		<div>
            <asp:Label ID="LabelDropDownServices" runat="server" Text="Services"></asp:Label>
			<asp:DropDownList ID="DropDownServices" runat="server" Height="22px" Width="156px">
				<asp:ListItem>Vælg en service</asp:ListItem>
                <asp:ListItem>Altan</asp:ListItem>
                <asp:ListItem>Doubletseng</asp:ListItem>
                <asp:ListItem>2 enkeltsenge</asp:ListItem>
                <asp:ListItem>Badekar</asp:ListItem>
                <asp:ListItem>Jacuzzi</asp:ListItem>
                <asp:ListItem>Eget køkken</asp:ListItem>
            </asp:DropDownList>
		</div>
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
        <br/>
		<div>
			<asp:Button ID="ButtonSaveBooking" runat="server" Text="Foretage reservation" OnClick="ButtonSaveBooking_Click" />
		</div>

	</div>
</asp:Content>
