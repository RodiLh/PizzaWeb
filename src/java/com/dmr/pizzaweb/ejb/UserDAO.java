package com.dmr.pizzaweb.ejb;

import javax.ejb.Stateless;

/**
 *
 * @author dmr
 */
@Stateless
public class UserDAO {

    public String sayHello(String name) {
        return "Hello " + name;
    }
        
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
