<%@ Page Language="C#" AutoEventWireup="true" CodeFile="temp.aspx.cs" Inherits="temp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function DeleteConfirm() {
            var Ans = confirm("Do you want to Delete Selected Employee Record?");
            if (Ans) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
    <style type="text/css">
        body{
            background-color:wheat;
        }
    </style>
     <link rel="stylesheet" href="Stylesh/Main_home.css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkDel" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="EmpId" HeaderText="Emp Id" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="City" HeaderText="City" />
            </Columns>
            <HeaderStyle BackColor="#663300" ForeColor="#ffffff" CssClass="grid_header" />
            <RowStyle  CssClass="grid_data" />
        </asp:GridView>
        <br />
        <asp:Button ID="btnDeleteRecord" runat="server" BackColor="#E7CEB6" Height="32px" OnClick="btnDeleteRecord_Click" Text="Delete" Width="64px" />
        <br />
    </div>
    </form>
</body>
</html>

