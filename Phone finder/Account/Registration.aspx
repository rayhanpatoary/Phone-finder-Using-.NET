<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Phone_finder.Account.Registration" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%:Title %></h2>

    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="container ">
        <div class="row ">

            <h4>Create a new account</h4>
            <hr />



            <div class="col-md-8 ">

                <div class="form-group ">
                    <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" TextMode="SingleLine" placeholdert="first name" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                            CssClass="text-danger" ErrorMessage="The First Name field is required." />
                    </div>
                </div>
            </div>
            <div class="col-md-4">
            </div>
            <div class="col-md-8">


                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label">Last Name</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="LastName" CssClass="form-control" TextMode="SingleLine" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                            CssClass="text-danger" ErrorMessage="The Last Name field is required." />
                    </div>
                </div>


            </div>
            <div class="col-md-4">
            </div>

            <div class="col-md-8">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                            CssClass="text-danger" ErrorMessage="The email field is required." />
                    </div>
                </div>
            </div>
            <div class="col-md-4">
            </div>
            <div class="col-md-8">


                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                            CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
            </div>
            <div class="col-md-4">
            </div>

            <div class="col-md-8">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                    </div>
                </div>
            </div>

            <div class="col-md-4">
            </div>


            <div class="col-md-8">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Address" CssClass="col-md-2 control-label">Address</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="Address" TextMode="SingleLine" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                            CssClass="text-danger" ErrorMessage="The Address field is required." />
                    </div>
                </div>
            </div>
            <div class="col-md-4">
            </div>
            <div class="col-md-8">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Phone" CssClass="col-md-2 control-label">Phone</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="Phone" TextMode="SingleLine" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone"
                            CssClass="text-danger" ErrorMessage="The Phone field is required." />
                    </div>
                </div>
            </div>
            <div class="col-md-4">
            </div>

            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" Text="Register" CssClass="btn btn-success" OnClick="btnRegister" />

                </div>
            </div>
            <div class="col-md-12">
                <asp:Label Text="" ID="lblError" CssClass="label label-danger" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>






