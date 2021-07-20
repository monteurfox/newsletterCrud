<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Principal.Master" AutoEventWireup="true" CodeBehind="descadastrar.aspx.cs" Inherits="NewsLetterMat.descadastrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="1.3em" Text="Descadastre-se de nossa newsletter:"></asp:Label>
    <br />
    <br />
<br />
<asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
    <AlternatingItemTemplate>
        <span style="background-color: #FFF8DC;">Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        email:
        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
        <br />
        fonte:
        <asp:Label ID="fonteLabel" runat="server" Text='<%# Eval("fonte") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Apagar" />
<br /><br /></span>
    </AlternatingItemTemplate>
    
    <EditItemTemplate>
        <span style="background-color: #008A8C; color: #FFFFFF;">Id:
        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        email:
        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
        <br />
        fonte:
        <asp:TextBox ID="fonteTextBox" runat="server" Text='<%# Bind("fonte") %>' />
        <br />
        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
        <br /><br /></span>
    </EditItemTemplate>
    
    <EmptyDataTemplate>
        <span>No data was returned.</span>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <span style="">email:
        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
        <br />fonte:
        <asp:TextBox ID="fonteTextBox" runat="server" Text='<%# Bind("fonte") %>' />
        <br />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
        <br /><br /></span>
    </InsertItemTemplate>
    
    <ItemTemplate>
        <span style="background-color: #DCDCDC; color: #000000;">Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        email:
        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
        <br />
        fonte:
        <asp:Label ID="fonteLabel" runat="server" Text='<%# Eval("fonte") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Apagar" />
<br /><br /></span>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>

    <SelectedItemTemplate>
        <span style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        email:
        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
        <br />
        fonte:
        <asp:Label ID="fonteLabel" runat="server" Text='<%# Eval("fonte") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Apagar" />
<br /><br /></span>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [dados_usuario] WHERE [Id] = @Id" InsertCommand="INSERT INTO [dados_usuario] ([email], [fonte]) VALUES (@email, @fonte)" SelectCommand="SELECT [Id], [email], [fonte] FROM [dados_usuario]" UpdateCommand="UPDATE [dados_usuario] SET [email] = @email, [fonte] = @fonte WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="fonte" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="fonte" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
