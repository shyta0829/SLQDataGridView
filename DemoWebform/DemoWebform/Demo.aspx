<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="DemoWebform.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <title></title>
</head>
<body>
    <div class="container"></div>

    <form id="form1" runat="server">

        <div class="form-group">
            <div class="col-xs-12 table-responsive">


           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
               BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="table table-bordered table-striped table-condensed" DataSourceID="SqlDataSource1">
               <Columns>
                   <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                   <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                   <asp:BoundField DataField="PersonID" HeaderText="PersonID" SortExpression="PersonID" />
                   <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                   <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                   <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                   <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
               </Columns>
               <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
               <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
               <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
               <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
               <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#FFF1D4" />
               <SortedAscendingHeaderStyle BackColor="#B95C30" />
               <SortedDescendingCellStyle BackColor="#F1E5CE" />
               <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>



                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoDBConnectionString %>" SelectCommand="SELECT * FROM [PersonAddressView]"></asp:SqlDataSource>



            </div>
        </div>
        
    </form>
</body>
</html>
