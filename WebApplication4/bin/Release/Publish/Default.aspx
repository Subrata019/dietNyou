<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" >
        <div  style="text-align:right">
        <img src="~/Images/R2.png" runat="server" height="100" width="200"/>
            
        <p class="lead">dietNyou is your guide to healthy diet.</p></div>
            <div id="myCarousel" class="carousel slide" data-ride="carousel"><p>
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
    <li data-target="#myCarousel" data-slide-to="6"></li>
    <li data-target="#myCarousel" data-slide-to="7"></li>
    <li data-target="#myCarousel" data-slide-to="8"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="~/Images/image1.jpg" runat="server">
    </div>

    <div class="item">
      <img src="~/Images/image2.jpg" runat="server">
    </div>

    <div class="item">
      <img src="~/Images/image3.jpg" runat="server">
    </div>

    <div class="item">
      <img src="~/Images/image4.jpg" runat="server">
    </div>

    <div class="item">
      <img src="~/Images/image5.jpg" runat="server">
    </div>

    <div class="item">
      <img src="~/Images/image6.jpg" runat="server">
    </div>

    <div class="item">
      <img src="~/Images/image7.jpg" runat="server">
    </div>

    <div class="item">
      <img src="~/Images/image8.jpg" runat="server">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        </p>
        <p><a href="info" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Body Mass Index</h2>
            <p>
                Find out if youare healthy, under weight or over weight.
            </p>
            <p>
                <a class="btn btn-default" href="Bmi">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Calorie Consumption</h2>
            <p>
                Find out what your calorie consumption should be according to your goal.
            </p>
            <p>
                <a class="btn btn-default" href="CC">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Healthy Recipes</h2>
            <p>
               get healthy recipes you can try reach your current goal.
            </p>
            <p>
                <a class="btn btn-default" href="Recipe">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
