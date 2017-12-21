<%@ page title="Home Page" language="C#" masterpagefile="~/Site.Master" autoeventwireup="true" codebehind="Default.aspx.cs" inherits="windowsauth._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <div class="col-md-4">
            <h2>Logged in user: </h2>
            <h2>
                <asp:Label ID="loggedInUser" runat="server"></asp:Label></h2>
        </div>

        <div class="col-md-6">
            <h2>Connection String:</h2>
            <p>
                Data Source=localhost;Initial Catalog=WTAuthTest;Integrated Security=SSPI;
            </p>
            <p>
                <asp:TextBox ID="connectionString" Text="Data Source=localhost;Initial Catalog=WTAuthTest;Integrated Security=SSPI;" 
                    runat="server" Width="470px"></asp:TextBox>
            </p>
        </div>

        <div class="col-md-6">
            <h2>Results:</h2>
            <p>
                Count from Table1
                <asp:Button Text="Connect" runat="server" ID="connect" OnClick="connect_Click" />
            </p>
            <p>
                <asp:TextBox ID="results" Text="" 
                    runat="server" Width="470px" Height="137px" TextMode="MultiLine"></asp:TextBox>
            </p>
        </div>

    </div>

</asp:Content>
