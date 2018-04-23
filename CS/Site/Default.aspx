<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="PopupControl_BringToFrontSample" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v9.1" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dxpc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    <script type="text/javascript">
        function BringWindow1ToFront() {
            popupControl1.BringToFront();
        }
        function BringWindow2ToFront() {
            popupControl2.BringToFront();
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td width="250px">
                        <dxpc:ASPxPopupControl ID="pc1" ClientInstanceName="popupControl1" runat="server" 
                            HeaderText="Window1" ShowOnPageLoad="True" Top="10" Left="10" CloseAction="CloseButton">
                            <ContentCollection>
                                <dxpc:PopupControlContentControl runat="server" />
                            </ContentCollection>
                        </dxpc:ASPxPopupControl>
                        <dxpc:ASPxPopupControl ID="pc2" ClientInstanceName="popupControl2" runat="server" 
                            HeaderText="Window2" ShowOnPageLoad="True" Top="20" Left="20" CloseAction="CloseButton">
                            <ContentCollection>
                                <dxpc:PopupControlContentControl runat="server" />
                            </ContentCollection>
                        </dxpc:ASPxPopupControl></td>
                    <td valign="top">
                        <dxe:ASPxButton ID="btn1" runat="server" Text="Window1 to front" AutoPostBack="False">
                            <ClientSideEvents Click="BringWindow1ToFront" />
                        </dxe:ASPxButton></td>
                    <td valign="top">
                        <dxe:ASPxButton ID="btn2" runat="server" Text="Window2 to front" AutoPostBack="False">
                            <ClientSideEvents Click="BringWindow2ToFront" />
                        </dxe:ASPxButton></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
