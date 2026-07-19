<%@page import="java.util.Map"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
   
                       
       String event=request.getParameter("submit");
       if(event!=null)
       {
           // Normal Report
            if(event.equals("address List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\address_list.jasper"));
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
       if(event!=null)
       {
           // Normal Report
            if(event.equals("cart List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\Cart_list.jasper"));
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
            
       if(event!=null)
       {
           // Normal Report
            if(event.equals("cart List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\Cart_list.jasper"));
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
       
       if(event!=null)
       {
           // Normal Report
            if(event.equals("feedback list"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\feedback.jasper"));
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
       
       if(event!=null)
       {
           // Normal Report
            if(event.equals("order List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\order_list.jasper"));
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
      
       if(event!=null)
       {
           // Normal Report
            if(event.equals("payment List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\payment_list.jasper"));
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }   if(event!=null)
       {
           // Normal Report
            if(event.equals("product List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\product_list.jasper"));
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
       if(event!=null)
       {
           // Normal Report
            if(event.equals("register List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\register_list.jasper"));
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
       }
       if(event!=null)
       {
           // Normal Report
            if(event.equals("user register List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\user_register.jasper"));
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
       
  }
  
  
  if(event!=null)
  {
	   String date = request.getParameter("date");
      // Normal Report
       if(event.equals("date wise pyment list"))
       {
           Connection cn = null;
           try 
           {
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

           } 
           catch (Exception ex) 
           {
               ex.printStackTrace();
           }

           File reportFile = new File(application.getRealPath("reports\\date_wise_pyment_list.jasper"));
           Map parameters = new HashMap();
           
           parameters.put("date", date);
           
           byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

           response.setContentType("application/pdf"); 
           response.setContentLength(bytes.length);
           ServletOutputStream outStream = response.getOutputStream();
           outStream.write(bytes, 0, bytes.length);
           outStream.flush();
           outStream.close();
                  
      }
       
  }
  
  
  
  
  if(event!=null)
  {
	   String date = request.getParameter("date");
      // Normal Report
       if(event.equals("date wise feedback list"))
       {
           Connection cn = null;
           try 
           {
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

           } 
           catch (Exception ex) 
           {
               ex.printStackTrace();
           }

           File reportFile = new File(application.getRealPath("reports\\date_wise_feedback_list.jasper"));
           Map parameters = new HashMap();
           
           parameters.put("date", date);
           
           byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

           response.setContentType("application/pdf"); 
           response.setContentLength(bytes.length);
           ServletOutputStream outStream = response.getOutputStream();
           outStream.write(bytes, 0, bytes.length);
           outStream.flush();
           outStream.close();
                  
      }
       
  }
  
  
  
  
  
  if(event!=null)
  {
	   String id = request.getParameter("id");
      // Normal Report
       if(event.equals("id wise register list"))
       {
           Connection cn = null;
           try 
           {
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

           } 
           catch (Exception ex) 
           {
               ex.printStackTrace();
           }

           File reportFile = new File(application.getRealPath("reports\\id_wise_register_list.jasper"));
           Map parameters = new HashMap();
           
           parameters.put("id", id);
           
           byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

           response.setContentType("application/pdf"); 
           response.setContentLength(bytes.length);
           ServletOutputStream outStream = response.getOutputStream();
           outStream.write(bytes, 0, bytes.length);
           outStream.flush();
           outStream.close();
                  
      }
       
  }
  
  
  
  if(event!=null)
  {
	   String id = request.getParameter("id");
      // Normal Report
       if(event.equals("id wise payment list"))
       {
           Connection cn = null;
           try 
           {
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fertilizerproject","root","root");

           } 
           catch (Exception ex) 
           {
               ex.printStackTrace();
           }

           File reportFile = new File(application.getRealPath("reports\\id_wise_payment_list.jasper"));
           Map parameters = new HashMap();
           
           parameters.put("id", id);
           
           byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

           response.setContentType("application/pdf"); 
           response.setContentLength(bytes.length);
           ServletOutputStream outStream = response.getOutputStream();
           outStream.write(bytes, 0, bytes.length);
           outStream.flush();
           outStream.close();
                  
      }
       
  }
  
  
 
          %>
    </body>
</html>