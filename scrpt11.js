
var element = document.getElementById("login");
element.style.display = "none";
document.getElementById("defaultOpen").click();

function login_show(pageName) {
    let i, tabcontent;
    tabcontent = document.getElementsByClassName("log_in");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
  
    console.log(pageName);
    document.getElementById(pageName).style.display = "block";
}



function login(pageName){
  let i, tabcontent;
  tabcontent = document.getElementsByClassName("Content");
  for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
  if(pageName=="home"){
    var element = document.getElementById("paraf2");
    element.style.display = "none"; 
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onload = function() {
       let rectext=this.response.split("~");
       document.getElementById("heading").innerHTML = rectext[0];
       document.getElementById("paraf1").innerHTML =rectext[1];
       document.getElementById("paraf2").innerHTML = rectext[2];
     } 
    xmlhttp.open("POST", "read_txt.php");
    xmlhttp.send();
    
  }
    
  if(pageName=="user_page"){
      const xmlhttp = new XMLHttpRequest();
      xmlhttp.onload = function() {
         let rectext=this.response.split("~");
         console.log(rectext[0]);
         document.getElementById("heading1").innerHTML = rectext[0];
         document.getElementById("paraf11").innerHTML =rectext[1];
         document.getElementById("paraf21").innerHTML = rectext[2];
       } 
      xmlhttp.open("POST", "read_txt.php");
      xmlhttp.send();
      alert("u log in sucessfully");
      
  }
      console.log(pageName);
      document.getElementById(pageName).style.display = "block";

}

function login_in(pageName){
  let i, tabcontent;
  let username,password,all,type_of_user;
  if (pageName=="admin_page") {
    type_of_user="admin";
    console.log(type_of_user);
  }
  else{
    if (pageName=="user_page"){
    type_of_user="user";
    }
  }
  const xmlhttp = new XMLHttpRequest();
  tabcontent = document.getElementsByClassName("Content");
  username=document.getElementById("user").value+" ";
  password= document.getElementById("pass").value+" ";
  all=username+password+type_of_user;
  xmlhttp.open("GET", "verify_ident.php?q="+all,true);
  xmlhttp.send();
  xmlhttp.onload = function() {
  
    
    if (this.response=="admin"){
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      
      
      document.getElementById(pageName).style.display = "block";
      
    }
    if (this.response=="user"){
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      
      
      document.getElementById(pageName).style.display = "block";
      login(pageName);
    }
  }
}


function create_account(){
  const xmlhttp = new XMLHttpRequest();
  let firstname, lastname, username, password, email,all,type_of_user;
  username=document.getElementById("username").value+" ";
  password= document.getElementById("password").value+" ";
  firstname=document.getElementById("firstname").value+" ";
  lastname= document.getElementById("lastname").value+" ";
  email= document.getElementById("email").value+" ";
  type_of_user="user";
  all=username+password+firstname+lastname+email+type_of_user;
  xmlhttp.open("GET", "reg_new_user.php?q="+all,true);
  xmlhttp.send();
  xmlhttp.onload = function(){
  document.getElementById("mos").innerHTML=this.response;}
}