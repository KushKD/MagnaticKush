<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="ImagesUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width: 400px; margin-left: 240px; margin-top: 90px;">
                <legend>Example to Upload Multiple Files or images</legend>

                <asp:FileUpload ID="FileUpload1" runat="server" class="multi" />
                <br />
                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </fieldset>
        </div>
    </form>
</body>
</html>
