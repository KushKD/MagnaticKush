<%@ Page Title="" Language="C#" MasterPageFile="~/MagnaticMaster.master" AutoEventWireup="true" CodeFile="Projects.aspx.cs" Inherits="Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fixed" style="background-color: #F2F2F2; margin-top: 100px; min-height: 1500px;">




        <section class="container-fixed" style="background-color: #F2F2F2; margin-top: 100px;">
            <div class="row" style="background-color: #23292a; padding: 15px">
                <hgroup class="col-lg-12 col-sm-12 col-xs-12 col-md-12 center-block text-center">
                    <h2 id="designation">Projects and Work</h2>
                </hgroup>
            </div>

            <asp:ListView ID="projectList" runat="server"
                DataKeyNames="ProjectId" GroupItemCount="2">
                <EmptyDataTemplate>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-center center-block">No data was returned.</div>
                        </div>
                    </div>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-center center-block">No data was returned.</div>
                        </div>
                    </div>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <div class="col-lg-2 col-md-2 col-sm-6 col-xs-10" style="background-color: #FFF; margin-left: 10px; margin-right: 10px; margin-top: 10px; margin-bottom: 10px; padding: 15px; border-color: aquamarine; -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: 0 10px 10px 0 #C2C2C2; box-shadow: 0 10px 10px 0 #C2C2C2;">
                        <div class="row" style="background-color: #FFF;">
                            <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                                <a href="ProjectDetails.aspx?productID=<%# Eval("ProjectId")%>">
                                    <img src="/Images/project_thumb/<%# Eval("ProjectImageThumbnail")%>" class="img-thumbnail img-responsive center-block" style="min-height: 140px; min-width: 140px;" /></a>

                                <a href="ProjectDetails.aspx?productID=<%# Eval("ProjectId")%>">
                                    <p class="text-center center-block" style="color: #1765a0; font-size: 26px; padding: 10px; font-family: Death-Star-LI;"><%# Eval("ProjectName")%> </p>
                                </a>

                                <span class="text-center center-block">
                                    <p class="text-center center-block" style="color: #808080; font-size: 18px; padding: 10px; font-family: Death-Star-LI;"><%# Eval("ProjectType")%></p>
                                </span>

                                <%-- <span class="text-center center-block"><%# Eval("LongDescription")%> </span>--%>


                                <span class="text-center center-block">
                                    <p style="color: #1765a0; font-size: 20px; padding: 10px;"><%# Eval("ShortDescription")%></p>
                                </span>
                                <%--<span class="text-center center-block col-lg-12 col-sm-12 col-md-12 col-xs-12 "><p class="text-capitalize text-center text-danger">Created by and Created Date</p></span>
                                <span class="text-center center-block col-lg-3 col-sm-3 col-md-3 col-xs-3 "><p class="text-capitalize text-center text-warning"><%# Eval("CreatedBy")%></p> </span>

                                <span class="text-center center-block col-lg-9 col-sm-9 col-md-9 col-xs-9"><p class="text-capitalize text-center text-warning"><%# Eval("CreatedDate")%></p> </span>
                                --%>
                            </div>
                        </div>

                    </div>
                </ItemTemplate>
                <%-- <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>--%>
            </asp:ListView>
   
    </section>

        </div>
</asp:Content>

