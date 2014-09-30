<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Excel.aspx.cs" Inherits="Excel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    

        <asp:Panel runat="server" ID="ExpPanel">

            teste antonio de souza<br />

            
            <img src="http://www.upgradesolutions.com.br/wp-content/uploads/2014/06/C-To-Go-300x3001.png" />
            <br /><br /><br /><br /><br />

            <table>
                <tr>
                    <th>Ordem</th>
                    <th>Nome</th>
                </tr>
                <asp:Repeater runat="server" ID="ExpRepeater">
                    <ItemTemplate>
                        <tr>
                            <td><%#Container.ItemIndex %></td>
                            <td><%#Container.DataItem %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </asp:Panel>

    </form>
</body>
</html>
