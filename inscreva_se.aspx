<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Principal.Master" AutoEventWireup="true" CodeBehind="inscreva_se.aspx.cs" Inherits="NewsLetterMat.inscreva_se" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img alt="logo" class="auto-style1" src="images/RO_PetYoyo.jpg" /><br />
<br />
<asp:Label ID="intro" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Overline="False" Font-Size="1.5em" Font-Strikeout="False" Text="Notícias de Tecnologia para quem não tem tempo de ler notícias." Width="550px" ForeColor="#333333"></asp:Label>
<br />
<br />
<br />
<asp:Label ID="Label2" runat="server" Text="Junte-se à nossa turma de 77.328 leitores ativos:" ForeColor="#333333"></asp:Label>
<br />
<br />
<asp:TextBox ID="txbEmail" placeholder ="Seu email principal" runat="server" Height="31px" style="margin-top: 0px" Width="263px" OnTextChanged="txbEmail_TextChanged" TextMode="Email"></asp:TextBox>
    <br />
<br />
    <asp:Label ID="Label3" runat="server" ForeColor="#333333" Text="Estou vindo através:"></asp:Label>
    <br />
<asp:DropDownList ID="ddRedeSocial" runat="server" Height="16px" Width="271px" AutoPostBack="True" OnSelectedIndexChanged="ddRedeSocial_SelectedIndexChanged">
    <asp:ListItem>Facebook</asp:ListItem>
    <asp:ListItem>Instagram</asp:ListItem>
    <asp:ListItem>Twitter</asp:ListItem>
    <asp:ListItem>Linkedin</asp:ListItem>
</asp:DropDownList>
<br />
<br />
<asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="True" ForeColor="White" Height="42px" Text="Inscreva-se" Width="263px" OnClick="Button1_Click" />
</asp:Content>
