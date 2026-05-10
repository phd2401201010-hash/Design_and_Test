/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PSONestedLoop;

import java.util.ArrayList;
import java.util.Vector;

/**
 *
 * @author SAPVI
 */
public class Resource {
 String name;
 //int delay;
 int curOpr;
 boolean status;
 String operator;
 //false busy true free
 //int currDelay;
 Vector<Integer> oprComplete; //add operation with "," whenever completed 
 Vector<Integer> oprStartTime;
 Vector<Integer> oprComTime;  //add time , when operation will be completed
public Resource(String name){
    this.name=name;
    if(name.equalsIgnoreCase("mul"))
        this.operator="*";
    if(name.equalsIgnoreCase("add"))
        this.operator="+";
    if(name.equalsIgnoreCase("sub"))
        this.operator="-";
    if(name.equalsIgnoreCase("com"))
        this.operator="<";
    //this.delay=delay;
    curOpr=0;
    status=true;
    //currDelay=0;
    oprComplete=new <Integer>Vector();
    oprStartTime=new <Integer>Vector();
    oprComTime=new <Integer>Vector();
}
}

