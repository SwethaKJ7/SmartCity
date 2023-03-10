<%-- 
    Document   : UploadAction
    Created on : 20 Jan, 2018, 11:20:40 AM
    Author     : ALAN
--%>
<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
            
    <body>
        <%
           
             FileItem f_item=null;
             File savedFile=null;
             
       String field_name="";
       String fn="",pf="";
       String file_name="";


String field[] = new String[20];
String value[] = new String[20];

//checking if request cotains multipart data
boolean isMultipart=ServletFileUpload.isMultipartContent(request);

if(isMultipart)
{
   

    FileItemFactory factory=new DiskFileItemFactory();
    ServletFileUpload upload=new ServletFileUpload(factory);

    //declaring a list of form fields
    List items_list=null;

    //assigning fields to list 'items_list'
    try
    {
    items_list=upload.parseRequest(request);
    }
    catch(FileUploadException ex)
    {
        out.println(ex);
    }

          //declaring iterator
   Iterator itr=items_list.iterator();
    int k=0;
    //iterating through the list 'items_list'
    while(itr.hasNext())
    {
       
        //typecasting next element in items_list as fileitem
        f_item=(FileItem)itr.next();

        //checking if 'f_item' contains a formfield(common controls like textbox,dropdown,radio buttonetc)
       if(f_item.isFormField())
        {
          
            //getting fieldname and value
            field[k]=f_item.getFieldName();
            value[k]=f_item.getString();
                
                k++;
        }
       else
       {
		   
		   
            //f_item=(FileItem)itr.next();
            
           file_name=f_item.getName();
           field_name=f_item.getFieldName();
           if(field_name.equals("photo"))
           {
           String ext=file_name.substring(file_name.lastIndexOf("."));
            //setting path to store image
            File proj_path=new File(config.getServletContext().getRealPath("/"));
            String file_path=proj_path.getParentFile().getParentFile().getPath()+"\\Web\\img\\";
            Random r=new Random();
             int r_num=r.nextInt(1111)+999;
             
            fn="Photo_"+r_num+ext;
            //creating a file object
            savedFile=new File(file_path+fn);
            try
            {
                //writing the file object
                f_item.write(savedFile);               
                
            }
            catch(Exception ex)
            {
                out.println(ex);
            }
            }
           
               
//           
//           if(field_name.equals("fileproof"))
//           {
//           String ext=file_name.substring(file_name.lastIndexOf("."));
//            //setting path to store image
//            File proj_path=new File(config.getServletContext().getRealPath("/"));
//            String file_path=proj_path.getParentFile().getParentFile().getPath()+"\\Web\\Shop\\Proof\\";
//            Random r=new Random();
//             int r_num=r.nextInt(1111)+999;
//             
//            pf="Proof_"+r_num+ext;
//            //creating a file object
//            savedFile=new File(file_path+pf);
//            try
//            {
//                //writing the file object
//                f_item.write(savedFile);               
//                
//            }
//            catch(Exception ex)
//            {
//                out.println(ex);
//            }
//            }
           
       }
           
           }
    //Strinh str1="insert into tbl_user ()";
     
  String str1="insert into location_details(name,address,contact,category,link,image,status) values('" + value[0] + "','" + value[1] + "','" + value[2] + "','" + value[3] + "','" + value[4] + "','" + fn + "','Added')";
  //String str1="insert into tbl_admin(admin_name,admin_uname,admin_paswd,admin_photo,admin_phno,admin_addrs,admin_email,admin_dob,admin_status) values('ab','cd','ef','Photo_1611.png','9539922012','aaddrs','alex@gmail.com','2022-03-25','0')";
   out.println(str1);
   
    boolean status=obj.insert(str1);
    out.print(status);
   
    
    if(status==true)
    {
      %> 
       <script type="text/javascript">
            alert("Upload Successfully..Please Wait for Admin Confirmation");
            setTimeout(function(){window.location.href='loc_shw.jsp'},40);
        </script>
     <%
    }
     }

    

        %>
    </body>
</html>


