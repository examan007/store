package com.neolation.store;

import java.sql.*;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class ShowObj {
    private final String url = "jdbc:postgresql://localhost/manager";
    private final String user = "manager";
    private final String password = "blockade";
    private HashMap<String, HashSet<String>> map = new HashMap<String, HashSet<String>>();
    private final String tabs = "\t\t\t\t\t\t\t";
    public Connection connect() throws SQLException {
        return DriverManager.getConnection(url, user, password);
    }
    private void showLevel(int level, Set<String> set) {
        set.forEach((name) -> {
            String tab = tabs.substring(0, level);
            System.out.println(tab + name);
            HashSet<String> next = null;
            if (map.containsKey(name) == false) {} else
            if ((next = map.get(name)) == null) {} else {
                showLevel(level+ 1, next);
            }
        });
    }
    public void show(String args[]) {
        System.out.println(this.getClass() + ".show(); executing...");
        String SQL = "SELECT * FROM categories";
        System.out.println(SQL);
        try (Connection conn = connect();
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(SQL)) {
            HashSet<String> root = new HashSet<String>();
            while (rs.next()) {
                String name = rs.getString("name");
                String parent = rs.getString("parent");
                if (name == null) {} else {
                    if (map.containsKey(name) == false) {
                        map.put(name, new HashSet<String>());
                    }
                    if (parent == null) {
                        root.add(name);
                    } else {
                        HashSet<String> set = map.get(parent);
                        if (set.contains(name) == false) {
                            set.add(name);
                        }
                    }
                }
            }
            showLevel(0, root);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    static public void main(String args[]) {
        (new ShowObj()).show(args);
    }
}
