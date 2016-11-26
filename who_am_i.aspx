<%@ Page Title="" Language="C#" MasterPageFile="~/MagnaticMaster.master" AutoEventWireup="true" CodeFile="who_am_i.aspx.cs" Inherits="who_am_i" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link rel="stylesheet" href="css/styles.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container-fixed" style="background-color:#FFFFFF;height:800px;margin-top:100px;">
       <!-- NAME -->
       <div class="row" style="background-color:#23292a;padding:15px">
           <div class="col-lg-3" > </div> 
           <div class="col-lg-6 text-center center-block" > 
               <div  class="center-block text-center" id="name_div"> Kush Kumar Dhawan </div> 
                 <p  class="center-block text-center" id="designation"> Software Craftsman </p>
  <div class="center-block">
                    <div class="col-lg-3 center-block" id="helplinks" ><a href="#experience"> <span style="color:#FFFFFF">Experience</span></a></div>
                    <div class="col-lg-3 center-block" id="helplinks" style="color:#FFFFFF"><a href="#skills"><span style="color:#FFFFFF">Skills</span></a></div>
                    <div class="col-lg-3 center-block" id="helplinks" style="color:#FFFFFF"><a href="#get_in_touch"><span style="color:#FFFFFF">Get In Touch</span></a></div>
 <div class="col-lg-3 center-block" id="helplinks" style="color:#FFFFFF"><a href="Resume/cv_KUSH_2016.pdf"><span style="color:#FFFFFF">Resume</span></a></div>
               
                </div>

           </div>
            <div class="col-lg-3" > </div>
          
       </div>

       <!-- Name -->

       <!-- Photo and Other Details -->
        <div class="row" style="background-color:#7e8384; padding:15px;" >
          
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
               <a href="who_am_i.aspx" >
            <section  >
                <img class="img-thumbnail  image_me center-block"   src="images/me.jpg" alt="Icon"/>  <%-- title="Who is Magnatic Kush ??"--%>
            </section> <!-- Section 3 -->
                </a> 
          </div>   <!-- Photos -->
           
             <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 center-block text-cetner">
                 <h4 style="color:#000000;font-size:20px;">PROFILE:</h4>
                 <hr />
                 <p style="color:#FFFFFF; font-family:Consolas; font-size:16px;">Competent, adroit &amp; detail-oriented professional with 4 plus years of working experience currently engaged with
Accenture on Aadhaar Project with SITEG  Govt of Himachal Pradesh and played key role in developing key
websites / mobile applications such as HP Parking, HPSSC, etc.
Systematic and organized with quick adaptability to changing trends and processes and possessing exceptional
interpersonal and presentation skills, comprehensive problem detection/ solving abilities and a highly analytical
bent of mind. Multilingual with proficiency in English, Hindi.
Provided technical project management consultancy to clients ensuring internal and external stakeholder
management through effective communication.
Assisted clients in issue identification, tracking, escalation and in time resolution and prepared technical layout
plans for successful completion of various projects.
Ability to work effectively and communicate cross-functionally with all levels of management, root level experts
as well as Business Partners.
 </p>
                 </div>
          
       </div>
        <!-- Experience -->
       <div class="row" id="experience" >

           <img class="img-responsive col-lg-12 col-md-12 col-sm-12 col-xs-12" src="svg/experience.svg" style="min-height:400px;background-color:#dadfe0;" />
       </div>
        <!-- Skills and Charts jquery-plugin-circliful-->
      <div class="row" id="skills" style="background:#FFFFFF;">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 center-block text-center" style="background-color:#ff545454;padding:10px">
              <h2 style="color:#000000; font-family:Cutrims-Regular-LI;  font-size:20px;">Interests</h2>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 center-block" style="padding:10px;">
              <div class="row">
                      <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
                  <div class="col-lg-6 col-md-6 col-xs-6 col-sm-6">
                    <canvas id="canvas1" height="200" width="200"></canvas>
                      </div>
                      <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
              </div>    
              <div class="row" >
                    <div class="col-lg-12 ">
                        <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
                  <div class="col-lg-6 col-md-6 col-xs-6 col-sm-6 ">
                     <p class="text-center center-block" style="color:#000000; font-family:Consolas; font-size:20px;">JAVA </p>
                      </div>
                    <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
               
              </div> 
              </div> 
                  </div>
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 center-block" style="padding:15px;">
               <div class="row">
                    <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
                  <div class="col-lg-6 col-md-6 col-xs-6 col-sl-6 ">
                    <canvas id="canvas2" height="200" width="200"></canvas>
                      </div>
                    <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
              </div>    
              <div class="row" >
                   <div class="col-lg-12 ">
                        <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
                  <div class="col-lg-6 col-md-6 col-xs-6 col-sm-6 ">
                     <p class="text-center center-block" style="color:#000000; font-family:Consolas; font-size:20px;"> C#  </p>
                      </div>
                    <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
               
              </div> 
                  </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 center-block" style="padding:15px;">
                <div class="row">
                     <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 ">
                    <canvas id="canvas3" height="200" width="200"></canvas>
                      </div>
                     <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
              </div>    
              <div class="row" >
                  <div class="col-lg-12 ">
                        <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
                  <div class="col-lg-6 col-md-6 col-xs-6 col-sm-6 ">
                     <p class="text-center center-block" style="color:#000000; font-family:Consolas; font-size:20px;"> HTML/CSS/JavaScript/ASP  </p>
                      </div>
                    <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3"></div>
               
              </div> 
                  </div>
               
           </div>

          <hr />

          <section class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="background-color:#FFFFFF;padding:30px;" >
                <img class="os center-block"  src="svg/operating-systems.svg" alt="Icon"/>
                    <p class="center-block text-capitalize text-center " style="font-family:Cutrims-Regular-LI; color:#000000; font-size:22px;">Operating Systems</p>
                   <p class="text-center center-block " style="color:#000000; font-family:Consolas; font-size:18px;" >Experience coding on all major platforms, including OSX, iOS, Web, Windows, Linux, Unix, Android</p>
            </section> 
          <section class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="background-color:#FFFFFF;padding:30px;">
                <img class="creative center-block"    src="svg/creative-ideas.svg" alt="Icon"/>
                    <p class="center-block text-capitalize text-center" style="font-family:Cutrims-Regular-LI; color:#000000; font-size:22px;">Creative Software</p>
                    <p class="text-center center-block" style="color:#000000; font-family:Consolas; font-size:18px;">Familiar with xCode,Android Studio, Visual Studio, Git, Eclipse, Illustrator CS6, Sublime Text and many more.</p>
            </section>
          <section class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="background-color:#FFFFFF;padding:30px;">
                <img class="languages center-block"   src="svg/languages.svg" alt="Icon"/>
                   <p class="center-block text-capitalize text-center" style="font-family:Cutrims-Regular-LI; color:#000000; font-size:22px;">Languages</p>
                   <p class="text-center center-block" style="color:#000000; font-family:Consolas; font-size:18px;">Very experienced with Java/Android, C#, WCF, Java, C, C++, HTML, CSS, JavaScript, JQuery, SQLite, MsSQL.</p>
            </section> 
         
       </div>
       <!-- Skills and Charts -->

<!-- Get In TOUCH -->
        <div class="row" id="get_in_touch" style="background-color: #7e8384; padding: 15px;">
             <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <a href="who_am_i.aspx">
                    <section>
                        <img class="img-thumbnail  image_me center-block" src="svg/mywatch.svg" alt="Icon" />
                        <%-- title="Who is Magnatic Kush ??"--%>
                    </section>
                    <!-- Section 3 -->
                </a>
            </div>
            <!-- Photos -->

            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 center-block text-cetner">
                <h4 style="color: #FFFFFF; font-size: 20px;">Get In Touch:</h4>
                <hr />
                <p style="color: #FFFFFF; font-family: Consolas; font-size: 18px;">
                   I would love to hear from you! Get in touch with me. I�m located in Shimla Himachal Pradesh, but am looking for positions all over the country. If you are interested in working with me, shoot me an email at kushkumardhawan@gmail.com and I will get back to you. Thanks!
                </p>

                <hr />
                <div class="row" >
                    <div class="col-lg-3">
                        <!-- Twitter -->
                         <a href="https://twitter.com/KushKD">
                        <section>
                            <img class="center-block icons " src="svg/twitter.svg" alt="Icon" />
                        </section>
                    </a>
                    </div>
                    <div class=" col-lg-3 center-block">
                      <!-- Linked IN --> 
                          <a href="https://in.linkedin.com/in/kushkd">
                        <section>
                            <img class=" center-block icons "  src="svg/linkedin.svg" alt="Icon" />
                        </section>
                    </a>

                    </div>
                    <div class="col-lg-3 center-block">
                        <!-- GIT -->
                         <a href="https://github.com/KushKD">
                        <section>
                            <img class="center-block icons "  src="svg/github.svg" alt="Icon" />
                        </section>
                    </a>
                        </div>
                    <div class="col-lg-3 center-block">
                        <!-- Instagram -->
                         <a href="https://www.instagram.com/fourthkush/">
                        <section>
                            <img class="center-block icons"  src="svg/instagram.svg" alt="Icon" />
                        </section>
                    </a>
                        </div>
                </div>
            </div>
        </div>
        <!-- Get In Touch -->
      
   </div>
</asp:Content>














