<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blank.aspx.cs" Inherits="FOA_Code.Blank" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Session = Staff ID: 
            <asp:TextBox ID="txtStaffID" runat="server" Enabled="false"/> <br /><br />

            Application = Number of Visitor: 
            <asp:TextBox ID="txtNumVisitor" runat="server" Enabled="false"/> <br /><br />

            Query String <br />
            <asp:TextBox ID="txtStaffIDQuery" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtDepartmentQuery" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtFromQuery" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtToQuery" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtApplicationQuery" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtTypeQuery" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtSupervisorNameQuery" runat="server" Enabled="false"/> <br /><br />

            Cookie <br />
            <asp:TextBox ID="txtStaffIDCookie" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtDepartmentCookie" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtFromCookie" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtToCookie" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtApplicationCookie" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtTypeCookie" runat="server" Enabled="false"/> <br />
            <asp:TextBox ID="txtSupervisorNameCookie" runat="server" Enabled="false"/> <br />
        </div>
    </form>
</body>
</html>
