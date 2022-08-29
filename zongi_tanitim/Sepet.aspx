<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="zongi_tanitim.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Panel ID="pnlSepet" runat="server">
    <asp:Label ID="lblSonuc" runat="server"></asp:Label>
    <table style="width: 100%;" border="1">
        <thead>
            <tr>
                <td></td>
                <td>Ürün Adı</td>
                <td>Ürün Detayı</td>
                <td>Fiyat</td>
                
            </tr>
        </thead>
        <asp:ListView ID="lstSepet" runat="server">
            <ItemTemplate>
                <div class="duyuru-wrap">

                    <tr>
                        <td>
                            <img src="images/Urunler/<%#Eval("Resim") %>" style="width: 100px;" />
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

                    </tr>
                </div>
            </ItemTemplate>
        </asp:ListView>
        
    </table>
    <div>
            <table style="width:100%">
                <tr>
                    <td style="width:30%">
                        Adres
                    </td>
                    <td style="width:70%">
                          <asp:TextBox ID="txtAdres" runat="server" Width="600px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>

                </tr>
                <tr>
                  
                </tr>
            </table>
          
        </div><div>
              <asp:Button runat="server" ID="btnSatinAl" CssClass="btnSatinAl" Text="Satın Al" OnClick="btnSatinAl_Click" />
              </div>

      </asp:Panel>

      <asp:Panel ID="pnlSonuc" runat="server">
       Siparişiniz oluşturulmuştur.<br /> Bizi tercih ettiğiniz için teşekkür ederiz.

      </asp:Panel>
</asp:Content>
