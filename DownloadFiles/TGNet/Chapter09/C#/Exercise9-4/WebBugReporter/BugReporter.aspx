<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BugReporter.aspx.cs" Inherits="BugReporter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<script runat="server">
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Bug Reporter</title>
   <script language="javascript" type="text/javascript" >
    function on_Submit()
    { 
      if(document.form1.txtTester.value == "")
      {
        alert("You must provide a tester name");
        //stop the sever-side code from running
        return false; 
      }
    } 
    </script>
 
</head>
<body>
 <div>
  <h1>Bug Reporter</h1>
  <p> Please enter the following information to report a bug:</p>
 </div>
 <form id="form1" runat="server">
  <div>
    <asp:TextBox ID="txtTester" runat="server"></asp:TextBox>
    <asp:Label ID="lblTester" runat="server" Text="Testers Name" />
     <br />
    <asp:TextBox ID="txtAppName" runat="server"></asp:TextBox>
    <asp:Label ID="lblAppName" runat="server" Text="Application Name"/>
     <br />
    <asp:TextBox ID="txtBuildNumber" runat="server"></asp:TextBox>
    <asp:Label ID="lblBuildNumber" runat="server" Text="Build Number"/>
     <br />
    <asp:TextBox ID="txtDateReported" runat="server"></asp:TextBox>
    <asp:Label ID="lblDateReported" runat="server" Text="Date Reported"/>
     <br />
    <asp:TextBox ID="txtDescription" runat="server" Height="200px" Width="400px"/>
    <asp:Label ID="lblDescription" runat="server" Text="Description"/>
     <br />
    <asp:Button ID="btnSubmitBug" runat="server" Text="Submit Bug" OnClick="btnSubmitBug_Click" OnClientClick="return on_Submit()"  />
      <asp:Label ID="lblErrorMessage" runat="server" Text="Label" Width="249px"></asp:Label></div>
 </form>
</body>
</html>

