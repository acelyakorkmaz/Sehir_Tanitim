<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="alisverisdetay.aspx.cs" Inherits="zongi_tanitim.alisverisdetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblSonuc" runat="server"></asp:Label>
    <asp:ListView ID="lstUrun" runat="server"  >
        <ItemTemplate>
            <div class="duyuru-wrap">


                <table style="width: 100%;">
                    <tr style="width: 30%;">
                        <td>
                            <img src="images/Urunler/<%#Eval("Resim") %>" style="width: 100px;" />
                        </td>
                        <td>
                            <table>
                               
                                  <tr>
                                    <td>
                                        Ürün Adı
                                    </td>
                                     <td>
                                      <asp:Label ID="Label1" runat="server" Text='<%#Eval("UrunAdi") %>'></asp:Label>
                                    </td>
                                </tr>
                                  <tr>
                                    <td>
                                        Ürün Detayı
                                    </td>
                                     <td>
                                     <asp:Label ID="Label5" runat="server" Text='<%#Eval("UrunDetayi") %>'></asp:Label>
                                    </td>
                                </tr>
                                  <tr>
                                    <td>
                                        Fiyat
                                    </td>
                                     <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("Fiyat") %>'></asp:Label>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                      
                                    </td>
                                     <td>
                                      <asp:Button runat="server" Text="Sepete Ekle" ID="SepeteEkle" CssClass="btnSepeteEkle" OnClick="SepeteEkle_Click"/>
                                    </td>
                                </tr>
                            </table>

                        </td>
                    </tr>
                </table>



                

                

                




            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
