<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Phone_finder._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div class="row top-margin-20">
            <div class="col-md-3">
           
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="inputSearch" runat="server" CssClass="form-control form-control-lg center-block"></asp:TextBox>
                
            </div>
             <div class="col-md-2">
                 <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-default" Text="Search" OnClick="btnSearch_Click" />
             </div>
            <div class="col-md-3">
            
            </div>
        </div>
    </div>
    <%--<div class="container">
        <div class="row">
            
            <div class="input-group col-md-3">
                <input type="text" class="form-control form-control-lg" name="search" placeholder="Search" />
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit">
                        <i class="glyphicon glyphicon-search"></i>Search
                    </button>
                </div>
            </div>
          </div>
    </div>--%>



    <div class="container top-margin-20">
        <div class="row">
            <div runat="server" id="RecentpostDiv">
                <h3>Recent post : </h3>
                    </div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col-md-3 padding-all-20">
                        <asp:Image Width="320px" Height="250px" ID="image1" CssClass="img-responsive img-rounded" ImageUrl='<%# "data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("phone_image")) %>' runat="server" />

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
                                <%--<asp:Button  ID="btnComment" runat="server" OnClick="btnComment_Click"  CommandArgument='<%#Eval("phone_id") %>' CssClass="btn btn-primary center-block" Text="Comment" />--%>
                            
                                <asp:LinkButton ID="lbtn" runat="server" OnClick="lbtn_Click" CommandArgument='<%#Eval("phone_id") %>' CssClass="btn btn-primary center-block">Comment</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <h1 ID="h4resultnotfound" runat="server"><asp:Label ID="lblResultnotFound" runat="server" CssClass="control-label text-danger"></asp:Label></h1>

<%--    <script>
        $(function () {
            $('.row').matchHeight();
        });
    </script>--%>


</asp:Content>
