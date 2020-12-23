<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="Phone_finder.Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Page Content -->
    <div class="container">

        <div class="row">


            <div class="col-lg-8">
                <hr>


                <div class="container top-margin-20">
                    <div class="row">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="col-md-offset-3 col-md-6 padding-all-20">
                                    <asp:Image Width="300px" Height="300px" ID="image1" CssClass="img-responsive img-rounded" ImageUrl='<%# "data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("phone_image")) %>' runat="server" />

                                    <div class="row">
                                        <div class="col-md-12">
                                            Model :
                                <asp:Label Text='<%#Eval("phone_model") %>' ID="lblModel" runat="server" />
                                        </div>
                                        <div class="col-md-12">
                                            IMEI :
                                <asp:Label Text='<%#Eval("imei_number") %>' ID="lblImei" runat="server" />
                                        </div>
                                        <div class="col-md-12">
                                            Address :
                                <asp:Label Text='<%#Eval("block_number") %>' ID="lblBlock" runat="server" />
                                            block,
                                <asp:Label Text='<%#Eval("road_number") %>' ID="lblRoad" runat="server" />
                                            number road,
                                <asp:Label Text='<%#Eval("area") %>' ID="lblArea" runat="server" />
                                        </div>
                                        <div class="col-md-12">
                                            Contact :
                                <asp:Label Text='<%#Eval("contact_number") %>' ID="lblContact" runat="server" />
                                        </div>
                                        <div class="col-md-12">
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>


                <hr>

                <!-- Comments Form -->
                <div class="col-md-offset-5 card my-4">
                    <h5 class="card-header">Leave a Comment:</h5>
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <asp:TextBox ID="txtBoxCmnt" CssClass="form-control" Rows="3" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxCmnt" ErrorMessage="Comment field is required !"></asp:RequiredFieldValidator>
                                &nbsp;
                            </div>
                            <asp:Button ID="btnCmnt" CssClass="btn btn-primary" OnClick="btnCmnt_Click" runat="server" Text="Submit"  />
                        </form>
                    </div>
                </div>

                <!-- Comment -->

                <div class="container">
                    <div class="row">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <div class="col-md-offset-3 col-md-9 padding-all-20">
                                    <div class="media mb-4">
                                        
                                        <div class="media-body">
                                            <h5 class="mt-0">
                                                <%--<asp:Label ID="lblName" runat="server" Text='<%#Eval("first_name") %>'></asp:Label>--%>
                                                <%#Eval("first_name") %>, <%#Eval("email") %>
                                            </h5>
                                            <%#Eval("comment_value") %>
<%--                                            <asp:Label ID="lblCmnt" CssClass="form-control label" runat="server" Text='<%#Eval("comment_value") %>'></asp:Label>--%>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

            </div>


        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
</asp:Content>
