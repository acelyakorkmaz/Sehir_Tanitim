<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="alisveris.aspx.cs" Inherits="zongi_tanitim.alisveris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;" border="1">
        <thead>
            <tr>
                <td></td>
                <td>Ürün Adı</td>
                <td>Ürün Detayı</td>
                <td>Fiyat</td>
                <td></td>
            </tr>
        </thead>
        <asp:ListView ID="lstUrun" runat="server">
            <ItemTemplate>
                <div class="duyuru-wrap">

                    <tr >
                        <td>
                         <img src="images/Urunler/<%#Eval("Resim") %>" style="width:100px;"/>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("UrunAdi") %>'></asp:Label> 
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("UrunDetayi") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("Fiyat") %>'></asp:Label>
                        </td>
                        <td>
                            <a href="alisverisdetay.aspx?id=<%#Eval("ID") %>">Detay</a> <!--alışveriş detay her ürün için ayrı sayfa-->
                        </td>
                    </tr>




                </div>
            </ItemTemplate>
        </asp:ListView>
    </table>
</asp:Content>
