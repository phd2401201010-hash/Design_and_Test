/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PSONestedLoop;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Enumeration;
import java.util.StringTokenizer;
import java.util.Vector;

/**
 *
 * @author SAPVI
 */
public class ReadFile {
    
    public static Vector <Object> operation;
    public static Vector <Object> loopbody;
    public static Vector <Object> unrollbody;
    public static Vector <Object> conditionstr;
    public static Vector <Object> beforeloop;
    public static Vector <Object> afterloop;
    
    GlobalConstants gc;
   public ReadFile(){
       gc = GlobalConstants.getInstance();
   }
public synchronized void read_C_DGF(String path){
            boolean callCDFG=false;
            int count=0;
             try{
            FileInputStream fstream = new FileInputStream(path);
            // Get the object of DataInputStream
            DataInputStream in = new DataInputStream(fstream);
            BufferedReader br = new BufferedReader(new InputStreamReader(in));
            String strLine="";
            String dilim=",";
            String token="";
            while ((strLine = br.readLine()) != null){
                // Print the content on the console
                System.out.println (strLine);
                StringTokenizer tok = new StringTokenizer(strLine,dilim,false);
            while (tok.hasMoreTokens()) {
             token = tok.nextToken();
             if(token.equals("loop")){
                 //gc.CDFG=true;
                 count++;
                            
             }
            }
            }
            if(count>1)
                gc.nestedloop=true;
            if(count==1)
                gc.CDFG=true;
      }catch (Exception e){//Catch exception if any
        System.err.println("Error: " + e.getMessage());
            }
             if(gc.CDFG){
                 readloopCDFG(path);
             }
             if(gc.nestedloop){
                 readnestedloopCDFG(path);
             }
             else{
                 readDFG(path);
             }
        }
        public synchronized  void  readloopCDFG(String path){
           loopbody=new <Object>Vector();
           unrollbody=new <Object>Vector();
           conditionstr=new <Object>Vector();
           beforeloop=new <Object>Vector();
           afterloop=new <Object>Vector();
           boolean bloop=true,aloop=false,loop=false;
        //String path="C:/Users/SAPVI/Documents/DAP Files new/New folder/JPEG_IDCT.txt";
        System.out.println("Start Read_DFG");
        try{
  // Open the file that is the first 
    FileInputStream fstream = new FileInputStream(path);
  // Get the object of DataInputStream
  DataInputStream in = new DataInputStream(fstream);
  BufferedReader br = new BufferedReader(new InputStreamReader(in));
  String strLine;
  String dilim=",";
  String token="";
  
  //Read File Line By Line
  while ((strLine = br.readLine()) != null){
  // Print the content on the console
  System.out.println (strLine);
  StringTokenizer tok = new StringTokenizer(strLine,dilim,false);
  //token = tok.nextToken();
 

  while (tok.hasMoreTokens()) {
      token = tok.nextToken();
         
    if(token.equals("loop")){
        gc.setofdata=Integer.parseInt(tok.nextToken());
        bloop=false;
        loop=true;
        break;
    }
    if(token.equals("loopend")){
        while (tok.hasMoreTokens()){
            token = tok.nextToken();    
            conditionstr.add(token);
        }
        bloop=false;
        loop=false;
        aloop=true;
        break;
     }
    if(bloop){
       beforeloop.add(token);   
      }
    if(loop){
    loopbody.add(token);
    token = tok.nextToken();
    loopbody.add(token);
    token = tok.nextToken();
    loopbody.add(token);
    token = tok.nextToken();
    loopbody.add(token);
    }
    if(aloop){
        afterloop.add(token);
    }
  }
  }
  gc.no_operation=loopbody.size()/4;
  //gc.operation=operation;
  //Close the input stream
  in.close();
    }catch (Exception e){//Catch exception if any
  System.err.println("Error: " + e.getMessage());
  }
        int a=Integer.parseInt(loopbody.elementAt(3)+"");
        for( int l=0;l<loopbody.size();l=l+4){
            if((loopbody.elementAt(l+1)+"").equals("0") && (loopbody.elementAt(l+2)+"").equals("0") || ( Integer.parseInt(loopbody.elementAt(l+1)+"")<a &&Integer.parseInt(loopbody.elementAt(l+2)+"")<a) ){
                if((loopbody.elementAt(l)+"").equals("*"))
                    gc.pmul++;
                if((loopbody.elementAt(l)+"").equals("+"))
                    gc.padd++;
                if((loopbody.elementAt(l)+"").equals("-"))
                    gc.psub++;
                
            }
        }
        System.out.println("pmul= "+gc.pmul);
        System.out.println("padd= "+gc.padd);
        System.out.println("psub= "+gc.psub);
        //construct path for unroll body
    String path2 = path.substring(0,path.length()-4);
    path2 = path2+"unroll.txt";
  try{
  FileInputStream fstream = new FileInputStream(path2);
  // Get the object of DataInputStream
  DataInputStream in = new DataInputStream(fstream);
  BufferedReader br = new BufferedReader(new InputStreamReader(in));
  String strLine;
  String dilim=",";
  String token="";
  
  //Read File Line By Line
  while ((strLine = br.readLine()) != null){
  // Print the content on the console
  System.out.println (strLine);
  StringTokenizer tok = new StringTokenizer(strLine,dilim,false);
  //token = tok.nextToken();
 

  while (tok.hasMoreTokens()) {
    token = tok.nextToken();
    unrollbody.add(token);
    }
  }
  in.close();
    }catch (Exception e){//Catch exception if any
  System.err.println("Error: " + e.getMessage());
  }
  
  gc.loopbody=loopbody;
  gc.unrollbody=unrollbody;
  gc.conditionstr=conditionstr;
  gc.beforeloop=beforeloop;
  gc.afterloop=afterloop;
        
          System.out.println("End Read_CDFG");
  }
        /****************/
  public synchronized  void  readnestedloopCDFG(String path){
           loopbody=new <Object>Vector();
           unrollbody=new <Object>Vector();
           conditionstr=new <Object>Vector();
           beforeloop=new <Object>Vector();
           afterloop=new <Object>Vector();
           boolean bloop=true,aloop=false,loop=false;
        
        System.out.println("Start Read_Nested Loop CDFG");
        try{
  // Open the file that is the first 
    FileInputStream fstream = new FileInputStream(path);
  // Get the object of DataInputStream
  DataInputStream in = new DataInputStream(fstream);
  BufferedReader br = new BufferedReader(new InputStreamReader(in));
  String strLine;
  String dilim=",";
  String token="";
  
  //Read File Line By Line
  while ((strLine = br.readLine()) != null){
  // Print the content on the console
  System.out.println (strLine);
  StringTokenizer tok = new StringTokenizer(strLine,dilim,false);
  //token = tok.nextToken();
 

  while (tok.hasMoreTokens()) {
      token = tok.nextToken();
         
    if(token.equals("loop")){
        gc.loopcount.add(Integer.parseInt(tok.nextToken()));
        bloop=false;
        loop=true;
        gc.noofnestedloop++;
        break;
    }
    if(token.equals("loopend")){
        while (tok.hasMoreTokens()){
            token = tok.nextToken();    
            conditionstr.add(token);
        }
        bloop=false;
        loop=false;
        aloop=true;
        break;
     }
    if(bloop){
       beforeloop.add(token);   
      }
    if(loop){
    loopbody.add(token);
    token = tok.nextToken();
    loopbody.add(token);
    token = tok.nextToken();
    loopbody.add(token);
    token = tok.nextToken();
    loopbody.add(token);
    }
    if(aloop){
        afterloop.add(token);
    }
  }
  }
  gc.no_operation=loopbody.size()/4;
  //gc.operation=operation;
  //Close the input stream
  in.close();
    }catch (Exception e){//Catch exception if any
  System.err.println("Error: " + e.getMessage());
  }
        int a=Integer.parseInt(loopbody.elementAt(3)+"");
        for( int l=0;l<loopbody.size();l=l+4){
            if((loopbody.elementAt(l+1)+"").equals("0") && (loopbody.elementAt(l+2)+"").equals("0") || ( Integer.parseInt(loopbody.elementAt(l+1)+"")<a &&Integer.parseInt(loopbody.elementAt(l+2)+"")<a) ){
                if((loopbody.elementAt(l)+"").equals("*"))
                    gc.pmul++;
                if((loopbody.elementAt(l)+"").equals("+"))
                    gc.padd++;
                if((loopbody.elementAt(l)+"").equals("-"))
                    gc.psub++;
                
            }
        }
        System.out.println("pmul= "+gc.pmul);
        System.out.println("padd= "+gc.padd);
        System.out.println("psub= "+gc.psub);
        Vector<Object> temp1; 
        //construct path for unroll body
     for(int i=1;i<=gc.noofnestedloop;i++){
     temp1=new <Object>Vector();
    String path2 = path.substring(0,path.length()-4);
    path2 = path2+"unroll"+i+".txt";
  try{
  FileInputStream fstream = new FileInputStream(path2);
  // Get the object of DataInputStream
  DataInputStream in = new DataInputStream(fstream);
  BufferedReader br = new BufferedReader(new InputStreamReader(in));
  String strLine;
  String dilim=",";
  String token="";
  
  //Read File Line By Line
  while ((strLine = br.readLine()) != null){
  // Print the content on the console
  System.out.println (strLine);
  StringTokenizer tok = new StringTokenizer(strLine,dilim,false);
  //token = tok.nextToken();
 

  while (tok.hasMoreTokens()) {
    token = tok.nextToken();
    temp1.add(token);
    }
  }
  in.close();
    }catch (Exception e){//Catch exception if any
  System.err.println("Error: " + e.getMessage());
  }
  unrollbody.add(temp1);
 }
  
  gc.loopbody=loopbody;
  gc.unrollbody=unrollbody;
  gc.conditionstr=conditionstr;
  gc.beforeloop=beforeloop;
  gc.afterloop=afterloop;
        System.out.println("No of Nested Loop   "+gc.noofnestedloop);
          System.out.println("End Read_DFG");
  }
        
        
        /****************/
       
  public synchronized  void  readDFG(String path){
           operation=new <Object>Vector();
        //String path="C:/Users/SAPVI/Documents/DAP Files new/New folder/JPEG_IDCT.txt";
        System.out.println("Start Read_DFG");
        try{
  // Open the file that is the first 
    FileInputStream fstream = new FileInputStream(path);
  // Get the object of DataInputStream
  DataInputStream in = new DataInputStream(fstream);
  BufferedReader br = new BufferedReader(new InputStreamReader(in));
  String strLine;
  String dilim=",";
  String token="";
  
  //Read File Line By Line
  while ((strLine = br.readLine()) != null){
  // Print the content on the console
  System.out.println (strLine);
  StringTokenizer tok = new StringTokenizer(strLine,dilim,false);
  while (tok.hasMoreTokens()) {
    token = tok.nextToken();
    operation.add(token);
    token = tok.nextToken();
    operation.add(Integer.parseInt(token));
    token = tok.nextToken();
    operation.add(Integer.parseInt(token));
    token = tok.nextToken();
    operation.add(Integer.parseInt(token));
  
         
  }
  }
  gc.no_operation=operation.size()/4;
  gc.operation=operation;
  //Close the input stream
  in.close();
    }catch (Exception e){//Catch exception if any
  System.err.println("Error: " + e.getMessage());
  }
          System.out.println("End Read_DFG");
  }      
        
public synchronized  void  readCDFG(String path){
              
    operation=new <Object>Vector(); 
         
         try{
  // Open the file that is the first 
    FileInputStream fstream = new FileInputStream(path);
  // Get the object of DataInputStream
  DataInputStream in = new DataInputStream(fstream);
  BufferedReader br = new BufferedReader(new InputStreamReader(in));
  String strLine;
  String dilim=",";
  String token="";
  String replace="";
  String lno="",operator="",oper1="",oper2="",oper_no=""; 
  int score1=0,score2=0;
  String list1="",list2="",operation_str="";
  String oper_no1="",oper_no2="";
  //Vector<Object> operation=new <Object>Vector();
  
while ((strLine = br.readLine()) != null){
  System.out.println (strLine);
  StringTokenizer tok = new StringTokenizer(strLine,dilim,false);
  while (tok.hasMoreTokens()) {
      //lno = tok.nextToken();
      operator = tok.nextToken();
      operation_str=operation_str+operator+",";
     
     if(operator.equals("<"))
     {
        
     oper1=tok.nextToken();
     oper2=tok.nextToken();
     if(oper2.indexOf('/')!=-1){
         oper2=replace;
     }
     oper_no=tok.nextToken();
     operation_str=operation_str+oper1+","+oper2+","+oper_no+",";
     //tok.nextToken();
     //tok.nextToken();
     // true statement
     
     String line1=br.readLine();
    
     StringTokenizer tok1 = new StringTokenizer(line1,dilim,false);
     list1="";
      while (tok1.hasMoreTokens()) {
       //String lno1 = tok1.nextToken();
      String operator1 = tok1.nextToken();
      if(operator1.equals("+")){
          score1=score1+1;
      }
      if(operator1.equals("*")){
          score1=score1+2;
      }
      String oper11=tok1.nextToken();
      if(oper11.indexOf('/')!=-1){
         oper11=replace;
     }
      String oper12=tok1.nextToken();
      if(oper12.indexOf('/')!=-1){
         oper12=replace;
     }
      oper_no1=tok1.nextToken();
      list1=list1+operator1+","+oper11+","+oper12+","+oper_no1+",";
      }
     // false statement
     String line2=br.readLine();
     
     list2="";
     StringTokenizer tok2 = new StringTokenizer(line2,dilim,false);
      while (tok2.hasMoreTokens()) {
       //String lno2 = tok2.nextToken();
      String operator2 = tok2.nextToken();
      if(operator2.equals("+")){
          score2=score2+1;
      }
      if(operator2.equals("*")){
          score2=score2+2;
      }
      String oper21=tok2.nextToken();
      if(oper21.indexOf('/')!=-1){
         oper21=replace;
     }
      String oper22=tok2.nextToken();
      if(oper22.indexOf('/')!=-1){
         oper22=replace;
     }
      oper_no2=tok2.nextToken();
      list2=list2+operator2+","+oper21+","+oper22+","+oper_no2+",";
      }
      if(score1>=score2){
          operation_str=operation_str+list1;
          replace=oper_no1;
      }
      else
      {
          operation_str=operation_str+list2;
          replace=oper_no2;
      }
      
     }
     else
     {
     oper1=tok.nextToken();
     if(oper1.indexOf('/')!=-1){
         oper1=replace;
     }
     oper2=tok.nextToken();
     oper_no=tok.nextToken();
     if(oper2.indexOf('/')!=-1){
         oper2=replace;
     }
     operation_str=operation_str+oper1+","+oper2+","+oper_no+",";
     }
  }
  }

  System.out.println(operation_str);
  StringTokenizer ftok = new StringTokenizer(operation_str,dilim,false);
  while (ftok.hasMoreTokens()) {
     //System.out.println(ftok.nextToken()); 
     operation.add(ftok.nextToken());
  }
  Enumeration e=operation.elements();
  //System.out.println("The elements of vector: " + vector);
  while(e.hasMoreElements()){
  System.out.println("The elements are: " + e.nextElement());
  }
    //Close the input stream
  //step=new String[Integer.parseInt(""+operation.lastElement())+1];
  in.close();
    }catch (Exception e){//Catch exception if any
  System.err.println("Error: " + e.getMessage());
  }
    gc.no_operation=operation.size()/4;
    gc.operation=operation;    
  }  
     public synchronized  void read_detail(String path){
     System.out.println("Start Read_Detail");
    // String path="C:/Users/SAPVI/Documents/DAP Files new/module_library_JPEGIDCT.txt";
     try{
  // Open the file that is the first 
    FileInputStream fstream = new FileInputStream(path);
  // Get the object of DataInputStream
  DataInputStream in = new DataInputStream(fstream);
  BufferedReader br = new BufferedReader(new InputStreamReader(in));
  String strLine;
  String c;
  int j=0;
  String dilim=",";
  String token[]=new String[5];
  Vector<Object> max_component_detail=new <Object>Vector();
  //double component_area[];
  //double component_spower[];
  //double component_dpower[];
  //double component_clockcycle[];
 // String component_name[];
 // int max[];
  int i=0;
  //Read File Line By Line
  while ((strLine = br.readLine()) != null){
  // Print the content on the console
     // System.out.println(strLine);
   StringTokenizer tok = new StringTokenizer(strLine,dilim,false);
   // System.out.println("testing1");
   while (tok.hasMoreTokens()) {
      
    token[0] = tok.nextToken();
     
    //operation.add(token);
    token[1] = tok.nextToken();
    //operation.add(Integer.parseInt(token));
    token[2] = tok.nextToken();
    
    //operation.add(Integer.parseInt(token));
    token[3] = tok.nextToken();
    token[4] = tok.nextToken();
   // System.out.println(token[0]+"  "+token[1]+"  "+token[2]+"  "+token[3]);
    if(Integer.parseInt(token[4])!=0){
        gc.size++;
     max_component_detail.add(token[0].subSequence(0, 3));
   
    max_component_detail.add(Integer.parseInt(token[4]));
     
    gc.component_name[i]=(token[0].subSequence(0, 3)+"");
    if(gc.component_name[i].equalsIgnoreCase("mul"))
        gc.operator[i]="*";
    if(gc.component_name[i].equalsIgnoreCase("add"))
        gc.operator[i]="+";
    if(gc.component_name[i].equalsIgnoreCase("sub"))
        gc.operator[i]="-";
     if(gc.component_name[i].equalsIgnoreCase("com"))
        gc.operator[i]="<";
    gc.max[i]=Integer.parseInt(token[4]);
    gc.vel_range[i]=((1+gc.max[i])/2);
   // System.out.println(token[4]+"   ");
   // System.out.println("test"+ gc.max[i]);
    gc.component_dpower[i]=Double.parseDouble(token[1].substring(0,token[1].length()-2));
    gc.component_area[i]=Double.parseDouble(token[2].substring(0,token[2].length()-2));
   // System.out.println("testin...3  "+token[2].substring(0,token[2].length()-2));
    gc.component_clockcycle[i]=Integer.parseInt(token[3].substring(0,token[3].length()-2));
   // System.out.println(gc.component_name[i]+"   "+gc.max[i]+"  "+gc.component_area[i]);
    i++;
    gc.noofresources++;
    }
    else{
         String mux=(token[0].subSequence(0, 3)+"");
         if(mux.equalsIgnoreCase("mux")){
          gc.mux_dpower=Double.parseDouble(token[1].substring(0,token[1].length()-2));
          gc.mux_area=Double.parseDouble(token[2].substring(0,token[2].length()-2));
          gc.mux_delay=Integer.parseInt(token[3].substring(0,token[3].length()-2));   
         }
    }
          
  }
   
 
  }
  //add unrolling factor in component name , max, maxcomponent
    if(gc.CDFG){
    max_component_detail.add("UF");
    int maxUF=1;
    maxUF=gc.UFList.lastElement();
    max_component_detail.add(gc.UFList.size()-1);  
    gc.component_name[i]=("UF");
    gc.max[i]=gc.UFList.size()-1;
    gc.vel_range[i]=((gc.UFList.size()-1)/2);
    gc.size++;  // one more increment for Unrolling factor
    }
    if(gc.nestedloop){
        for(int k=0;k<gc.loopcount.size();k++){
            max_component_detail.add("UF");
            //int maxUF=1;
            //maxUF=gc.UFList.lastElement();
             max_component_detail.add(gc.LUFL.get(k).size()-1);  
             gc.component_name[i]=("UF");
             gc.max[i]=gc.LUFL.get(k).size()-1;
             gc.vel_range[i]=((gc.LUFL.get(k).size()-1)/2);
             gc.size++;
             i++;
        }
    }
    
    
    //gc.vel_range[i]=((1-gc.max[i])/2);
  for(int k=0;k<i;k++){
 System.out.println("Dynamic power= "+gc.component_dpower[k]);
 System.out.println("Area= "+gc.component_area[k]);
 System.out.println("Delay= "+gc.component_clockcycle[k]);
  }
  System.out.println("muxpower="+gc.mux_dpower+"   muxarea"+gc.mux_area+"   muxdelay"+gc.mux_delay );
  
 
  gc.max_component_detail=max_component_detail;
  
   Enumeration e=gc.max_component_detail.elements();
  //System.out.println("The elements of vector: " + vector);
  while(e.hasMoreElements()){
  System.out.println("The elements are: " + e.nextElement());
  }
  in.close();
    }catch (Exception e){//Catch exception if any
  System.err.println("Error: " + e.getMessage());
  }
     System.out.println("No of Resources   "+gc.noofresources);   
     System.out.println("End Read_Detail");
    }
   
}
