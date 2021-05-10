<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="FOA_Code.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        Staff ID
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:TextBox ID="txtStaffID" runat="server" Enabled="false" Text="S0001"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Department
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlDepartment" runat="server">
                            <asp:ListItem>FOCS</asp:ListItem>
                            <asp:ListItem>FOFB</asp:ListItem>
                            <asp:ListItem>FOIT</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Leave Duration (From)
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="imgBtnCalendarFrom" runat="server" ImageUrl="~/imgCalendar.png" ImageAlign="AbsBottom" OnClick="imgBtnCalendarFrom_Click"/>
                        <asp:Calendar ID="calLeaveDurationFrom" runat="server" BackColor="White" BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" CellPadding="4" DayNameFormat="Shortest" OnSelectionChanged="calLeaveDurationFrom_SelectionChanged">
                            <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>
                        Leave Duration (To)
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:TextBox ID="txtToDate" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="imgBtnCalendarTo" runat="server" ImageUrl="~/imgCalendar.png" ImageAlign="AbsBottom" OnClick="imgBtnCalendarTo_Click"/>
                        <asp:Calendar ID="calLeaveDurationTo" runat="server" BackColor="White" BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" CellPadding="4" DayNameFormat="Shortest" OnSelectionChanged="calLeaveDurationTo_SelectionChanged">
                            <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>
                        Application
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblApplication" runat="server">
                            <asp:ListItem>Full Day</asp:ListItem>
                            <asp:ListItem>Half Day</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Type
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblType" runat="server">
                            <asp:ListItem>Leave during Term Time</asp:ListItem>
                            <asp:ListItem>Annual Leave</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Immediate Supervisor Name
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:TextBox ID="txtSupervisorName" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
