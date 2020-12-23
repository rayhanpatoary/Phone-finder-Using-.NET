<%@ Page Title="Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="Phone_finder.Post" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row ">
            <div class=" text-center col-md-12">
                <h2>Give Post of Your Lost Phone</h2>
            </div>
            <div class="col-md-12 top-margin-20">
                <div class="row">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-4">
                        <fieldset class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-6">
                                        <asp:RadioButton ID="ownerradio" runat="server" Text="Owner post" TextAlign="Right" CssClass="form-check-input text-info padding-right-3" GroupName="radioBtnPost" />
                                    </div>
                                    <div class="col-md-6">
                                        <asp:RadioButton ID="finderradio" runat="server" Text="Finder post" CssClass="form-check-input text-info" GroupName="radioBtnPost" Font-Bold="True" Font-Names="Arial" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtBoxImei" CssClass="col-md-4 col-md-push-2 control-label text-info">#IMEI</asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server"  ID="txtBoxImei" CssClass="form-control" TextMode="SingleLine" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtBoxImei"
                                    CssClass="text-danger" ErrorMessage="The #IMEI field is required." />
                            </div>
                        </div>
                    </div>
                    <div class="co-md-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtboxModel" CssClass="col-md-4 col-md-push-2 control-label text-info">Model</asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server" ID="txtboxModel" CssClass="form-control" TextMode="SingleLine" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtboxModel"
                                    CssClass="text-danger" ErrorMessage="The #Model field is required." />
                            </div>
                        </div>
                    </div>
                    <div class="co-md-2">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtboxContact" CssClass="col-md-4 col-md-push-2 control-label text-info">Contact</asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server" ID="txtboxContact" CssClass="form-control" TextMode="Phone" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtboxContact"
                                    CssClass="text-danger" ErrorMessage="The contact field is required." />
                            </div>
                        </div>
                    </div>
                    <div class="co-md-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtboxArea" CssClass="col-md-4 col-md-push-2 control-label text-info">Area</asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server" ID="txtboxArea" CssClass="form-control" TextMode="Search" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtboxArea"
                                    CssClass="text-danger" ErrorMessage="The Area field is required." />
                            </div>
                        </div>
                    </div>
                    <div class="co-md-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtboxBlock" CssClass="col-md-4 col-md-push-2 control-label text-info">Block Number</asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server" ID="txtboxBlock" CssClass="form-control" TextMode="Search" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtboxBlock"
                                    CssClass="text-danger" ErrorMessage="The Block Num field is required." />
                            </div>
                        </div>
                    </div>
                    <div class="co-md-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtboxRoad" CssClass="col-md-4 col-md-push-2 control-label text-info">Road Number</asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server" ID="txtboxRoad" CssClass="form-control" TextMode="Search" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtboxRoad"
                                    CssClass="text-danger" ErrorMessage="The Road Number field is required." />
                            </div>
                        </div>
                    </div>
                    <div class="co-md-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtboxPhoto" CssClass="col-md-4 col-md-push-2 control-label text-info">Photo</asp:Label>
                            <div class="col-md-8">



                                <asp:FileUpload ID="txtboxPhoto" runat="server" CssClass="form-control btn btn-primary" Visible="true" />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtboxPhoto" CssClass="text-danger" ErrorMessage="Photo field is required"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>
                    <div class="co-md-2">
                    </div>
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                    <asp:Button ID="btnPost" runat="server" CssClass="btn btn-primary center-block top-margin-20" Text="Post" OnClick="btnPost_Click" />
                </div>
                <div class="col-md-4">
                </div>

            </div>
   <asp:Label ID="lblImageNotSupport" CssClass="label control-label label-danger" runat="server" />

        </div>
    </div>

    <asp:Label Text="" runat="server" />

   <%-- <script type="text/javascript">
        function CreateWaterMark(defaultText, textBoxControl) {
            if (textBoxControl.value.length == 0) {
                textBoxControl.style.color = "gray";
                textBoxControl.value = defaultText;
            }
        }

        function ClearWaterMark(defaultText, textBoxControl) {
            if (textBoxControl.value == defaultText) {
                textBoxControl.style.color = "black";
                textBoxControl.value = "";
            }
        }
    </script>--%>

</asp:Content>
