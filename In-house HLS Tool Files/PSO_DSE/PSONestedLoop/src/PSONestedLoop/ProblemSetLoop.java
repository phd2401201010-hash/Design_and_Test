/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PSONestedLoop;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.text.DecimalFormat;
import java.util.Enumeration;
import java.util.StringTokenizer;
import java.util.Vector;

/**
 *
 * @author SAPVI
 */
public class ProblemSetLoop implements PSOConstants{
 
	Vector<Resource> resource;
	  Vector<Integer> oprcount;
       // static String [] comp_name={"mul","add","sub"};
        static GlobalConstants gc;
        int conadd=0;
        int loc=0;
        int cs=0;
        boolean check_predict=true;
        public ProblemSetLoop(){
            gc = GlobalConstants.getInstance();
        }
        public double evaluate(Location location) {
            
            DecimalFormat df2 = new DecimalFormat("#.##");
            DecimalFormat df1 = new DecimalFormat("#.#");
            int r[]=new int[gc.size];
            
		double fitnessValue = 0;
                 for(int j=0;j<gc.size;j++){
		r[j] = location.getLoc()[j];
                System.out.println("R"+(j+1)+"  "+r[j]);
                 }
                 //get resource location
                 loc=0;
                for(int i=0;i<gc.size;i++){
                 int temp=1;
                 for(int j=i+1;j<gc.size;j++){
                    if(j<gc.size-2)
                    temp *= (gc.max[j]);
                    else{
                        temp *= gc.UFList.get(gc.max[j]);
                        System.out.println("maxUF  "+gc.UFList.get(gc.max[j]));
                    }
                    }
                if(i<gc.size-2){
                loc +=(r[i]-1)*temp;
                }
                else
                {
                 loc +=((gc.UFList.get(r[i]))-1)*temp; 
                 System.out.println("UF-- "+((gc.UFList.get(r[i]))-1));
                }
                }

                 //get value of cost
                 if(gc.cost.get(loc) !=0.0){
                     System.out.println("inside");
                     return gc.cost.get(loc);
                 }
                 
                 
		Vector<Object> maxComp=new <Object>Vector();
                Vector<Object> minComp=new <Object>Vector();
                 for(int j=0;j<gc.size;j++){
                maxComp.add(gc.component_name[j]);
                maxComp.add(gc.UFList.lastElement());
                //maxComp.add(gc.UFList.size()-1);
                //System.out.println(gc.UFList.get(gc.UFList.size()-1));
                minComp.add(gc.component_name[j]);
                minComp.add(1);
                 }
                 
                
               Vector <Object> component_detail=new <Object>Vector();
               for(int j=0;j<gc.size;j++){
                 component_detail.add(gc.component_name[j]);
                 component_detail.add(r[j]);
                
               }
               
               //int UF=r[r.length-1];// extract UF value from location detail
               
               if(gc.power_texe){
                   double tpower=0.0,tmaxpower=0.0,texetime=0.0,tmaxexetime=0.0,temppower=0.0,tempmaxpower=0.0;
                   
                   texetime=gc.exetime.get(loc);
                   if(texetime==0.0){
                     texetime= calculateTex(component_detail);
                     gc.exetime.set(loc, texetime);
                      gc.controlstep.set(loc, cs);
                   }
                   tmaxexetime=gc.exetime.get(0);
                   if(tmaxexetime ==0.0){
                     //System.out.println("inside");
                     tmaxexetime=calculateTex(minComp);
                     gc.exetime.set(0, tmaxexetime);
                      gc.controlstep.set(0, cs);
                 }
                   
                   tpower=gc.power.get(loc);
                   if(tpower ==0.0){
                     //System.out.println("inside");
                     tpower=calculatePower(component_detail);
                     gc.power.set(loc, tpower);
                 }
                   tmaxpower=gc.power.get(gc.power.size()-1);
                   if(tmaxpower ==0.0){
                     //System.out.println("inside");
                     tmaxpower=calculatePower(gc.max_component_detail);
                     gc.power.set(gc.power.size()-1, tmaxpower);
                     //System.out.println("max power= "+ tmaxpower);
                 }
                  temppower=Double.parseDouble(df2.format(tpower));
                  tempmaxpower=Double.parseDouble(df1.format(tmaxpower));
                //fitnessValue= (gc.w1*((calculatePower(component_detail)-gc.PowerConstraint)/calculatePower(maxComp)) + gc.w2*((calculateTex(component_detail)-gc.TexeConstraint)/calculateTex(minComp)));
                fitnessValue= (gc.w1*((temppower-gc.PowerConstraint)/tempmaxpower) + gc.w2*((texetime-gc.TexeConstraint)/tmaxexetime));
              //System.out.println("power= "+tpower);
              //System.out.println("power= "+temppower);
             // System.out.println("MAX power= "+tempmaxpower);
             // System.out.println("MAX power= "+tmaxpower);
              //System.out.println("execution time= "+texetime);
             // System.out.println("MAX execution time= "+tmaxexetime);
              //System.out.println("Fitness= "+fitnessValue);
               }
                if(gc.area_texe){
                    double tarea=0.0,tmaxarea=0.0,texetime=0.0,tmaxexetime=0.0,temparea=0.0,tempmaxarea=0.0;
                  
                   texetime=gc.exetime.get(loc);
                   if(texetime==0.0){
                     texetime= calculateTex(component_detail);
                     gc.exetime.set(loc, texetime);
                      gc.controlstep.set(loc, cs);
                   }
                   tmaxexetime=gc.exetime.get(0);
                   if(tmaxexetime ==0.0){
                     //System.out.println("inside");
                     tmaxexetime=calculateTex(minComp);
                     gc.exetime.set(0, tmaxexetime);
                      gc.controlstep.set(0, cs);
                 }
                    tarea=gc.area.get(loc);
                   if(tarea ==0.0){
                     //System.out.println("inside");
                     tarea=calculateArea(component_detail);
                     gc.area.set(loc, tarea);
                 }
                   tmaxarea=gc.area.get(gc.area.size()-1);
                   if(tmaxarea ==0.0){
                     //System.out.println("inside");
                     tmaxarea=calculateArea(gc.max_component_detail);
                     gc.area.set(gc.area.size()-1, tmaxarea);
                     //System.out.println("max power= "+ tmaxpower);
                 }
                  temparea=Double.parseDouble(df2.format(tarea));
                  tempmaxarea=Double.parseDouble(df1.format(tmaxarea));
                //fitnessValue= (gc.w1*((calculatePower(component_detail)-gc.PowerConstraint)/calculatePower(maxComp)) + gc.w2*((calculateTex(component_detail)-gc.TexeConstraint)/calculateTex(minComp)));
                fitnessValue= (gc.w1*((temparea-gc.AreaConstraint)/tempmaxarea) + gc.w2*((texetime-gc.TexeConstraint)/tmaxexetime));
              
                    //fitnessValue= (gc.w1*((calculate_Area(component_detail)-gc.AreaConstraint)/calculate_Area(maxComp)) + gc.w2*((calculateTex(component_detail)-gc.TexeConstraint)/calculateTex(minComp)));
                }
                    //System.out.println("fitness Value=  "+fitnessValue);
               gc.cost.set(loc,fitnessValue);   //store fitness in the cost list
		return fitnessValue;
	}
        
        
           
       
        public synchronized double calculatePower(Vector component_detail){
                           
        double power=0.0;
        
        //schdule(gc.operation,component_detail);
        power=(calculateDynamicPower(component_detail)+calculateStaticPower(component_detail));
                //System.out.println("    End calculatePower   "+power/1000);
        //return power/1000;
        return power;
    }
    public synchronized double calculateDynamicPower(Vector component_detail){
               //System.out.println("Start calculateDynamicPower");
        double power=0.0;
        int no_mul=0,no_add=0,no_sub=0,no_com=0;
           //int size=component_detail.size();
        double tex=0.0;
         int  UF=gc.UFList.get(Integer.parseInt(component_detail.lastElement()+""));   
        // tex=calculateTex(component_detail);  
      //int ltcc[]=new int[2];
      Vector<Object> temp=new <Object>Vector();
      for(int i=0;i<component_detail.size()-2;i++){
            temp.add(component_detail.get(i));
        }
      if(check_predict){
        tex=calculate_cc(temp,UF);
        gc.predictcount++;
      }
      else
     tex= calculateTexUnroll(temp,UF);
        
       
        Object [] opr_arr=gc.loopbody.toArray();
      for(int j=0;j<opr_arr.length;j=j+4){
          String str=opr_arr[j]+"";
          if(str.equalsIgnoreCase("*")){
              no_mul++;
          }
          if(str.equalsIgnoreCase("+")){
              no_add++;
          }
          if(str.equalsIgnoreCase("-")){
              no_sub++;
          }
          if(str.equalsIgnoreCase("<")){
              no_com++;
          }
      }
      no_com +=2;
        //double lt=calculate_lt(component_detail);
      //System.out.println("add  "+no_add+"   sub  "+no_sub+"    mul  "+no_mul+"    comp    "+no_com);
        //tex=((ltcc[0]+(UF-1)*ltcc[1])*(gc.setofdata/UF))+((gc.setofdata%UF)*ltcc[0]);
        //tex=tex*gc.component_clockcycle[0]/2;//calculate execution time
       // tex=tex*20;
        //System.out.println("lt= "+ltcc[0]+"  cc=  "+ltcc[1]);
       // power=N*(no_mul*gc.component_dpower[1]+no_add*gc.component_dpower[0]+muxDmuxPower(component_detail))/(lt+(N-1)*cc);
        //old  
        //power=gc.setofdata*(no_mul*gc.component_dpower[1]+no_add*gc.component_dpower[0]+no_sub*gc.component_dpower[0]+no_com*gc.component_dpower[0]+muxDmuxPower(component_detail))/(ltcc[0]+(gc.setofdata-1)*ltcc[1]); 
          // 
          power=(gc.setofdata*(no_mul*gc.component_dpower[1]+no_add*gc.component_dpower[0]+no_sub*gc.component_dpower[0])+((gc.setofdata/UF)*no_com*gc.component_dpower[0]*2+muxDmuxPower(component_detail,UF)))/(tex);
            //power=N*(no_mul*2504+no_add*181+no_sub*181+muxDmuxPower(component_detail))/(cc_lt.calculate_lt(component_detail)+(N-1)*cc_lt.calculate_cc(component_detail));
          power=power/1000;   
          //System.out.println("End CalculateDynamic Power  "+power);
        return power;
    }
    public synchronized double muxDmuxPower(Vector component_detail,int UF){
                //System.out.println("Start muxDmuxPower");
        double power=0.0;
       
        for(int i=0;i<oprcount.size();i++){
            int muxsize=0,noopr=0;
            noopr=oprcount.get(i);
          //if(!(resource.get(i).operator.equals("<")))
               // noopr=noopr*UF;
           if(noopr==1){
             muxsize=0;  
           }else
            for(int j=-1;j<10;j++){
                if(noopr>(2<<j) && noopr<=(2<<(j+1))){
                 muxsize=2<<(j+1);  
                // x=j+2;
                 break;
                }
            }    
         //System.out.println("mux info  "+noopr+"   "+muxsize);  
         power=power+(muxsize-1)*gc.mux_dpower*3;
        //System.out.println("powerMUX= "+power);
        }
         //System.out.println("End muxDmuxPower"+ power);
        return power;
    }
    public synchronized double calculateStaticPower(Vector component_detail){
        //System.out.println("Start calculateStaticPower");
        double power=0.0;
        String mul="mul";
        String add="add";
        String sub="sub";
        String com="com";
        boolean check=false;
        int size=component_detail.size();
        Object component[]=component_detail.toArray();
        int  UF=gc.UFList.get(Integer.parseInt(component_detail.lastElement()+""));
        for(int i=0;i<size-2;i=i+2){
            power += Integer.parseInt(component[i+1]+"")*gc.component_area[i/2];
        }
        for(int i=0;i<oprcount.size();i++){
            int muxsize=0,noopr=0;
            noopr=oprcount.get(i);
             
           
           if(noopr==1){
             muxsize=0;  
           }else
            {
            for(int j=-1;j<10;j++){
                if(noopr>(2<<j) && noopr<=(2<<(j+1))){
                 muxsize=2<<(j+1);  
                // x=j+2;
                 break;
                }
            } 
           }
         //System.out.println("mux info  "+noopr+"   "+muxsize);  
         power=power+(muxsize-1)*gc.mux_area*3;
         //System.out.println("powerMUX= "+power);
        }
        //System.out.println("#transistor  "+power);
         power=power*0.00002933;
         //System.out.println("static power= "+power);
        
         //System.out.println("static power= "+power);
        return power;
    }
    
     
     public synchronized double calculateTex(Vector component_detail){
         //System.out.println("calculateTex call  ");
         check_predict=true;
         boolean check_predict2=false;
         oprcount=new <Integer> Vector();
          Vector<Object> temp=new <Object>Vector();
          int UF=1;
          UF=gc.UFList.get(Integer.parseInt(component_detail.lastElement()+""));
         gc = GlobalConstants.getInstance();
        double tex=0;
        int ltcc[]=new int[2];
        
        for(int i=0;i<component_detail.size()-2;i=i+2){
            if((component_detail.get(i)+"").equals("mul")){
                if(Integer.parseInt(component_detail.get(i+1)+"")<gc.pmul*UF){
                    check_predict=false;
                    if(Integer.parseInt(component_detail.get(i+1)+"")*2<=gc.pmul*UF && UF%Integer.parseInt(component_detail.get(i+1)+"")==0)
                      check_predict2=true; 
                }
              //  else if(Integer.parseInt(component_detail.get(i+1)+"")<=gc.pmul*UF && UF%Integer.parseInt(component_detail.get(i+1)+"")==0){
                 //   check_predict2=true;
              //  }
            }
            if((component_detail.get(i)+"").equals("add")){
                if(Integer.parseInt(component_detail.get(i+1)+"")<gc.padd*UF){
                    check_predict=false;
                    if(Integer.parseInt(component_detail.get(i+1)+"")*2<=gc.padd*UF &&UF%Integer.parseInt(component_detail.get(i+1)+"")==0)
                      check_predict2=true; 
                }
               // if(Integer.parseInt(component_detail.get(i+1)+"")<=gc.padd*UF && UF%Integer.parseInt(component_detail.get(i+1)+"")==0){
               //     check_predict2=true;
              //  }
            }
            
            if((component_detail.get(i)+"").equals("sub")){
                if(Integer.parseInt(component_detail.get(i+1)+"")<gc.psub*UF){
                    check_predict=false;
                    if(Integer.parseInt(component_detail.get(i+1)+"")*2<=gc.psub*UF && UF%Integer.parseInt(component_detail.get(i+1)+"")==0)
                      check_predict2=true;  
                }
               // if(Integer.parseInt(component_detail.get(i+1)+"")<=gc.psub*UF && UF%Integer.parseInt(component_detail.get(i+1)+"")==0){
               //     check_predict2=true;
               // }
            }
            //check_predict=false;
           
            temp.add(component_detail.get(i));
            temp.add(component_detail.get(i+1));
        }
        check_predict2=false;
        check_predict=false;
        UF=gc.UFList.get(Integer.parseInt(component_detail.lastElement()+""));
        if(check_predict){
        tex=calculate_cc(temp,UF);
        // gc.predictcount++;
        }
        else if(check_predict2){
          tex=calculate_tex_model2(temp,UF);
          gc.predictcount++;
        } 
        else{
        tex=calculateTexUnroll(temp,UF);
        }
        //calculate no of control step
        //int cs=0;
        //cs=(ltcc[0]+(UF-1)*ltcc[1]);
       // tex=((ltcc[0]+(UF-1)*ltcc[1])*(gc.setofdata/UF))+((gc.setofdata%UF)*ltcc[0]);
        
        //System.out.println("no of CS="+tex);
        //tex=tex*gc.component_clockcycle[0]/2;//calculate execution time
       // tex=tex*20;
        //System.out.println("time of execution  "+tex+"  "+ltcc[0]+"   "+ltcc[1]);
        //convert nano secound to micro second by dividing 1000
        return tex/1000;
    }
    
    
     public synchronized double calculate_cc(Vector compdetail,int UF){
         
        //System.out.println("calculate cc call");
         resource= new <Resource>Vector();
         //oprcount=new <Integer> Vector();
         conadd=0;
         double tex;
         String s="";
         String stc="",sfirst="";
         int noofoperation=0;
         Operation []opera;
         Object [] opr_arr;
         int ltcc[]=new int[2];
         ltcc[0]=0;ltcc[1]=0;
         //create operation list
         Vector<Object> operation= new <Object>Vector();
         for(int i=0;i<gc.beforeloop.size();i++){
           operation.add(gc.beforeloop.get(i));
             noofoperation++;  
         }
         for(int i=0;i<gc.loopbody.size();i++){
             operation.add(gc.loopbody.get(i));
             noofoperation++;
         }
         for(int i=0;i<gc.conditionstr.size();i++){
             if(gc.conditionstr.get(i).equals("+")){
                 operation.add("+");
                 conadd=Integer.parseInt(gc.conditionstr.get(i+3)+"");
                 //System.out.println("Con add opr no"+conadd);
             }
             else
             operation.add(gc.conditionstr.get(i));
             
             noofoperation++;
         }
         for(int i=0;i<gc.afterloop.size();i++){
           operation.add(gc.afterloop.get(i));
             noofoperation++;  
         }
         //System.out.println(operation.toString());
         // System.out.println("no of opr= "+noofoperation);
         noofoperation= noofoperation/4;
            opera=new Operation[noofoperation];
         for(int i=0;i<noofoperation;i++){
             opera[i]=new Operation();
         }
         int size1=compdetail.size();
        // int nomul,noadd,nosub;
         int NumberOfmult=0, NumberOfadd=0, NumberOfsub=0,NumberOfcom=0, T_latency = 0,T_total;
             int Time=0,Texec=0;
             int lat=0;
        //int max[] =new int [size/2];
        Object component[]=compdetail.toArray();
               oprcount.clear();
        //resouce initialization
  for(int a=0;a<size1;a=a+2){
      for(int b=0;b<Integer.parseInt(component[a+1]+"");b++){
         
          Resource temp=new Resource(component[a]+"");
          //System.out.println(component[a]+"   "+component[a+1]+""+ temp);
         resource.add(temp); 
         oprcount.add(0);
      }
  }
   
        //System.out.println("resource detail"+NumberOfmult+"  "+NumberOfadd+"  "+NumberOfsub+"   "+NumberOfcom);
        int adddelay,muldelay,subdelay,comdelay;
        /*adddelay=2;
        subdelay=2;
        comdelay=2;
        muldelay=gc.component_clockcycle[1]*2/gc.component_clockcycle[0];
        */
         adddelay=14;
        subdelay=14;
        comdelay=14;
        muldelay=550;
        opr_arr=operation.toArray();
         for(int i=0,j=0;i<noofoperation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=muldelay;
              opera[i].ltime=muldelay;
              //opera[i].ttime=muldelay;
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=adddelay;
              opera[i].ltime=adddelay;
              //opera[i].ttime=adddelay;
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=subdelay;
              opera[i].ltime=subdelay;
              //opera[i].ttime=subdelay;
              opera[i].operator="-";
          }
          if("<".equals(opr_arr[j])){
              opera[i].delay=comdelay;
              opera[i].ltime=comdelay;
             // opera[i].ttime=comdelay;
              opera[i].operator="<";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }
         /*
          for(int i=0,j=0;i<gc.no_operation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=gc.component_clockcycle[1];
              opera[i].ltime=gc.component_clockcycle[1];
              opera[i].ttime=gc.component_clockcycle[1];
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=gc.component_clockcycle[0];
              opera[i].ltime=gc.component_clockcycle[0];
              opera[i].ttime=gc.component_clockcycle[0];
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=gc.component_clockcycle[0];
              opera[i].ltime=gc.component_clockcycle[0];
              opera[i].ttime=gc.component_clockcycle[0];
              opera[i].operator="-";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }*/
        // System.out.println("test location");
             boolean exitflag = true, check_flag1 = false, check_flag2 = false,check_flag3 = false, check_flag4 = false,lat_flag=false,lat_flag2=false;
             boolean release=true,release2=true,incr=false,incr2=false,ok=true,pattern=true;
             while(exitflag)
             {
                 
                check_flag1 = false;check_flag3 = false; check_flag2 = false;check_flag4 = false; lat_flag=false;lat_flag2=false;
                release=true;release2=true;incr=false;incr2=false;
                //-------Latency------------------------------
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if((opera[j].ltime < opera[j].delay)&& (opera[j].ltime > 0))
                          {   
                              //System.out.println("check3 "+j);
                              incr=true;
                              //currently it is active
                              //opera[j].ltime--;
                              opera[j].ltime=opera[j].ltime-1;
                              //s=s+j+" ";
                              //System.out.println("operation "+j+" ");
                              check_flag2 = true;
                              if(!lat_flag){
                                lat=lat+1;
                              }
                              lat_flag=true;
                              if (opera[j].ltime == 0)
                              {
                                  for(int a=0;a<resource.size();a++){
                                      
                                      Resource temp=resource.get(a);
                                      if(temp.curOpr==j){
                                         // System.out.println("check4 " +j+ temp.operator);
                                          temp.status=true;
                                          temp.oprComTime.add(lat);
                                      }
                                  }
                                  release=false;
                                 
                              }
                          }
                        
                 }
                 if(incr){
                  //s=s+"\n";
                  incr=false;
                 }
                  
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if (opera[j].ltime > 0 && (opera[j].ltime == opera[j].delay) && release)
                         {
                                
                             //check if result is available 
                             boolean opr_a = false, opr_b = false, inputOper1 = false, inputOper2 = false;
                             for (int a = 0; a < noofoperation; a++)
                             {
                                 if (opera[a].result == opera[j].oper1)
                                 {
                                     inputOper1 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_a = true;
                                     }
                                 }
                                 if (opera[a].result == opera[j].oper2)
                                 {
                                     inputOper2 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_b = true;
                                     }
                                 }
                             }
                             //check if operator is available
                             if ((opr_a == true && opr_b == true) || (inputOper1 == false && inputOper2 == false)||
                                 (inputOper1 == false && opr_b == true) || (opr_a == true && inputOper2 == false))
                             {
                                // System.out.println("check1 "+j);
                                 for(int a=0;a<resource.size();a++){
                                      Resource temp=resource.get(a);
                                      //System.out.println("check5 "+j);
                                     // System.out.println(temp.operator+"   "+opera[j].operator+"   "+temp.status);
                                      if(temp.operator.equals(opera[j].operator) && temp.status){
                                          //System.out.println("check2 "+j);
                                          temp.status=false;
                                          temp.oprComplete.add(opera[j].result);
                                          temp.oprStartTime.add(lat);
                                          temp.curOpr=j;
                                          opera[j].ltime=opera[j].ltime-1;
                                          //s=s+j+" ";
                                          //System.out.println("operation1 "+j+" ");
                                          //check_flag1 = true;
                                          if(!lat_flag2 && !lat_flag){
                                           lat=lat+1;
                                     //s=s+"\n";
                                            }
                                            lat_flag2=true;
                                            //incr2=true;
                                            break;
                                         }
                                  }
                                 
                              
                             }
                     }
                        
                 }
                 
                 exitflag = false;
                
                 // if ((check_flag1 == true && check_flag2 == true) ||(check_flag3 == true && check_flag4 == true))
                   //  Time = Time+20;
                // else
                   Time = Time+1;
                  // s=s+"\n";
                   //System.out.println("Time= "+Time);
                    for (int b = 0; b < noofoperation; b++)
                    {
                        if (opera[b].ltime > 0)
                        {
                            //T_latency = Time;
                            exitflag = true;
                        }
                     
                    }
                    
                 //System.out.println("T_lat= "+T_latency+"   Texec= "+Texec);
             }
             //System.out.println("T_lat111= "+Time);
             ltcc[0]=lat;
            //System.out.println("Latency1111 = "+lat); 
            lat=0;
            Time=0;
         if(UF>1){    
        // after unrolling determine cii 
             exitflag=true;  
             lat=0;
             noofoperation=0;
             operation.clear();
             for(int i=0;i<gc.beforeloop.size();i++){
              operation.add(gc.beforeloop.get(i));
             noofoperation++;  
         }
             for(int i=0;i<gc.loopbody.size();i++){ 
             operation.add(gc.loopbody.get(i));
             noofoperation++;
            }
             for(int i=0;i<gc.unrollbody.size();i++){
             operation.add(gc.unrollbody.get(i));
             noofoperation++;
            }
             noofoperation= noofoperation/4;
             //System.out.println("size= "+gc.loopbody.size());
            for(int i=0;i<gc.conditionstr.size();i=i+4){
               operation.add(gc.conditionstr.get(i));
               //operation.add("<");
                if(Integer.parseInt(gc.conditionstr.get(i+1)+"")==0)
                    operation.add(gc.conditionstr.get(i+1));
                else
                operation.add(Integer.parseInt(gc.conditionstr.get(i+1)+"")+gc.loopbody.size()/4);
                
                if(Integer.parseInt(gc.conditionstr.get(i+2)+"")==0)
                    operation.add(gc.conditionstr.get(i+2));
                else
                operation.add(Integer.parseInt(gc.conditionstr.get(i+2)+"")+gc.loopbody.size()/4);
              
                operation.add(Integer.parseInt(gc.conditionstr.get(i+3)+"")+gc.loopbody.size()/4);  
             noofoperation++;
            }
            
            
            for(int i=0;i<gc.afterloop.size();i=i+4){
               operation.add(gc.afterloop.get(i));
               //operation.add("<");
                if(Integer.parseInt(gc.afterloop.get(i+1)+"")==0)
                    operation.add(gc.afterloop.get(i+1));
                else
                operation.add(Integer.parseInt(gc.afterloop.get(i+1)+"")+gc.loopbody.size()/4);
                
                if(Integer.parseInt(gc.afterloop.get(i+2)+"")==0)
                    operation.add(gc.afterloop.get(i+2));
                else
                operation.add(Integer.parseInt(gc.afterloop.get(i+2)+"")+gc.loopbody.size()/4);
              
                operation.add(Integer.parseInt(gc.afterloop.get(i+3)+"")+gc.loopbody.size()/4);  
             noofoperation++;
            }
            
            
            //System.out.println(operation.toString());
          //System.out.println("no of opr= "+noofoperation);
         opera=new Operation[noofoperation];
         for(int i=0;i<noofoperation;i++){
             opera[i]=new Operation();
         }
         opr_arr=operation.toArray();
         for(int i=0,j=0;i<noofoperation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=muldelay;
              opera[i].ltime=muldelay;
              //opera[i].ttime=muldelay;
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=adddelay;
              opera[i].ltime=adddelay;
              //opera[i].ttime=adddelay;
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=subdelay;
              opera[i].ltime=subdelay;
              //opera[i].ttime=subdelay;
              opera[i].operator="-";
          }
          if("<".equals(opr_arr[j])){
              opera[i].delay=comdelay;
              opera[i].ltime=comdelay;
             // opera[i].ttime=comdelay;
              opera[i].operator="<";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }
         
         while(exitflag)
             {
                 
                check_flag1 = false;check_flag3 = false; check_flag2 = false;check_flag4 = false; lat_flag=false;lat_flag2=false;
                release=true;release2=true;incr=false;incr2=false;pattern=true;
                //-------Latency------------------------------
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if((opera[j].ltime < opera[j].delay)&& (opera[j].ltime > 0))
                          {   
                              //System.out.println("check3 "+j);
                              incr=true;
                              //currently it is active
                              //opera[j].ltime--;
                              opera[j].ltime=opera[j].ltime-1;
                              s=s+opera[j].result+" ";
                              //System.out.println("operation "+j+" ");
                              check_flag2 = true;
                              if(!lat_flag){
                                lat=lat+1;
                              }
                              lat_flag=true;
                              if (opera[j].ltime == 0)
                              {
                                  for(int a=0;a<resource.size();a++){
                                      
                                      Resource temp=resource.get(a);
                                      if(temp.curOpr==j){
                                         // System.out.println("check4 " +j+ temp.operator);
                                          temp.status=true;
                                          //temp.oprComTime.add(lat);
                                      }
                                  }
                                  release=false;
                                 
                              }
                          }
                        
                 }
                 if(incr){
                  s=s+"\n";
                  incr=false;
                 }
                  
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if (opera[j].ltime > 0 && (opera[j].ltime == opera[j].delay) && release)
                         {
                                
                             //check if result is available 
                             boolean opr_a = false, opr_b = false, inputOper1 = false, inputOper2 = false;
                             for (int a = 0; a < noofoperation; a++)
                             {
                                 if (opera[a].result == opera[j].oper1)
                                 {
                                     inputOper1 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_a = true;
                                     }
                                 }
                                 if (opera[a].result == opera[j].oper2)
                                 {
                                     inputOper2 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_b = true;
                                     }
                                 }
                             }
                             /*
                             //check for pattern
                             if(j>(gc.loopbody.size()/4+gc.beforeloop.size()/4-1)){
                                 //System.out.println("operation no "+j);
                             for(int i=0;i<(gc.loopbody.size()/4+gc.beforeloop.size()/4-1);i++){
                                 if(opera[j].operator.equals(opera[i].operator)){
                                    if(opera[i].ltime==opera[i].delay){
                                        //System.out.println("check11");
                                        pattern=false;
                                    } 
                                 }
                             }
                             }
                             */
                             //check if operator is available
                             if ((opr_a == true && opr_b == true) || (inputOper1 == false && inputOper2 == false)||
                                 (inputOper1 == false && opr_b == true) || (opr_a == true && inputOper2 == false))
                             {
                                 if(pattern){
                                // System.out.println("check1 "+j);
                                 for(int a=0;a<resource.size();a++){
                                      Resource temp=resource.get(a);
                                      //System.out.println("check5 "+j);
                                     // System.out.println(temp.operator+"   "+opera[j].operator+"   "+temp.status);
                                      
                                      if(temp.operator.equals(opera[j].operator) && temp.status){
                                          //System.out.println("check2 "+j);
                                          temp.status=false;
                                         // temp.oprComplete.add(opera[j].result);
                                         // temp.oprStartTime.add(lat);
                                          temp.curOpr=j;
                                          opera[j].ltime=opera[j].ltime-1;
                                          s=s+opera[j].result+" ";
                                          //System.out.println("operation1 "+j+" ");
                                          check_flag1 = true;
                                          if(!lat_flag2 && !lat_flag){
                                           lat=lat+1;
                                            //s=s+"\n";
                                            }
                                            lat_flag2=true;
                                            incr2=true;
                                            break;
                                         }
                                  }
                                 }  
                              
                             }
                     }
                        
                 }
                 
                 exitflag = false;
                
                 // if ((check_flag1 == true && check_flag2 == true) ||(check_flag3 == true && check_flag4 == true))
                   //  Time = Time+20;
                // else
                   Time = Time+1;
                   s=s+"\n";
                   //System.out.println("Time= "+Time);
                    for (int b = 0; b < noofoperation; b++)
                    {
                        if (opera[b].ltime > 0)
                        {
                            //T_latency = Time;
                            exitflag = true;
                        }
                     
                    }
                    
                 //System.out.println("T_lat= "+T_latency+"   Texec= "+Texec);
             }
        ltcc[1]=lat-ltcc[0];
         }
         //System.out.println("T_lat= "+Time);
          
            //int Tc = Time-lat ;
            //gc.schedule=gc.schedule+"\n Latency=  "+Latency+"\n";
            //ltcc[0]=Latency*gc.component_clockcycle[0]/2;
            //ltcc[1]=Tc*gc.component_clockcycle[0]/2;
 //ltcc[0]=lat;
 //ltcc[1]=Tc;
    // gc.schedule=gc.schedule+"\n Latency=  "+ltcc[0]+"\n";
 //System.out.println("Latancy="+ltcc[0]);
 //System.out.println("Cycle Time="+ltcc[1]);
// System.out.println(s);
  //System.out.println("\n\n\n"+sfirst);
   cs=(ltcc[0]+(UF-1)*ltcc[1]);
    tex=((ltcc[0]+(UF-1)*ltcc[1])*(gc.setofdata/UF))+((gc.setofdata%UF)*ltcc[0]);
    tex *=20;
    
    boolean check=false;
    int noopr=0;
    for(int i=0;i<resource.size();i++){
        for(int m=0;m<gc.noofnestedloop;m++){
        check=resource.get(i).oprComplete.contains(conadd);
         if(check)
             break;
        }
            if(check){
               noopr=resource.get(i).oprComplete.size()-1; 
            }
            else
            noopr=resource.get(i).oprComplete.size();
                     
            if((resource.get(i).operator.equals("<"))){
                noopr=noopr;
           }else
           {
               noopr=noopr*UF;
           }
           if(check){
               noopr=noopr+1; 
            }
            
        int cnt=oprcount.get(i);
        oprcount.set(i, (cnt+noopr));
        check=false;
        noopr=0;
    }
 return tex;
      
    }
     
   public synchronized double calculateArea(Vector component_detail)
    {
        //System.out.println("strat calculate Area");
        double area=0.0;
         int ltcc[]=new int[2];
         //calculateTex(component_detail);
          int  UF=gc.UFList.get(Integer.parseInt(component_detail.lastElement()+""));
      
      
      Vector<Object> temp=new <Object>Vector();
      for(int i=0;i<component_detail.size()-2;i++){
            temp.add(component_detail.get(i));
        }
        
      if(check_predict){
        calculate_cc(temp,UF);
         gc.predictcount++;
        }
        else
        calculateTexUnroll(temp,UF);
       
        
       /*String mul="mul";
        String add="add";
        String sub="sub";
        String com="com";
        
        int size=component_detail.size();
        Object component[]=component_detail.toArray();
        for(int i=0;i<size;i=i+2){
            if(mul.equals(component[i]+"")){
                area=area+Integer.parseInt(component[i+1]+"")*2464;
                //i++;
            }
               
            if(add.equals(component[i]+"")){
               area=area+Integer.parseInt(component[i+1]+"")*2030;
               //i++;
            }
           if("sub".equals(component[i]+"")){
               area=area+Integer.parseInt(component[i+1]+"")*2030;
               i++;
            }
            if("com".equals(component[i]+"")){
               area=area+Integer.parseInt(component[i+1]+"")*2030;
               i++;
            }
            
        }*/
        boolean check=false;
        int size=component_detail.size();
        Object component[]=component_detail.toArray();
       // int  UF=gc.UFList.get(Integer.parseInt(component_detail.lastElement()+""));
        for(int i=0;i<size-2;i=i+2){
            area += Integer.parseInt(component[i+1]+"")*gc.component_area[i/2];
        }
        for(int i=0;i<oprcount.size();i++){
            int muxsize=0,noopr=0;
            noopr=oprcount.get(i);
   
           if(noopr==1){
             muxsize=0;  
           }else
            {
            for(int j=-1;j<10;j++){
                if(noopr>(2<<j) && noopr<=(2<<(j+1))){
                 muxsize=2<<(j+1);  
                // x=j+2;
                 break;
                }
            } 
           }
         //System.out.println("mux info  "+noopr+"   "+muxsize);  
         area=area+(muxsize-1)*gc.mux_area*3;
         //System.out.println("powerMUX= "+power);
        }
        
        //Enumeration e=component_detail.elements();
         //while(e.hasMoreElements()){
        //System.out.println("area is = "+area);
        //System.out.println("end calculate Area");
            return area;   
         }
   
   public Vector preProcessing(int I)
   {
       Vector<Integer> UFList=new <Integer>Vector();
       boolean flag=true;
       UFList.add(1);
       UFList.add(1);
       for(int UF=2;UF<=I;UF++){
           if(!((I%UF)>(UF/2)) && (UF !=(I -I%UF))){
           //if((I%UF)<(UF/2)){ 
               UFList.add(UF);
               flag=false;
           }
           else if((I%UF)<(UF/2) && flag){
               UFList.add(UF);
           }
       }
       UFList.add(I);
       System.out.println(UFList.toString());
       return UFList;
   }
  public double calculateTexUnroll(Vector compdetail, int UF){
    double texe=0.0;
    String s="";
    resource=null;
    resource= new <Resource>Vector();
         conadd=0;
          boolean exitflag = true,lat_flag=false,lat_flag2=false;
             boolean release=true,incr=false;
         Operation []opera;
         Object [] opr_arr;
         int lat=0,latseq=0;
    Vector<Object> operation= new <Object>Vector();
    int noofoperation=0;
             
         int size1=compdetail.size();
          Object component[]=compdetail.toArray();
               
        //resouce initialization
          oprcount.clear();
  for(int a=0;a<size1;a=a+2){
      for(int b=0;b<Integer.parseInt(component[a+1]+"");b++){
         
          Resource temp=new Resource(component[a]+"");
          //System.out.println(component[a]+"   "+component[a+1]+""+ temp);
         resource.add(temp); 
         oprcount.add(0);
      }
  }
   
        
        int adddelay,muldelay,subdelay,comdelay;
        /*adddelay=2;
        subdelay=2;
        comdelay=2;
        muldelay=gc.component_clockcycle[1]*2/gc.component_clockcycle[0];
        */
         adddelay=14;
        subdelay=14;
        comdelay=14;
        muldelay=550;
        
        /***************** before loop start   *********************/
     if(gc.beforeloop.size()>0){
            
                  lat=0;
                   noofoperation=0;
            for(int a=0;a<resource.size();a++){
                                      
                     Resource temp=resource.get(a);
                     temp.status=true;
            }
            operation.clear();
            for(int i=0;i<gc.beforeloop.size();i++){
              operation.add(gc.beforeloop.get(i));
             noofoperation++;  
         }
            noofoperation /=4;
            opera=new Operation[noofoperation];
            for(int i=0;i<noofoperation;i++){
             opera[i]=new Operation();
         }
          opr_arr=operation.toArray();
         for(int i=0,j=0;i<noofoperation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=muldelay;
              opera[i].ltime=muldelay;
              //opera[i].ttime=muldelay;
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=adddelay;
              opera[i].ltime=adddelay;
              //opera[i].ttime=adddelay;
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=subdelay;
              opera[i].ltime=subdelay;
              //opera[i].ttime=subdelay;
              opera[i].operator="-";
          }
          if("<".equals(opr_arr[j])){
              opera[i].delay=comdelay;
              opera[i].ltime=comdelay;
             // opera[i].ttime=comdelay;
              opera[i].operator="<";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }
        
        // System.out.println("test location");
             exitflag = true;lat_flag=false;lat_flag2=false;
             release=true;incr=false;
             while(exitflag)
             {
                 
                lat_flag=false;lat_flag2=false;
                release=true;incr=false;
                //-------Latency------------------------------
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if((opera[j].ltime < opera[j].delay)&& (opera[j].ltime > 0))
                          {   
                              //System.out.println("check3 "+j);
                              incr=true;
                              //currently it is active
                              //opera[j].ltime--;
                              opera[j].ltime=opera[j].ltime-1;
                              
                              if(!lat_flag){
                                lat=lat+1;
                              }
                              lat_flag=true;
                              if (opera[j].ltime == 0)
                              {
                                  for(int a=0;a<resource.size();a++){
                                      
                                      Resource temp=resource.get(a);
                                      if(temp.curOpr==j){
                                         // System.out.println("check4 " +j+ temp.operator);
                                          temp.status=true;
                                          temp.oprComTime.add(lat);
                                      }
                                  }
                                  release=false;
                                 
                              }
                          }
                        
                 }
                 if(incr){
                  //s=s+"\n";
                  incr=false;
                 }
                  
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if (opera[j].ltime > 0 && (opera[j].ltime == opera[j].delay) && release)
                         {
                                
                             //check if result is available 
                             boolean opr_a = false, opr_b = false, inputOper1 = false, inputOper2 = false;
                             for (int a = 0; a < noofoperation; a++)
                             {
                                 if (opera[a].result == opera[j].oper1)
                                 {
                                     inputOper1 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_a = true;
                                     }
                                 }
                                 if (opera[a].result == opera[j].oper2)
                                 {
                                     inputOper2 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_b = true;
                                     }
                                 }
                             }
                             //check if operator is available
                             if ((opr_a == true && opr_b == true) || (inputOper1 == false && inputOper2 == false)||
                                 (inputOper1 == false && opr_b == true) || (opr_a == true && inputOper2 == false))
                             {
                                // System.out.println("check1 "+j);
                                 for(int a=0;a<resource.size();a++){
                                      Resource temp=resource.get(a);
                                      //System.out.println("check5 "+j);
                                     // System.out.println(temp.operator+"   "+opera[j].operator+"   "+temp.status);
                                      if(temp.operator.equals(opera[j].operator) && temp.status){
                                          //System.out.println("check2 "+j);
                                          temp.status=false;
                                          temp.oprComplete.add(opera[j].result);
                                          temp.oprStartTime.add(lat);
                                          temp.curOpr=j;
                                          opera[j].ltime=opera[j].ltime-1;
                                          //s=s+j+" ";
                                          //System.out.println("operation1 "+j+" ");
                                          //check_flag1 = true;
                                          if(!lat_flag2 && !lat_flag){
                                           lat=lat+1;
                                     //s=s+"\n";
                                            }
                                            lat_flag2=true;
                                            //incr2=true;
                                            break;
                                         }
                                  }
                                 
                              
                             }
                     }
                        
                 }
                 
                 exitflag = false;
                
                 
                    for (int b = 0; b < noofoperation; b++)
                    {
                        if (opera[b].ltime > 0)
                        {
                            //T_latency = Time;
                            exitflag = true;
                        }
                     
                    }
                    
                 //System.out.println("T_lat= "+T_latency+"   Texec= "+Texec);
             }  
             texe += lat;
             //System.out.println("Before loop");
         }
                    /***************** before loop end   *********************/
                   
                    /***************** unrolled loop start   *********************/
            operation.clear();
              noofoperation=0;
             for(int i=0;i<gc.loopbody.size();i++){ 
             operation.add(gc.loopbody.get(i));
             noofoperation++;
            }
             for(int j=0;j<UF-1;j++){
            if(j==0){
             for(int i=0;i<gc.unrollbody.size();i++){
             operation.add(gc.unrollbody.get(i));
             noofoperation++;
            }
                 }
           else{
                  for(int i=0;i<gc.unrollbody.size();i=i+4){
               operation.add(gc.unrollbody.get(i));
               //operation.add("<");
                if(Integer.parseInt(gc.unrollbody.get(i+1)+"")==0)
                    operation.add(gc.unrollbody.get(i+1));
                else
                operation.add(Integer.parseInt(gc.unrollbody.get(i+1)+"")+(gc.loopbody.size()/4*j));
                
                if(Integer.parseInt(gc.unrollbody.get(i+2)+"")==0)
                    operation.add(gc.unrollbody.get(i+2));
                else
                operation.add(Integer.parseInt(gc.unrollbody.get(i+2)+"")+(gc.loopbody.size()/4*j));
              
                operation.add(Integer.parseInt(gc.unrollbody.get(i+3)+"")+(gc.loopbody.size()/4*j));  
             noofoperation+=4;
            }
          }
            }
             
             noofoperation= noofoperation/4;
             //System.out.println("size= "+gc.loopbody.size());
              //System.out.println(gc.conditionstr.toString());
            for(int i=0;i<gc.conditionstr.size();i=i+4){
               operation.add(gc.conditionstr.get(i));
               //operation.add("<");
                if(Integer.parseInt(gc.conditionstr.get(i+1)+"")==0)
                    operation.add(gc.conditionstr.get(i+1));
                else
                operation.add(Integer.parseInt(gc.conditionstr.get(i+1)+"")+(gc.loopbody.size()/4)*(UF-1));
                
                if(Integer.parseInt(gc.conditionstr.get(i+2)+"")==0)
                    operation.add(gc.conditionstr.get(i+2));
                else
                operation.add(Integer.parseInt(gc.conditionstr.get(i+2)+"")+(gc.loopbody.size()/4)*(UF-1));
              
                operation.add(Integer.parseInt(gc.conditionstr.get(i+3)+"")+(gc.loopbody.size()/4)*(UF-1));  
             noofoperation++;
            }
            //System.out.println(operation.toString());
            opera=new Operation[noofoperation];
         for(int i=0;i<noofoperation;i++){
             opera[i]=new Operation();
         }
        opr_arr=operation.toArray();
         for(int i=0,j=0;i<noofoperation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=muldelay;
              opera[i].ltime=muldelay;
              //opera[i].ttime=muldelay;
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=adddelay;
              opera[i].ltime=adddelay;
              //opera[i].ttime=adddelay;
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=subdelay;
              opera[i].ltime=subdelay;
              //opera[i].ttime=subdelay;
              opera[i].operator="-";
          }
          if("<".equals(opr_arr[j])){
              opera[i].delay=comdelay;
              opera[i].ltime=comdelay;
             // opera[i].ttime=comdelay;
              opera[i].operator="<";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }
        
        // System.out.println("test location");
             exitflag = true;lat_flag=false;lat_flag2=false;
             release=true;incr=false;
             while(exitflag)
             {
                 
                lat_flag=false;lat_flag2=false;
                release=true;incr=false;
                //-------Latency------------------------------
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if((opera[j].ltime < opera[j].delay)&& (opera[j].ltime > 0))
                          {   
                              //System.out.println("check3 "+j);
                              //incr=true;
                              //currently it is active
                              //opera[j].ltime--;
                              opera[j].ltime=opera[j].ltime-1;
                              
                              if(!lat_flag){
                                lat=lat+1;
                              }
                              lat_flag=true;
                              if (opera[j].ltime == 0)
                              {
                                  for(int a=0;a<resource.size();a++){
                                      
                                      Resource temp=resource.get(a);
                                      if(temp.curOpr==j){
                                         // System.out.println("check4 " +j+ temp.operator);
                                          temp.status=true;
                                          temp.oprComTime.add(lat);
                                      }
                                  }
                                  release=false;
                                 
                              }
                          }
                        
                 }
                
                  
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if (opera[j].ltime > 0 && (opera[j].ltime == opera[j].delay) && release)
                         {
                                
                             //check if result is available 
                             boolean opr_a = false, opr_b = false, inputOper1 = false, inputOper2 = false;
                             for (int a = 0; a < noofoperation; a++)
                             {
                                 if (opera[a].result == opera[j].oper1)
                                 {
                                     inputOper1 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_a = true;
                                     }
                                 }
                                 if (opera[a].result == opera[j].oper2)
                                 {
                                     inputOper2 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_b = true;
                                     }
                                 }
                             }
                             //check if operator is available
                             if ((opr_a == true && opr_b == true) || (inputOper1 == false && inputOper2 == false)||
                                 (inputOper1 == false && opr_b == true) || (opr_a == true && inputOper2 == false))
                             {
                                // System.out.println("check1 "+j);
                                 for(int a=0;a<resource.size();a++){
                                      Resource temp=resource.get(a);
                                      //System.out.println("check5 "+j);
                                     // System.out.println(temp.operator+"   "+opera[j].operator+"   "+temp.status);
                                      if(temp.operator.equals(opera[j].operator) && temp.status){
                                          //System.out.println("check2 "+j);
                                          temp.status=false;
                                          temp.oprComplete.add(opera[j].result);
                                          temp.oprStartTime.add(lat);
                                          temp.curOpr=j;
                                          opera[j].ltime=opera[j].ltime-1;
                                          
                                          //print schedule
                                         // s=s+opera[j].result+" ";
                                          
                                          //s=s+j+" ";
                                          //System.out.println("operation1 "+j+" ");
                                          //check_flag1 = true;
                                          if(!lat_flag2 && !lat_flag){
                                           lat=lat+1;
                                     //s=s+"\n";
                                            }
                                            lat_flag2=true;
                                            incr=true;
                                            break;
                                         }
                                  }
                                 
                              
                             }
                     }
                        
                 }
                  if(incr){
                  //s=s+"\n";
                  incr=false;
                 }
                 
                 exitflag = false;
                
                 
                    for (int b = 0; b < noofoperation; b++)
                    {
                        if (opera[b].ltime > 0)
                        {
                            //T_latency = Time;
                            exitflag = true;
                        }
                     
                    }
                    
                 //System.out.println("T_lat= "+T_latency+"   Texec= "+Texec);
             }
             //System.out.println(s);
             cs=lat;
            texe=lat*(gc.setofdata/UF);
            System.out.println("pipelined texe= "+texe);
             /***************** unrolled loop end   *********************/
            
            
             /***************** sequential loop start   *********************/
            if((gc.setofdata%UF)!=0){
                lat=0;
                noofoperation=0;
            for(int a=0;a<resource.size();a++){
                                      
                     Resource temp=resource.get(a);
                     temp.status=true;
            }
            operation.clear();
            for(int i=0;i<gc.loopbody.size();i++){
              operation.add(gc.loopbody.get(i));
             noofoperation++;  
         }
            noofoperation /=4;
            //System.out.println("number of opr= "+noofoperation);
            opera=new Operation[noofoperation];
         for(int i=0;i<noofoperation;i++){
             opera[i]=new Operation();
         }
          opr_arr=operation.toArray();
         for(int i=0,j=0;i<noofoperation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=muldelay;
              opera[i].ltime=muldelay;
              //opera[i].ttime=muldelay;
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=adddelay;
              opera[i].ltime=adddelay;
              //opera[i].ttime=adddelay;
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=subdelay;
              opera[i].ltime=subdelay;
              //opera[i].ttime=subdelay;
              opera[i].operator="-";
          }
          if("<".equals(opr_arr[j])){
              opera[i].delay=comdelay;
              opera[i].ltime=comdelay;
             // opera[i].ttime=comdelay;
              opera[i].operator="<";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }
        
        // System.out.println("test location");
             exitflag = true;lat_flag=false;lat_flag2=false;
             release=true;incr=false;
             while(exitflag)
             {
                 
                lat_flag=false;lat_flag2=false;
                release=true;incr=false;
                //-------Latency------------------------------
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if((opera[j].ltime < opera[j].delay)&& (opera[j].ltime > 0))
                          {   
                              //System.out.println("check3 "+j);
                              incr=true;
                              //currently it is active
                              //opera[j].ltime--;
                              opera[j].ltime=opera[j].ltime-1;
                              
                              if(!lat_flag){
                                lat=lat+1;
                              }
                              lat_flag=true;
                              if (opera[j].ltime == 0)
                              {
                                  for(int a=0;a<resource.size();a++){
                                      
                                      Resource temp=resource.get(a);
                                      if(temp.curOpr==j){
                                         // System.out.println("check4 " +j+ temp.operator);
                                          temp.status=true;
                                          temp.oprComTime.add(lat);
                                      }
                                  }
                                  release=false;
                                 
                              }
                          }
                        
                 }
                 if(incr){
                  //s=s+"\n";
                  incr=false;
                 }
                  
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if (opera[j].ltime > 0 && (opera[j].ltime == opera[j].delay) && release)
                         {
                                
                             //check if result is available 
                             boolean opr_a = false, opr_b = false, inputOper1 = false, inputOper2 = false;
                             for (int a = 0; a < noofoperation; a++)
                             {
                                 if (opera[a].result == opera[j].oper1)
                                 {
                                     inputOper1 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_a = true;
                                     }
                                 }
                                 if (opera[a].result == opera[j].oper2)
                                 {
                                     inputOper2 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_b = true;
                                     }
                                 }
                             }
                             //check if operator is available
                             if ((opr_a == true && opr_b == true) || (inputOper1 == false && inputOper2 == false)||
                                 (inputOper1 == false && opr_b == true) || (opr_a == true && inputOper2 == false))
                             {
                                // System.out.println("check1 "+j);
                                 for(int a=0;a<resource.size();a++){
                                      Resource temp=resource.get(a);
                                      //System.out.println("check5 "+j);
                                     // System.out.println(temp.operator+"   "+opera[j].operator+"   "+temp.status);
                                      if(temp.operator.equals(opera[j].operator) && temp.status){
                                          //System.out.println("check2 "+j);
                                          temp.status=false;
                                          temp.oprComplete.add(opera[j].result);
                                          temp.oprStartTime.add(lat);
                                          temp.curOpr=j;
                                          opera[j].ltime=opera[j].ltime-1;
                                          //s=s+j+" ";
                                          //System.out.println("operation1 "+j+" ");
                                          //check_flag1 = true;
                                          if(!lat_flag2 && !lat_flag){
                                           lat=lat+1;
                                     //s=s+"\n";
                                            }
                                            lat_flag2=true;
                                            //incr2=true;
                                            break;
                                         }
                                  }
                                 
                              
                             }
                     }
                        
                 }
                 
                 exitflag = false;
                
                 
                    for (int b = 0; b < noofoperation; b++)
                    {
                        if (opera[b].ltime > 0)
                        {
                            //T_latency = Time;
                            exitflag = true;
                        }
                     
                    }
                    
                 //System.out.println("T_lat= "+T_latency+"   Texec= "+Texec);
             }  
             texe += (lat*(gc.setofdata%UF));
             System.out.println("Sequential and pipielined  ="+texe );
         }
             /***************** sequential loop end   *********************/
            
             /***************** After loop start   *********************/
 
     if(gc.afterloop.size()>0){
            
                  lat=0;
                   noofoperation=0;
            for(int a=0;a<resource.size();a++){
                                      
                     Resource temp=resource.get(a);
                     temp.status=true;
            }
            operation.clear();
            for(int i=0;i<gc.afterloop.size();i++){
              operation.add(gc.afterloop.get(i));
             noofoperation++;  
         }
            noofoperation /=4;
          opr_arr=operation.toArray();
         for(int i=0,j=0;i<noofoperation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=muldelay;
              opera[i].ltime=muldelay;
              //opera[i].ttime=muldelay;
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=adddelay;
              opera[i].ltime=adddelay;
              //opera[i].ttime=adddelay;
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=subdelay;
              opera[i].ltime=subdelay;
              //opera[i].ttime=subdelay;
              opera[i].operator="-";
          }
          if("<".equals(opr_arr[j])){
              opera[i].delay=comdelay;
              opera[i].ltime=comdelay;
             // opera[i].ttime=comdelay;
              opera[i].operator="<";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }
        
        // System.out.println("test location");
             exitflag = true;lat_flag=false;lat_flag2=false;
             release=true;incr=false;
             while(exitflag)
             {
                 
                lat_flag=false;lat_flag2=false;
                release=true;incr=false;
                //-------Latency------------------------------
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if((opera[j].ltime < opera[j].delay)&& (opera[j].ltime > 0))
                          {   
                              //System.out.println("check3 "+j);
                              incr=true;
                              //currently it is active
                              //opera[j].ltime--;
                              opera[j].ltime=opera[j].ltime-1;
                              
                              if(!lat_flag){
                                lat=lat+1;
                              }
                              lat_flag=true;
                              if (opera[j].ltime == 0)
                              {
                                  for(int a=0;a<resource.size();a++){
                                      
                                      Resource temp=resource.get(a);
                                      if(temp.curOpr==j){
                                         // System.out.println("check4 " +j+ temp.operator);
                                          temp.status=true;
                                          temp.oprComTime.add(lat);
                                      }
                                  }
                                  release=false;
                                 
                              }
                          }
                        
                 }
                 if(incr){
                  //s=s+"\n";
                  incr=false;
                 }
                  
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if (opera[j].ltime > 0 && (opera[j].ltime == opera[j].delay) && release)
                         {
                                
                             //check if result is available 
                             boolean opr_a = false, opr_b = false, inputOper1 = false, inputOper2 = false;
                             for (int a = 0; a < noofoperation; a++)
                             {
                                 if (opera[a].result == opera[j].oper1)
                                 {
                                     inputOper1 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_a = true;
                                     }
                                 }
                                 if (opera[a].result == opera[j].oper2)
                                 {
                                     inputOper2 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_b = true;
                                     }
                                 }
                             }
                             //check if operator is available
                             if ((opr_a == true && opr_b == true) || (inputOper1 == false && inputOper2 == false)||
                                 (inputOper1 == false && opr_b == true) || (opr_a == true && inputOper2 == false))
                             {
                                // System.out.println("check1 "+j);
                                 for(int a=0;a<resource.size();a++){
                                      Resource temp=resource.get(a);
                                      //System.out.println("check5 "+j);
                                     // System.out.println(temp.operator+"   "+opera[j].operator+"   "+temp.status);
                                      if(temp.operator.equals(opera[j].operator) && temp.status){
                                          //System.out.println("check2 "+j);
                                          temp.status=false;
                                          temp.oprComplete.add(opera[j].result);
                                          temp.oprStartTime.add(lat);
                                          temp.curOpr=j;
                                          opera[j].ltime=opera[j].ltime-1;
                                          //s=s+j+" ";
                                          //System.out.println("operation1 "+j+" ");
                                          //check_flag1 = true;
                                          if(!lat_flag2 && !lat_flag){
                                           lat=lat+1;
                                     //s=s+"\n";
                                            }
                                            lat_flag2=true;
                                            //incr2=true;
                                            break;
                                         }
                                  }
                                 
                              
                             }
                     }
                        
                 }
                 
                 exitflag = false;
                
                 
                    for (int b = 0; b < noofoperation; b++)
                    {
                        if (opera[b].ltime > 0)
                        {
                            //T_latency = Time;
                            exitflag = true;
                        }
                     
                    }
                    
                 //System.out.println("T_lat= "+T_latency+"   Texec= "+Texec);
             }  
             texe += lat;
         }
     texe *=20;
      /***************** after loop end   *********************/
     
      int noopr=0;
    for(int i=0;i<oprcount.size();i++){
        noopr=resource.get(i).oprComplete.size();  
        int cnt=oprcount.get(i);
        oprcount.set(i, (cnt+noopr));
         noopr=0;
    }
     return texe; 
}
  
  public double calculate_tex_model2(Vector compdetail, int UF){
      double texe=0.0;
      //conadd=new int[gc.noofnestedloop];
         resource= new <Resource>Vector();
         //double tex;
         String s="";
         String stc="",sfirst="";
         int noofoperation=0;
         Operation []opera;
         Object [] opr_arr;
         int ltcc[]=new int[2];
         ltcc[0]=0;ltcc[1]=0;
         boolean ltflag=true,ltflag2=true;
         boolean docount=false;
         //create operation list
        
         Vector<Object> operation= new <Object>Vector();
         int NumberOfmult=0, NumberOfadd=0, NumberOfsub=0,NumberOfcom=0, T_latency = 0,T_total;
             int Time=0,Texec=0;
             int lat=0;
             int adddelay,muldelay,subdelay,comdelay;
             adddelay=14;
             subdelay=14;
             comdelay=14;
             muldelay=550;

             boolean exitflag = true, check_flag1 = false, check_flag2 = false,check_flag3 = false, check_flag4 = false,lat_flag=false,lat_flag2=false;
             boolean release=true,release2=true,incr=false,incr2=false,ok=true,pattern=true;
      
        //int max[] =new int [size/2];
        Object component[]=compdetail.toArray();
               
        //resouce initialization
        oprcount.clear();
         int size1=compdetail.size();
  for(int a=0;a<size1;a=a+2){
      for(int b=0;b<Integer.parseInt(component[a+1]+"");b++){
         
          Resource temp=new Resource(component[a]+"");
          //System.out.println(component[a]+"   "+component[a+1]+""+ temp);
         resource.add(temp); 
         oprcount.add(0);
      }
  }
  //Determine UF for calculating Texe
  int ufe[]= new int[compdetail.size()/2];
 for(int i=0;i<compdetail.size()-2;i=i+2){
            if((compdetail.get(i)+"").equals("mul")&& gc.pmul !=0){
             ufe[i]=   Integer.parseInt(compdetail.get(i+1)+"")/gc.pmul;
                
            }
            if((compdetail.get(i)+"").equals("add") && gc.padd !=0){
                ufe[i]=   Integer.parseInt(compdetail.get(i+1)+"")/gc.padd;
            }
            if((compdetail.get(i)+"").equals("sub") && gc.psub !=0){
              ufe[i]=   Integer.parseInt(compdetail.get(i+1)+"")/gc.psub;  
            }
            }
  int max=ufe[0];
  for(int b=1; b<ufe.length;b++){
      System.out.println("UFE  "+ufe[b]);
      if(max<ufe[b]){
          max=ufe[b];
      }
  }
  if(max==0)
      max=1;
 
  
  
  
         

                    /***************** before loop end   *********************/
             
     operation.clear();
              noofoperation=0;
             for(int i=0;i<gc.loopbody.size();i++){ 
             operation.add(gc.loopbody.get(i));
             //noofoperation++;
            }
             for(int j=0;j<max-1;j++){
            if(j==0){
             for(int i=0;i<gc.unrollbody.size();i++){
             operation.add(gc.unrollbody.get(i));
             //noofoperation++;
            }
                 }
           else{
                  for(int i=0;i<gc.unrollbody.size();i=i+4){
               operation.add(gc.unrollbody.get(i));
               //operation.add("<");
                if(Integer.parseInt(gc.unrollbody.get(i+1)+"")==0)
                    operation.add(gc.unrollbody.get(i+1));
                else
                operation.add(Integer.parseInt(gc.unrollbody.get(i+1)+"")+(gc.loopbody.size()/4*j));
                
                if(Integer.parseInt(gc.unrollbody.get(i+2)+"")==0)
                    operation.add(gc.unrollbody.get(i+2));
                else
                operation.add(Integer.parseInt(gc.unrollbody.get(i+2)+"")+(gc.loopbody.size()/4*j));
              
                operation.add(Integer.parseInt(gc.unrollbody.get(i+3)+"")+(gc.loopbody.size()/4*j));  
             //noofoperation+=4;
            }
          }
            }
             
             //noofoperation= noofoperation/4;
             //System.out.println("size= "+gc.loopbody.size());
              //System.out.println(gc.conditionstr.toString());
            
            lat=0;
            Time=0;
         //if(UF>1)
            {    
             int size=0;
             int setofdata=0;
        // after unrolling determine cii 
             exitflag=true;  
             lat=0;
             noofoperation=0;
             int ss=operation.size();
             for(int x=0;x<ss;x=x+4){
                operation.add(operation.get(x));
                
                if(Integer.parseInt(operation.get(x+1)+"")==0)
                    operation.add(operation.get(x+1));
                 else{
                        operation.add(Integer.parseInt(operation.get(x+1)+"")+(ss/4));
                }
                if(Integer.parseInt(operation.get(x+2)+"")==0)
                    operation.add(operation.get(x+2));
                 else
                operation.add(Integer.parseInt(operation.get(x+2)+"")+(ss/4));
              
                operation.add(Integer.parseInt(operation.get(x+3)+"")+(ss/4));
             }
             
             for(int i=0;i<gc.conditionstr.size();i=i+4){
                 if(gc.conditionstr.get(i).equals("+")){
                 operation.add("+");
                 conadd=Integer.parseInt(gc.conditionstr.get(i+3)+"")+(gc.loopbody.size()/4)*(max*2-1);
                 //System.out.println("Con add opr no"+conadd);
             }
                 else{
                operation.add(gc.conditionstr.get(i));
                 }
               //operation.add("<");
                if(Integer.parseInt(gc.conditionstr.get(i+1)+"")==0)
                    operation.add(gc.conditionstr.get(i+1));
                else
                operation.add(Integer.parseInt(gc.conditionstr.get(i+1)+"")+(gc.loopbody.size()/4)*(max*2-1));
                
                if(Integer.parseInt(gc.conditionstr.get(i+2)+"")==0)
                    operation.add(gc.conditionstr.get(i+2));
                else
                operation.add(Integer.parseInt(gc.conditionstr.get(i+2)+"")+(gc.loopbody.size()/4)*(max*2-1));
              
                operation.add(Integer.parseInt(gc.conditionstr.get(i+3)+"")+(gc.loopbody.size()/4)*(max*2-1));  
             //noofoperation++;
            }
            System.out.println("After double unrolling"+operation.toString());
          //System.out.println("no of opr= "+noofoperation);
                noofoperation=operation.size()/4;
            opera=new Operation[noofoperation];
         for(int i=0;i<noofoperation;i++){
             opera[i]=new Operation();
         }
         opr_arr=operation.toArray();
         for(int i=0,j=0;i<noofoperation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=muldelay;
              opera[i].ltime=muldelay;
              //opera[i].ttime=muldelay;
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=adddelay;
              opera[i].ltime=adddelay;
              //opera[i].ttime=adddelay;
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=subdelay;
              opera[i].ltime=subdelay;
              //opera[i].ttime=subdelay;
              opera[i].operator="-";
          }
          if("<".equals(opr_arr[j])){
              opera[i].delay=comdelay;
              opera[i].ltime=comdelay;
             // opera[i].ttime=comdelay;
              opera[i].operator="<";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }
         
         while(exitflag)
             {
                 
                check_flag1 = false;check_flag3 = false; check_flag2 = false;check_flag4 = false; lat_flag=false;lat_flag2=false;
                release=true;release2=true;incr=false;incr2=false;pattern=true;
                //-------Latency------------------------------
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if((opera[j].ltime < opera[j].delay)&& (opera[j].ltime > 0))
                          {   
                              //System.out.println("check3 "+j);
                              incr=true;
                              //currently it is active
                              //opera[j].ltime--;
                              opera[j].ltime=opera[j].ltime-1;
                              s=s+opera[j].result+" ";
                              //System.out.println("operation "+j+" ");
                              check_flag2 = true;
                              if(!lat_flag){
                                lat=lat+1;
                              }
                              lat_flag=true;
                              if (opera[j].ltime == 0)
                              {
                                  for(int a=0;a<resource.size();a++){
                                      
                                      Resource temp=resource.get(a);
                                      if(temp.curOpr==j){
                                         // System.out.println("check4 " +j+ temp.operator);
                                          temp.status=true;
                                          //temp.oprComTime.add(lat);
                                      }
                                  }
                                  release=false;
                                 
                              }
                          }
                        
                 }
                 if(incr){
                  s=s+"\n";
                  incr=false;
                 }
                  
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if (opera[j].ltime > 0 && (opera[j].ltime == opera[j].delay) && release)
                         {
                                
                             //check if result is available 
                             boolean opr_a = false, opr_b = false, inputOper1 = false, inputOper2 = false;
                             for (int a = 0; a < noofoperation; a++)
                             {
                                 if (opera[a].result == opera[j].oper1)
                                 {
                                     inputOper1 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_a = true;
                                     }
                                 }
                                 if (opera[a].result == opera[j].oper2)
                                 {
                                     inputOper2 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_b = true;
                                     }
                                 }
                             }
                             /*
                             //check for pattern
                             if(j>(gc.loopbody.size()/4+gc.beforeloop.size()/4-1)){
                                 //System.out.println("operation no "+j);
                             for(int i=0;i<(gc.loopbody.size()/4+gc.beforeloop.size()/4-1);i++){
                                 if(opera[j].operator.equals(opera[i].operator)){
                                    if(opera[i].ltime==opera[i].delay){
                                        //System.out.println("check11");
                                        pattern=false;
                                    } 
                                 }
                             }
                             }
                             */
                             //check if operator is available
                             if ((opr_a == true && opr_b == true) || (inputOper1 == false && inputOper2 == false)||
                                 (inputOper1 == false && opr_b == true) || (opr_a == true && inputOper2 == false))
                             {
                                 //if(pattern){
                                // System.out.println("check1 "+j);
                                 for(int a=0;a<resource.size();a++){
                                      Resource temp=resource.get(a);
                                      //System.out.println("check5 "+j);
                                     // System.out.println(temp.operator+"   "+opera[j].operator+"   "+temp.status);
                                      
                                      if(temp.operator.equals(opera[j].operator) && temp.status){
                                          //System.out.println("check2 "+j);
                                          temp.status=false;
                                          if(ltflag2){
                                          temp.oprComplete.add(opera[j].result);
                                          temp.oprStartTime.add(lat);
                                          }
                                          temp.curOpr=j;
                                          opera[j].ltime=opera[j].ltime-1;
                                          s=s+opera[j].result+" ";
                                          //System.out.println("operation1 "+j+" ");
                                          check_flag1 = true;
                                          if(!lat_flag2 && !lat_flag){
                                           lat=lat+1;
                                            //s=s+"\n";
                                            }
                                            lat_flag2=true;
                                            incr2=true;
                                            break;
                                         }
                                  }
                                 //}  
                              
                             }
                     }
                        
                 }
                 
                 exitflag = false;
                
                ltflag=false;
                 
                   Time = Time+1;
                   s=s+"\n";
                   //System.out.println("Time= "+Time);
                 /*  for(int g=0;g<ss/4;g++){
                       if (opera[g].ltime > 0 )
                        {
                            //T_latency = Time;
                           ltflag=true;
                           
                        }
                   }
                   if(!ltflag && ltflag2){
                       ltcc[0]=Time;
                       ltflag2=false;
                       
                   }*/
                    for (int b = 0; b < noofoperation; b++)
                    {
                        if(b<ss/4 && opera[b].ltime > 0){
                           ltflag=true; 
                        }
                        
                        
                        if (opera[b].ltime > 0)
                        {
                            //T_latency = Time;
                            exitflag = true;
                            
                            
                        }
                     
                    }
                    if(!ltflag && ltflag2){
                       ltcc[0]=Time;
                       ltflag2=false;
                       
                   }
                    
                 //System.out.println("T_lat= "+T_latency+"   Texec= "+Texec);
             }
        ltcc[1]=lat-ltcc[0];
         }
         //System.out.println("T_lat= "+Time);
          
            //int Tc = Time-lat ;
            //gc.schedule=gc.schedule+"\n Latency=  "+Latency+"\n";
            //ltcc[0]=Latency*gc.component_clockcycle[0]/2;
            //ltcc[1]=Tc*gc.component_clockcycle[0]/2;
 //ltcc[0]=lat;
 //ltcc[1]=Tc;
    // gc.schedule=gc.schedule+"\n Latency=  "+ltcc[0]+"\n";
 System.out.println("Latancy="+ltcc[0]);
 System.out.println("Cycle Time="+ltcc[1]);
// System.out.println(s);
  //System.out.println("\n\n\n"+sfirst);
   cs=(ltcc[0]+(UF/max-1)*ltcc[1]);
    texe+=((ltcc[0]+(UF/max-1)*ltcc[1])*(int)(gc.setofdata/UF));
    System.out.println("Prediction model 2 texe-for UF-"+UF+"    Texe-"+texe);
             //cs=lat;
            //texe=lat*(gc.setofdata/UF);
            System.out.println("pipelined texe= "+texe);
           boolean check=false;
    int noopr=0;  
         for(int i=0;i<resource.size();i++){
        
        check=resource.get(i).oprComplete.contains(conadd);
        
            if(check){
               noopr=resource.get(i).oprComplete.size()-1; 
            }
            else
            noopr=resource.get(i).oprComplete.size();
                     
            if((resource.get(i).operator.equals("<"))){
                noopr=noopr;
           }else
           {
               noopr=noopr*UF/max;
           }
           if(check){
               noopr=noopr+1; 
            }
            
        int cnt=oprcount.get(i);
        oprcount.set(i, (cnt+noopr));
        check=false;
        noopr=0;
    }   
            
             /***************** unrolled loop end   *********************/
            resource.clear();
            for(int a=0;a<size1;a=a+2){
      for(int b=0;b<Integer.parseInt(component[a+1]+"");b++){
         
          Resource temp=new Resource(component[a]+"");
          //System.out.println(component[a]+"   "+component[a+1]+""+ temp);
         resource.add(temp); 
         
      }
  }
             /***************** sequential loop start   *********************/
            
            if((gc.setofdata%UF)!=0){
                docount=true;
                lat=0;
                noofoperation=0;
            for(int a=0;a<resource.size();a++){
                                      
                     Resource temp=resource.get(a);
                     temp.status=true;
            }
            operation.clear();
            for(int i=0;i<gc.loopbody.size();i++){
              operation.add(gc.loopbody.get(i));
             noofoperation++;  
         }
            noofoperation /=4;
            //System.out.println("number of opr= "+noofoperation);
            opera=new Operation[noofoperation];
         for(int i=0;i<noofoperation;i++){
             opera[i]=new Operation();
         }
          opr_arr=operation.toArray();
         for(int i=0,j=0;i<noofoperation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=muldelay;
              opera[i].ltime=muldelay;
              //opera[i].ttime=muldelay;
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=adddelay;
              opera[i].ltime=adddelay;
              //opera[i].ttime=adddelay;
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=subdelay;
              opera[i].ltime=subdelay;
              //opera[i].ttime=subdelay;
              opera[i].operator="-";
          }
          if("<".equals(opr_arr[j])){
              opera[i].delay=comdelay;
              opera[i].ltime=comdelay;
             // opera[i].ttime=comdelay;
              opera[i].operator="<";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }
        
        // System.out.println("test location");
             exitflag = true;lat_flag=false;lat_flag2=false;
             release=true;incr=false;
             while(exitflag)
             {
                 
                lat_flag=false;lat_flag2=false;
                release=true;incr=false;
                //-------Latency------------------------------
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if((opera[j].ltime < opera[j].delay)&& (opera[j].ltime > 0))
                          {   
                              //System.out.println("check3 "+j);
                              incr=true;
                              //currently it is active
                              //opera[j].ltime--;
                              opera[j].ltime=opera[j].ltime-1;
                              
                              if(!lat_flag){
                                lat=lat+1;
                              }
                              lat_flag=true;
                              if (opera[j].ltime == 0)
                              {
                                  for(int a=0;a<resource.size();a++){
                                      
                                      Resource temp=resource.get(a);
                                      if(temp.curOpr==j){
                                         // System.out.println("check4 " +j+ temp.operator);
                                          temp.status=true;
                                          temp.oprComTime.add(lat);
                                      }
                                  }
                                  release=false;
                                 
                              }
                          }
                        
                 }
                 if(incr){
                  //s=s+"\n";
                  incr=false;
                 }
                  
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if (opera[j].ltime > 0 && (opera[j].ltime == opera[j].delay) && release)
                         {
                                
                             //check if result is available 
                             boolean opr_a = false, opr_b = false, inputOper1 = false, inputOper2 = false;
                             for (int a = 0; a < noofoperation; a++)
                             {
                                 if (opera[a].result == opera[j].oper1)
                                 {
                                     inputOper1 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_a = true;
                                     }
                                 }
                                 if (opera[a].result == opera[j].oper2)
                                 {
                                     inputOper2 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_b = true;
                                     }
                                 }
                             }
                             //check if operator is available
                             if ((opr_a == true && opr_b == true) || (inputOper1 == false && inputOper2 == false)||
                                 (inputOper1 == false && opr_b == true) || (opr_a == true && inputOper2 == false))
                             {
                                // System.out.println("check1 "+j);
                                 for(int a=0;a<resource.size();a++){
                                      Resource temp=resource.get(a);
                                      //System.out.println("check5 "+j);
                                     // System.out.println(temp.operator+"   "+opera[j].operator+"   "+temp.status);
                                      if(temp.operator.equals(opera[j].operator) && temp.status){
                                          //System.out.println("check2 "+j);
                                          temp.status=false;
                                          temp.oprComplete.add(opera[j].result);
                                          temp.oprStartTime.add(lat);
                                          temp.curOpr=j;
                                          opera[j].ltime=opera[j].ltime-1;
                                          //s=s+j+" ";
                                          //System.out.println("operation1 "+j+" ");
                                          //check_flag1 = true;
                                          if(!lat_flag2 && !lat_flag){
                                           lat=lat+1;
                                     //s=s+"\n";
                                            }
                                            lat_flag2=true;
                                            //incr2=true;
                                            break;
                                         }
                                  }
                                 
                              
                             }
                     }
                        
                 }
                 
                 exitflag = false;
                
                 
                    for (int b = 0; b < noofoperation; b++)
                    {
                        if (opera[b].ltime > 0)
                        {
                            //T_latency = Time;
                            exitflag = true;
                        }
                     
                    }
                    
                 //System.out.println("T_lat= "+T_latency+"   Texec= "+Texec);
             }  
             texe += (lat*(gc.setofdata%UF));
             System.out.println("Sequential and pipielined  ="+texe );
         }
             /***************** sequential loop end   *********************/
        /***************** before loop start   *********************/
     if(gc.beforeloop.size()>0){
            docount=true;
                  lat=0;
                   noofoperation=0;
            for(int a=0;a<resource.size();a++){
                                      
                     Resource temp=resource.get(a);
                     temp.status=true;
            }
            operation.clear();
            for(int i=0;i<gc.beforeloop.size();i++){
              operation.add(gc.beforeloop.get(i));
             noofoperation++;  
         }
            noofoperation /=4;
            opera=new Operation[noofoperation];
            for(int i=0;i<noofoperation;i++){
             opera[i]=new Operation();
         }
          opr_arr=operation.toArray();
         for(int i=0,j=0;i<noofoperation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=muldelay;
              opera[i].ltime=muldelay;
              //opera[i].ttime=muldelay;
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=adddelay;
              opera[i].ltime=adddelay;
              //opera[i].ttime=adddelay;
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=subdelay;
              opera[i].ltime=subdelay;
              //opera[i].ttime=subdelay;
              opera[i].operator="-";
          }
          if("<".equals(opr_arr[j])){
              opera[i].delay=comdelay;
              opera[i].ltime=comdelay;
             // opera[i].ttime=comdelay;
              opera[i].operator="<";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }
        
        // System.out.println("test location");
             exitflag = true;lat_flag=false;lat_flag2=false;
             release=true;incr=false;
             while(exitflag)
             {
                 
                lat_flag=false;lat_flag2=false;
                release=true;incr=false;
                //-------Latency------------------------------
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if((opera[j].ltime < opera[j].delay)&& (opera[j].ltime > 0))
                          {   
                              //System.out.println("check3 "+j);
                              incr=true;
                              //currently it is active
                              //opera[j].ltime--;
                              opera[j].ltime=opera[j].ltime-1;
                              
                              if(!lat_flag){
                                lat=lat+1;
                              }
                              lat_flag=true;
                              if (opera[j].ltime == 0)
                              {
                                  for(int a=0;a<resource.size();a++){
                                      
                                      Resource temp=resource.get(a);
                                      if(temp.curOpr==j){
                                         // System.out.println("check4 " +j+ temp.operator);
                                          temp.status=true;
                                          temp.oprComTime.add(lat);
                                      }
                                  }
                                  release=false;
                                 
                              }
                          }
                        
                 }
                 if(incr){
                  //s=s+"\n";
                  incr=false;
                 }
                  
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if (opera[j].ltime > 0 && (opera[j].ltime == opera[j].delay) && release)
                         {
                                
                             //check if result is available 
                             boolean opr_a = false, opr_b = false, inputOper1 = false, inputOper2 = false;
                             for (int a = 0; a < noofoperation; a++)
                             {
                                 if (opera[a].result == opera[j].oper1)
                                 {
                                     inputOper1 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_a = true;
                                     }
                                 }
                                 if (opera[a].result == opera[j].oper2)
                                 {
                                     inputOper2 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_b = true;
                                     }
                                 }
                             }
                             //check if operator is available
                             if ((opr_a == true && opr_b == true) || (inputOper1 == false && inputOper2 == false)||
                                 (inputOper1 == false && opr_b == true) || (opr_a == true && inputOper2 == false))
                             {
                                // System.out.println("check1 "+j);
                                 for(int a=0;a<resource.size();a++){
                                      Resource temp=resource.get(a);
                                      //System.out.println("check5 "+j);
                                     // System.out.println(temp.operator+"   "+opera[j].operator+"   "+temp.status);
                                      if(temp.operator.equals(opera[j].operator) && temp.status){
                                          //System.out.println("check2 "+j);
                                          temp.status=false;
                                          temp.oprComplete.add(opera[j].result);
                                          temp.oprStartTime.add(lat);
                                          temp.curOpr=j;
                                          opera[j].ltime=opera[j].ltime-1;
                                          //s=s+j+" ";
                                          //System.out.println("operation1 "+j+" ");
                                          //check_flag1 = true;
                                          if(!lat_flag2 && !lat_flag){
                                           lat=lat+1;
                                     //s=s+"\n";
                                            }
                                            lat_flag2=true;
                                            //incr2=true;
                                            break;
                                         }
                                  }
                                 
                              
                             }
                     }
                        
                 }
                 
                 exitflag = false;
                
                 
                    for (int b = 0; b < noofoperation; b++)
                    {
                        if (opera[b].ltime > 0)
                        {
                            //T_latency = Time;
                            exitflag = true;
                        }
                     
                    }
                    
                 //System.out.println("T_lat= "+T_latency+"   Texec= "+Texec);
             }  
             texe += lat;
             //System.out.println("Before loop");
         }            
             /***************** After loop start   *********************/
 
     if(gc.afterloop.size()>0){
            docount=true;
                  lat=0;
                   noofoperation=0;
            for(int a=0;a<resource.size();a++){
                                      
                     Resource temp=resource.get(a);
                     temp.status=true;
            }
            operation.clear();
            for(int i=0;i<gc.afterloop.size();i++){
              operation.add(gc.afterloop.get(i));
             noofoperation++;  
         }
             noofoperation /=4;
             opera=new Operation[noofoperation];
            for(int i=0;i<noofoperation;i++){
             opera[i]=new Operation();
         }
           
          opr_arr=operation.toArray();
         for(int i=0,j=0;i<noofoperation;i++,j=j+4){
          if("*".equals(opr_arr[j])){
              opera[i].delay=muldelay;
              opera[i].ltime=muldelay;
              //opera[i].ttime=muldelay;
              opera[i].operator="*";
          }   
          if("+".equals(opr_arr[j])){
              opera[i].delay=adddelay;
              opera[i].ltime=adddelay;
              //opera[i].ttime=adddelay;
              opera[i].operator="+";
          }
          if("-".equals(opr_arr[j])){
              opera[i].delay=subdelay;
              opera[i].ltime=subdelay;
              //opera[i].ttime=subdelay;
              opera[i].operator="-";
          }
          if("<".equals(opr_arr[j])){
              opera[i].delay=comdelay;
              opera[i].ltime=comdelay;
             // opera[i].ttime=comdelay;
              opera[i].operator="<";
          }
          opera[i].oper1=Integer.parseInt(opr_arr[j+1]+"");
          opera[i].oper2=Integer.parseInt(opr_arr[j+2]+"");
          opera[i].result=Integer.parseInt(opr_arr[j+3]+"");
         }
        
        // System.out.println("test location");
             exitflag = true;lat_flag=false;lat_flag2=false;
             release=true;incr=false;
             while(exitflag)
             {
                 
                lat_flag=false;lat_flag2=false;
                release=true;incr=false;
                //-------Latency------------------------------
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if((opera[j].ltime < opera[j].delay)&& (opera[j].ltime > 0))
                          {   
                              //System.out.println("check3 "+j);
                              incr=true;
                              //currently it is active
                              //opera[j].ltime--;
                              opera[j].ltime=opera[j].ltime-1;
                              
                              if(!lat_flag){
                                lat=lat+1;
                              }
                              lat_flag=true;
                              if (opera[j].ltime == 0)
                              {
                                  for(int a=0;a<resource.size();a++){
                                      
                                      Resource temp=resource.get(a);
                                      if(temp.curOpr==j){
                                         // System.out.println("check4 " +j+ temp.operator);
                                          temp.status=true;
                                          temp.oprComTime.add(lat);
                                      }
                                  }
                                  release=false;
                                 
                              }
                          }
                        
                 }
                 if(incr){
                  //s=s+"\n";
                  incr=false;
                 }
                  
                 for (int j = 0; j < noofoperation; j++)
                 {
                         if (opera[j].ltime > 0 && (opera[j].ltime == opera[j].delay) && release)
                         {
                                
                             //check if result is available 
                             boolean opr_a = false, opr_b = false, inputOper1 = false, inputOper2 = false;
                             for (int a = 0; a < noofoperation; a++)
                             {
                                 if (opera[a].result == opera[j].oper1)
                                 {
                                     inputOper1 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_a = true;
                                     }
                                 }
                                 if (opera[a].result == opera[j].oper2)
                                 {
                                     inputOper2 = true; 
                                     if (opera[a].ltime == 0)
                                     {
                                         opr_b = true;
                                     }
                                 }
                             }
                             //check if operator is available
                             if ((opr_a == true && opr_b == true) || (inputOper1 == false && inputOper2 == false)||
                                 (inputOper1 == false && opr_b == true) || (opr_a == true && inputOper2 == false))
                             {
                                // System.out.println("check1 "+j);
                                 for(int a=0;a<resource.size();a++){
                                      Resource temp=resource.get(a);
                                      //System.out.println("check5 "+j);
                                     // System.out.println(temp.operator+"   "+opera[j].operator+"   "+temp.status);
                                      if(temp.operator.equals(opera[j].operator) && temp.status){
                                          //System.out.println("check2 "+j);
                                          temp.status=false;
                                          temp.oprComplete.add(opera[j].result);
                                          temp.oprStartTime.add(lat);
                                          temp.curOpr=j;
                                          opera[j].ltime=opera[j].ltime-1;
                                          //s=s+j+" ";
                                          //System.out.println("operation1 "+j+" ");
                                          //check_flag1 = true;
                                          if(!lat_flag2 && !lat_flag){
                                           lat=lat+1;
                                     //s=s+"\n";
                                            }
                                            lat_flag2=true;
                                            //incr2=true;
                                            break;
                                         }
                                  }
                                 
                              
                             }
                     }
                        
                 }
                 
                 exitflag = false;
                
                 
                    for (int b = 0; b < noofoperation; b++)
                    {
                        if (opera[b].ltime > 0)
                        {
                            //T_latency = Time;
                            exitflag = true;
                        }
                     
                    }
                    
                 //System.out.println("T_lat= "+T_latency+"   Texec= "+Texec);
             }  
             texe += lat;
         }
     texe *=20;
      /***************** after loop end   *********************/
        
        // int nomul,noadd,nosub;
         
   
        //System.out.println("resource detail"+NumberOfmult+"  "+NumberOfadd+"  "+NumberOfsub+"   "+NumberOfcom);
        
        
               
            //System.out.println("Latency1111 = "+lat); 
           
    //operation count in calculation of execution time
     if(docount){
    check=false;
    noopr=0;
    for(int i=0;i<resource.size();i++){
         noopr=resource.get(i).oprComplete.size();
         int cnt=oprcount.get(i);
        oprcount.set(i, (cnt+noopr));
        check=false;
        noopr=0;
    }
     }
      return texe;
  }
   
}
 

