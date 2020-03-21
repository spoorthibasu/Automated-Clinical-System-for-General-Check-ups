package com.dbutils.DBsingletone;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBsingletone {

    private static final DBsingletone only_one = new DBsingletone();
    private static Connection con;

    static {
        try {
             Class.forName("com.mysql.jdbc.Driver");
//            con = DriverManager.getConnection("jdbc:mysql://mysql147224-env-0748133.j.layershift.co.uk:3306/health", "root", "IAByre16102");
            //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/health", "root", "admin");
            con = DriverManager.getConnection("jdbc:mysql://healthservice.cwlnme9aofbh.us-west-1.rds.amazonaws.com:3306/healthservice", "admin", "adminroot");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static DBsingletone getDbSingletone() {
        return only_one;
    }

    public Connection getConnection() {

        return con;
    }
}
