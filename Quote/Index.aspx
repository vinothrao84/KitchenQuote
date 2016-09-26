<%@ Page Title="Kitchen Quote - Main" MasterPageFile="~/Main.Master" Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Quote.Index" %>

<asp:Content ID="Index_Head" ContentPlaceHolderID="Master_head" runat="server">
    <script src="wizard/js/jquery-1.8.2.min.js"></script>
    <script src="wizard/js/bootstrap.min.js"></script>
    <script src="media/json2.js"></script>
    <script src="media/func.js"></script>
    <script src="wizard/dist/jquery.wizard.js"></script>

    <link href="wizard/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link href="wizard/dist/jquery.wizard.css" rel="stylesheet" />

    <style type="text/css">
        .sidebar-nav {
            padding: 9px 0;
        }

        [data-wizard-init] {
            margin: auto;
            width: 800px;
        }

        .rbShape td {
            border: 1px solid green;
            height: 50px;
            width: 200px;
            vertical-align: bottom;
            float: left;
        }
    </style>
</asp:Content>

<asp:Content ID="Index_Content" ContentPlaceHolderID="Master_ContentHolder_Main" runat="server">
    <div class="container-fluid">
        <div data-wizard-init>
            <ul class="steps">
                <li data-step="1">Shape</li>
                <li data-step="2">Measurement</li>
                <li data-step="3">Surface</li>
                <li data-step="4">Cost Estimation</li>
                <li data-step="5">Registration</li>
            </ul>
            <div class="steps-content">
                <div data-step="1">
                    <div style="height: 300px">
                        <h4>Shape</h4>
                        <p>
                            Select your house kitchen shape design
                            <p>
                                <asp:RadioButtonList ID="rbShape" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Text="U" Value="u"></asp:ListItem>
                                    <asp:ListItem Text="Island" Value="island"></asp:ListItem>
                                    <asp:ListItem Text="G" Value="g"></asp:ListItem>
                                    <asp:ListItem Text="Gallary Kitchen" Value="gk"></asp:ListItem>
                                    <asp:ListItem Text="I" Value="i"></asp:ListItem>
                                    <asp:ListItem Text="L" Value="l"></asp:ListItem>
                                </asp:RadioButtonList>
                            </p>
                        </p>
                    </div>
                </div>
                <div data-step="2">
                    <div style="height: 300px">
                        <h4>Measurement</h4>
                        <p>
                            Key in the measurement
                        </p>
                        <div id="divTopMeasurement">
                            Top:
                            <asp:TextBox ID="txtMeasurement_Top" runat="server"></asp:TextBox>
                        </div>
                        <div id="divBottomMeasurement">
                            Bottom:
                            <asp:TextBox ID="txtMeasurement_Bottom" runat="server"></asp:TextBox>
                        </div>
                        <div id="divLeftMeasurement">
                            Left:
                            <asp:TextBox ID="txtMeasurement_Left" runat="server"></asp:TextBox>
                        </div>
                        <div id="divRightMeasurement">
                            Right:
                            <asp:TextBox ID="txtMeasurement_Right" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div data-step="3">
                    <div style="height: 300px">
                        <h4>Surface</h4>
                        <p>
                            Select the surface
                        <p>
                            <asp:RadioButtonList ID="rbSurface" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Galaxy Sense" Value="gs"></asp:ListItem>
                                <asp:ListItem Text="Galaxy" Value="g"></asp:ListItem>
                                <asp:ListItem Text="Grand Crystal" Value="gc"></asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                        </p>
                    </div>
                </div>
                <div data-step="4">
                    <div style="height: 300px">
                        <h4>Cost Estimation</h4>
                        <p>
                            Table below shows an cost estimation based on your kitchen shape, measurement and surface that you've choosen
                        </p>
                    </div>
                </div>
                <div data-step="5">
                    <div style="height: 300px">
                        <h4>Registration</h4>
                        <p>
                            Submit your information and let our crew contact you for further information.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/.fluid-container-->
</asp:Content>
