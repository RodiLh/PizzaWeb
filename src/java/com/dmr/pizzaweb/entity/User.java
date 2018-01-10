package com.dmr.pizzaweb.entity;

/**
 *
 * @author dmr
 */
public class User {

    private String username;
    private String password;

    public User() {
        this.username = "";
        this.password = "";
    }
    
    public User(String username, String password) throws Exception {
        if (username.equals("admin") && password.equals("12345")) {
            this.username = username;
            this.password = password;
        }
        else {
            throw new Exception("Erreur username/password");
        }
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" + "username = " + username + ", password = " + password + "}";
    }
    
}
