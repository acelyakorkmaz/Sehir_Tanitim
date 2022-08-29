<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kaydol.aspx.cs" Inherits="zongi_tanitim.Kaydol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KAYDOL</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
         <div class="left-side">
                <div class="kayit"> 
                    <div class="ust">
                        KAYIT OL
                    </div>
                    <div class="alt">
                        <div class="kullanici">
                        <span>Kullanıcı adı</span>
                        <asp:TextBox ID="txtKullaniciAdi" CssClass="textbox" runat="server" > </asp:TextBox>
                         </div>
                        <div class="sifre">
                         <span>Şifre</span>
                        <asp:TextBox ID="txtSifre" CssClass="textbox" runat="server"> </asp:TextBox>
                        </div>
                            <asp:Button ID="btnKayit" CssClass="btnKayit" runat="server" Text="KAYDOL" OnClick="btnKayit_Click"  />

                        <asp:Label ID="lblSonuc"  runat="server" ></asp:Label>
                    </div>
                    </div>
                </div>
       </div>
    </form>
</body>
</html>
