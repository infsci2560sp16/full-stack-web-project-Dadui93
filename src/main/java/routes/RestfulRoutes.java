/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package routes;

import com.google.gson.Gson;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.bind.ValidationEvent;

import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import static spark.Spark.get;

import com.heroku.sdk.jdbc.DatabaseUrl;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import static spark.Spark.get;
import static spark.Spark.post;


/**
 *
 * @author Haoxiang Sun
 */
public class RestfulRoutes {

    Gson gson = new Gson();

    public RestfulRoutes() {
        setupRoutes();
    }

    private void setupRoutes() {
            
            get("/", (request, response) -> {
                Map<String, Object> attributes = new HashMap<>();
                // message
                attributes.put("message", "Hello World!!!!!");
                // lst
                List list=new ArrayList();
                int k = 3;
                for (int i=0; i<k; i++) {
                    list.add("please give me some advices!!!!");
                }
                attributes.put("lst", list);
                
                attributes.put("Me", "I am Haoxiang Sun");
                
                
                
                
                return new ModelAndView(attributes, "home.ftl");
            }, new FreeMarkerEngine());
            
            
            get("/api/my_info", (req, res) -> {
                List<Object> data2 =new ArrayList<>();
                Connection connection=null;
                try{
                connection = DatabaseUrl.extract().getConnection();
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM INFO;");
                
                while(rs.next()){
                Map<String, Object> data = new HashMap<>();
                data.put("Name", rs.getString("NAME"));
                data.put("Phone", rs.getString("PHONE"));
                data.put("Email", rs.getString("EMAIL"));
                data2.add(data);
                }
            }catch (Exception e){
                data2.add("error"+e);
            }finally{
                if(connection !=null)
                    try{
                        connection.close();
                    }catch(SQLException e){
                        
                    }
            }
                return data2;
            }, gson::toJson);
            
            
            post("/api/add_music_info", (req, res) -> {
                String info = req.queryParams("info");
                
                Map<String, Object> data = new HashMap<>();
                data.put("info", info);
                data.put("status", "OK");
                return data;
            }, gson::toJson);
            
            
            get("/api/peoples", (req, res) -> {
                Map<String, Object> data = new HashMap<>();
                data.put("status", "live");
                data.put("now", new Date());

                
                String xml = readXML("data/peoples.xml");
                res.type("text/xml");
                return xml;
            });
            
    }
                
    public String readXML(String file) throws IOException {
        BufferedReader br = null;
        br = new BufferedReader(new FileReader(file));
        StringBuilder sb = new StringBuilder();
        String line = br.readLine();

        while (line != null) {
            sb.append(line);
            sb.append(System.lineSeparator());
            line = br.readLine();
        }
        String everything = sb.toString();
        br.close();
        return everything;

    }
    
}

class MyInfo {
    public String Name;
    public String Phone;
    public String Email;
    
    public MyInfo(String a, String p, String e) {
        Name = a;
        Phone = p;
        Email = e;
    }
}
