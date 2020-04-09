﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms.Master" AutoEventWireup="true" CodeBehind="ItemList.aspx.cs" Inherits="RentMyWrox.Admin.ItemList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ItemType="Center" DeleteText="Delete<br/>" SelectText="Full_Edit<br/>" EditText="Quick_Edit<br/>">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:BoundField DataField="ItemNumber" HeaderText="ItemNumber" SortExpression="ItemNumber" />
        <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
        <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
        <asp:BoundField DataField="CheckedOut" HeaderText="CheckedOut" SortExpression="CheckedOut" />
        <asp:BoundField DataField="DueBack" HeaderText="DueBack" SortExpression="DueBack" />
        <asp:BoundField DataField="DateAcquired" HeaderText="DateAcquired" SortExpression="DateAcquired" />
        <asp:CheckBoxField DataField="IsAvailable" HeaderText="IsAvailable" SortExpression="IsAvailable" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RentMyWroxConnectionString1 %>" DeleteCommand="DELETE FROM [Items] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Items] ([Name], [Description], [ItemNumber], [Picture], [Cost], [CheckedOut], [DueBack], [DateAcquired], [IsAvailable]) VALUES (@Name, @Description, @ItemNumber, @Picture, @Cost, @CheckedOut, @DueBack, @DateAcquired, @IsAvailable)" ProviderName="<%$ ConnectionStrings:RentMyWroxConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Name], [Description], [ItemNumber], [Picture], [Cost], [CheckedOut], [DueBack], [DateAcquired], [IsAvailable] FROM [Items]" UpdateCommand="UPDATE [Items] SET [Name] = @Name, [Description] = @Description, [ItemNumber] = @ItemNumber, [Picture] = @Picture, [Cost] = @Cost, [CheckedOut] = @CheckedOut, [DueBack] = @DueBack, [DateAcquired] = @DateAcquired, [IsAvailable] = @IsAvailable WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="ItemNumber" Type="String" />
        <asp:Parameter Name="Picture" Type="String" />
        <asp:Parameter Name="Cost" Type="Double" />
        <asp:Parameter Name="CheckedOut" Type="DateTime" />
        <asp:Parameter Name="DueBack" Type="DateTime" />
        <asp:Parameter Name="DateAcquired" Type="DateTime" />
        <asp:Parameter Name="IsAvailable" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="ItemNumber" Type="String" />
        <asp:Parameter Name="Picture" Type="String" />
        <asp:Parameter Name="Cost" Type="Double" />
        <asp:Parameter Name="CheckedOut" Type="DateTime" />
        <asp:Parameter Name="DueBack" Type="DateTime" />
        <asp:Parameter Name="DateAcquired" Type="DateTime" />
        <asp:Parameter Name="IsAvailable" Type="Boolean" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
