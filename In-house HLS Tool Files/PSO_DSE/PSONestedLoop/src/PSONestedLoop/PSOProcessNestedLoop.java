/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PSONestedLoop;

/**
 *
 * @author SAPVI
 */

 
// this is the heart of the PSO program
// the code is for 2-dimensional space problem
// but you can easily modify it to solve higher dimensional space problem

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Random;
import java.util.StringTokenizer;
import java.util.Vector;
import java.sql.*;
import java.util.Enumeration;

public class PSOProcessNestedLoop implements PSOConstants {
	private Vector<Particle> swarm = new Vector<Particle>();
        private Vector<Particle> swarm2 = new Vector<Particle>();
	private double[] pBest;// = new double[gc.swarm_size];
	private Vector<Location> pBestLocation = new Vector<Location>();
	private double gBest,gworst;
	private Location gBestLocation;
        private Location gworstLocation;
        private double[] fitnessValueList;// = new double[gc.swarm_size];
	public static Vector <Object> operation;
        public static String detail="";
        public static int vel_h,vel_l;
        MainWindow mw;
	Random generator = new Random();
	 Connection con;
         Statement st;
         ResultSet rs;
         GlobalConstants gc;
         ProblemSetNestedLoop ps;
         int[] lastgbest;
         public PSOProcessNestedLoop(){
             gc = GlobalConstants.getInstance();
             pBest = new double[gc.swarm_size];
             fitnessValueList = new double[gc.swarm_size];
             ps= new ProblemSetNestedLoop();
             lastgbest=new int[gc.size];
             mw=MainWindow.getInstance();
         }
	public void execute() {
                //PSOProcess pp=this.pp;
		
                //readDFG();
                //read_detail();
                initializeSwarm();
		updateFitnessList();
		//vel_l=-()
		for(int i=0; i<gc.swarm_size; i++) {
			pBest[i] = fitnessValueList[i];
			pBestLocation.add(swarm.get(i).getLocation());
		}
		
		int t = 0;
		double w=0.0;
		int count=0;
                int terminate=10;
                boolean gbflag=false,flag_vel=false;
		
		while(t < gc.no_iteration && count<terminate)
                {
			// step 1 - update pBest
			for(int i=0; i<gc.swarm_size; i++) {
				if(fitnessValueList[i] < pBest[i]) {
					pBest[i] = fitnessValueList[i];
					pBestLocation.set(i, swarm.get(i).getLocation());
				}
			}
			for(int i=0; i<gc.swarm_size; i++) {
                            System.out.println("Local Best for particle"+(i+1)+"  "+ pBest[i]);
                        }
                        
			// step 2 - update gBest
			int bestParticleIndex = PSOUtility.getMinPos(pBest);
			/*if(t == 0 || fitnessValueList[bestParticleIndex] < gBest) {
				gBest = fitnessValueList[bestParticleIndex];
				gBestLocation = swarm.get(bestParticleIndex).getLocation();
			}*/
                        //System.out.println("Gbest= "+gBest);
                        //System.out.println("Pbest= "+pBest[bestParticleIndex]);
                        if(t == 0 || pBest[bestParticleIndex] < gBest) {
                                int[] loc1 = new int[gc.size];
                
                                    for(int j=0;j<gc.size;j++){
                                    loc1[j]=pBestLocation.get(bestParticleIndex).getLoc()[j];
                                 
                                    }
                                Location location1 = new Location(loc1);
				gBest = pBest[bestParticleIndex];
				gBestLocation = location1;
                        }
                  gc.gbestcost.add(gBest);  //add gbest cost in the list
                  gc.gblocation.add(gBestLocation);       
                 int r[]=new int[gc.size];
            	 for(int j=0;j<gc.size;j++){
		r[j] = gBestLocation.getLoc()[j];
                 }
                 //get location
                int gloc=0;
                for(int i=0;i<gc.size;i++){
                 int temp=1;
                 for(int j=i+1;j<gc.size;j++){
                    if(j<gc.noofresources)                 
                    temp *= (gc.max[j]);
                    else{
                        temp *= (int)gc.LUFL.get(j-gc.noofresources).get(gc.max[j]);//gc.UFList.get(gc.max[j]);
                    }
                    }
                if(i<gc.noofresources)
                gloc +=(r[i]-1)*temp;
                else
                 gloc +=(((int)gc.LUFL.get(i-gc.noofresources).get(r[i]))-1)*temp;   
                }
                if(gc.power_texe){
                gc.gbestpower.add(gc.power.get(gloc)); //add gbest power in the list
                 } 
                if(gc.area_texe){
                gc.gbestarea.add(gc.area.get(gloc)); //add gbest power in the list
                }  
                 gc.gbestexetime.add(gc.exetime.get(gloc)); //add gbest exetime in the list
                // new gbest technique
		/*	
                int[] loc2 = new int[gc.size];
                        int worstParticleIndex = PSOUtility.getMaxPos(fitnessValueList);
                        //if(t == 0 || fitnessValueList[bestParticleIndex] < gworst) 
                        {
                                    for(int j=0;j<gc.size;j++){
                                    loc2[j]=swarm.get(worstParticleIndex).getLocation().getLoc()[j];
                                 
                                    }
                                Location location1 = new Location(loc2);
				gworst = swarm.get(worstParticleIndex).getFitnessValue();
				gworstLocation = location1;	
			
                       
			}
                       */
                        //w=1.0;
			w = W_UPPERBOUND - (((double) (gc.no_iteration - t)) / gc.no_iteration) * (W_UPPERBOUND - W_LOWERBOUND);
			//System.out.println("value of w= "+w);
			for(int i=0; i<gc.swarm_size; i++) {
				double r1 = generator.nextDouble();
				double r2 = generator.nextDouble();
                                //double r3 = generator.nextDouble();
                                //double r1=0.5;
                                //double r2=0.5;
                                //double r3=0.5;
				//System.out.println("value of r1= "+r1+"value of r2= "+r2);
				Particle p = swarm.get(i);
				
				// step 3 - update velocity
				int[] newVel = new int[gc.size];
                                for(int j=0;j<gc.size;j++){
				/*newVel[j] = (int) ((w*p.getVelocity().getPos()[j]) + 
                                                               (r1 * gc.c1) * (pBestLocation.get(i).getLoc()[j] - p.getLocation().getLoc()[j]) +
                                                               (r2 * gc.c2) * (gBestLocation.getLoc()[j] - p.getLocation().getLoc()[j])-
                                                               (r3 * gc.c2) * (gworstLocation.getLoc()[j] - p.getLocation().getLoc()[j]));
				*/
                                newVel[j] = (int) ((w * p.getVelocity().getPos()[j]) + 
                                                               (r1 * C1) * (pBestLocation.get(i).getLoc()[j] - p.getLocation().getLoc()[j]) +
                                                               (r2 * C2) * (gBestLocation.getLoc()[j] - p.getLocation().getLoc()[j]));
				
                                if(newVel[j]<(-gc.vel_range[j]))
                                    newVel[j]=(-gc.vel_range[j]);
                               // if(newVel[1]<ProblemSet.VEL_LOW)
                               //     newVel[1]=ProblemSetLoop.VEL_LOW;
                                if(newVel[j]>gc.vel_range[j])
                                    newVel[j]=gc.vel_range[j];
                               // if(newVel[1]>ProblemSetLoop.VEL_HIGH)
                               //     newVel[1]=ProblemSetLoop.VEL_HIGH;
                                //System.out.println("new Velocity   "+newVel[j]+"  range= "+gc.vel_range[j]);
                                }
                                
                                Velocity vel = new Velocity(newVel);
				p.setVelocity(vel);
				
				// step 4 - update location
				int[] newLoc = new int[gc.size];
                                for(int j=0;j<gc.size;j++){
				newLoc[j] = p.getLocation().getLoc()[j] + newVel[j];
				
                                gc.x2=gc.x1;
                                gc.y2=gc.y1;
                                gc.x1=newLoc[0];
                                gc.y1=newLoc[1];
                                
                                //**** function for perturbation
                               // if(newLoc[j]<ProblemSet.LOC_X_LOW)
                                 //   newLoc[j]=ProblemSetLoop.LOC_X_LOW+generator.nextInt(ProblemSetLoop.LOC_X_HIGH-1);
                                //if(newLoc[1]<ProblemSet.LOC_Y_LOW)
                                  //  newLoc[1]=ProblemSetLoop.LOC_Y_LOW+generator.nextInt(ProblemSetLoop.LOC_Y_HIGH-1);;
                               // if(newLoc[j]>ProblemSetLoop.LOC_X_HIGH)
                                //    newLoc[j]=ProblemSetLoop.LOC_X_LOW+generator.nextInt(ProblemSetLoop.LOC_X_HIGH-1);;
                                //if(newLoc[1]>ProblemSetLoop.LOC_Y_HIGH)
                                 //   newLoc[1]=ProblemSetLoop.LOC_Y_LOW+generator.nextInt(ProblemSetLoop.LOC_Y_HIGH-1);;
                                }
                                newLoc=perturbation(newLoc);
                                    Location loc = new Location(newLoc);
				p.setLocation(loc);
                                //System.out.println("new location   "+newLoc[0]+"  "+newLoc[1]);
			}
			
			//err = (int) (ProblemSetLoop.evaluate(gBestLocation) - 0); // minimizing the functions means it's getting closer to 0
			
			String output="";
			System.out.println("ITERATION " + t + ": ");
                        for(int j=0; j<gc.size;j++){
                         //output=output+  "     Best R"+j+": " + gBestLocation.getLoc()[j]; 
                            if(j<gc.noofresources)
			System.out.println("     Best R"+j+": " + gBestLocation.getLoc()[j]);
			///System.out.println("     Best Y: " + gBestLocation.getLoc()[1]);
                        if(j>=gc.noofresources){
                            //output=output+"     Best R"+(j+1)+": "+gc.UFList.get(gBestLocation.getLoc()[j+1]);
                            System.out.println("     Best UF"+": "+gc.LUFL.get(j-gc.noofresources).get((gBestLocation.getLoc()[j])));
                        }
                        }
                        
                      /* mw.writeText(output+"\n");
                       try{
                       Thread.sleep(300);
                       }catch(Exception e){
                           System.out.println(e);
                       }*/
                        // check for gbest changes
                        gbflag=false;
                        for(int j=0; j<gc.size;j++){
                            if(lastgbest[j]!=gBestLocation.getLoc()[j])
                                gbflag=true;
                        }
                        if(gbflag){
                         for(int j=0; j<gc.size;j++){
                            lastgbest[j]=gBestLocation.getLoc()[j];
                         }
                         count=0;
                        }
                        else
                        {
                            count++;
                            if(count==2)
                                gc.conTime = System.currentTimeMillis();
                            //System.out.println("Count=  "+count);
                        }
                       
                        
                        /*
                        // termination with the help of vel = 0
                        flag_vel=false;
                        
                         for(int l=0; l<gc.swarm_size; l++) {
                         Particle p = swarm.get(l);
                         for(int k=0; k<gc.size;k++){
                        if(p.getVelocity().getPos()[k]!=0){
                        flag_vel=true;
                        }
                        }
                         }
                        if(flag_vel){
                        count=0;
                        }
                        else{
                        count++;
                        }
                         if(count==2)
                                gc.conTime = System.currentTimeMillis();
                        
                        */                      
			//System.out.println("     Value: " + ProblemSetLoop.evaluate(gBestLocation));
			
			t++;
                        
                      if(t < gc.no_iteration-1 && count<(terminate-2))//&& t%3==0)
                       mutation(t);
                        
			updateFitnessList();
		}
                for(int j=0; j<gc.size;j++){
                detail=detail+(t)+"  "+gBestLocation.getLoc()[j]+"   ";//+gBestLocation.getLoc()[1]+"  ";
                }
                //insert into database
              /*  try {
                     
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");      
            String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=C:/Users/SAPVI/Documents/PSODSE.accdb;}";
            con=DriverManager.getConnection(url);
            st = con.createStatement();
             //System.out.println("Connection stablish");
             
             st.executeUpdate("INSERT INTO result (detail) VALUES('"+detail+"');");
           //System.out.println("Row is added"+detail);
            con.close();
         } catch (Exception e) {
            System.out.println("!!!Exception in extablishing DB connection. " + e.toString());
        }   */
                gc.result_comp=new <Object>Vector();
                System.out.println("\nSolution found at iteration " + (t - 1) + ", the solutions is:");
		for(int j=0; j<gc.size;j++){
                    if(j<gc.noofresources)
			System.out.println(gc.component_name[j]+"= " + gBestLocation.getLoc()[j]);
                        if(j>=gc.noofresources){
                            System.out.println(gc.component_name[j]+"= "+gc.LUFL.get(j-gc.noofresources).get((gBestLocation.getLoc()[j])));
                        }
                        gc.result_comp.add(gc.component_name[j]);
                        gc.result_comp.add(gBestLocation.getLoc()[j]);
                        if(j<gc.noofresources)
                        gc.output=gc.output+gc.component_name[j]+"= " + gBestLocation.getLoc()[j]+"\n";
                        if(j>=gc.noofresources){
                            gc.output=gc.output+gc.component_name[j]+"= "+gc.LUFL.get(j-gc.noofresources).get((gBestLocation.getLoc()[j]));
                        }
			///System.out.println("     Best Y: " + gBestLocation.getLoc()[1]);
                         }
		
		//System.out.println("     Best X: " + gBestLocation.getLoc()[0]);
		//System.out.println("     Best Y: " + gBestLocation.getLoc()[1]);
	}
        
	
	public void initializeSwarm() {
		                
            //gc.output=gc.output+"Initialization of particles\n";
                Particle p1 = new Particle(); 
                int[] loc1 = new int[gc.size];
                
                for(int j=0;j<gc.size;j++){
                    loc1[j]=1;
                    lastgbest[j]=1;
                }
                Location location1 = new Location(loc1);
                int[] vel1 = new int[gc.size];
			for(int j=0;j<gc.size;j++){
                        vel1[j]=0;
                        }
			Velocity velocity1 = new Velocity(vel1);
			
			p1.setLocation(location1);
			p1.setVelocity(velocity1);
			swarm.add(p1);
                        
                        // Particle 2 initialization
                        
                Particle p2 = new Particle(); 
                int[] loc2 = new int[gc.size];
                
                for(int j=0;j<gc.size;j++){
                    loc2[j]=gc.max[j];
                }
                Location location2 = new Location(loc2);
                        int[] vel2 = new int[gc.size];
			for(int j=0;j<gc.size;j++){
                        vel2[j]=0;
                        }
			Velocity velocity2 = new Velocity(vel2);
			
			p2.setLocation(location2);
			p2.setVelocity(velocity2);
			swarm.add(p2);
                     
                        Particle p3 = new Particle(); 
                int[] loc3 = new int[gc.size];
                
                for(int j=0;j<gc.size;j++){
                    if(j>gc.noofresources-1){
                    //loc3[j]=gc.UFList.indexOf((1+gc.setofdata)/2);
                    loc3[j]=gc.LUFL.get(j-gc.noofresources).size()-2;
                    //System.out.println("location  "+gc.UFList.get(loc3[j]));
                    }
                    else{
                      loc3[j]=(1+gc.max[j])/2; 
                      //System.out.println("location  "+loc3[j]);
                    }
                    
                }
                Location location3 = new Location(loc3);
                int[] vel3 = new int[gc.size];
			for(int j=0;j<gc.size;j++){
                        vel3[j]=0;
                        }
			Velocity velocity3 = new Velocity(vel3);
			
			p3.setLocation(location3);
			p3.setVelocity(velocity3);
			swarm.add(p3);
                        
                 
                        
		for(int i=0; i<gc.swarm_size-3; i++) {
		Particle p = new Particle();
			//gc.output=gc.output+"particle"+i+"\n"+"Resources are";
			// randomize location inside a space defined in Problem Set
			int[] loc = new int[gc.size];
			
                        for(int j=0;j<gc.size;j++){
                            //System.out.println("size= "+gc.size);
                         if(i%2==0)
                        loc[j] = 1+(gc.max[j])/2 + generator.nextInt(gc.max[j])/2;
                      else
                        loc[j] = 1+(gc.max[j])/2 - generator.nextInt(gc.max[j]+1)/2;
			//loc[1] = ProblemSetLoop.LOC_Y_LOW + generator.nextInt(3);
                        //System.out.println(" loc   "+loc[j]+" ");
                        //gc.output=gc.output+" "+loc[j]+" ";
                        }
                          //loc[0]=1;
                          //loc[1]=1;
                          Location location = new Location(loc);
                
		
			// randomize velocity in the range defined in Problem Set
			int[] vel = new int[gc.size];
			//vel[0] = ProblemSetLoop.VEL_LOW + generator.nextDouble() * (ProblemSetLoop.VEL_HIGH - ProblemSetLoop.VEL_LOW);
			//vel[1] = ProblemSetLoop.VEL_LOW + generator.nextDouble() * (ProblemSetLoop.VEL_HIGH - ProblemSetLoop.VEL_LOW);
                       //gc.output=gc.output+"\nMovement  ";
                        for(int j=0;j<gc.size;j++){
                        vel[j]=0;
                        //vel[1]=0;
                        //gc.output=gc.output+" "+vel[j]+"  ";
                        }
			Velocity velocity = new Velocity(vel);
			
			p.setLocation(location);
			p.setVelocity(velocity);
			swarm.add(p);	
                        		}
	}
	
	public void updateFitnessList() {
		for(int i=0; i<gc.swarm_size; i++) {
                    ProblemSetNestedLoop psn=new ProblemSetNestedLoop();
                        
			fitnessValueList[i] = psn.evaluate(swarm.get(i).getLocation());
                        
		}
	}
        public void mutation(int t){
            Vector<Location> pBLocation = new Vector<Location>();
           double[] pB = new double[gc.swarm_size];
            for(int i=0;i<gc.swarm_size;i++){
                int[] loc = new int[gc.size];
                for(int j=0; j<gc.size;j++){
                loc[j]= pBestLocation.get(i).getLoc()[j];               
                }
                Location location = new Location(loc);   
                pBLocation.add(location);;
            
            }
            if(t%2==0){
            for(int i=0;i<gc.swarm_size;i++){
            for(int j=0; j<gc.size-1;j++){
                        int temp=pBLocation.get(i).getLoc()[j];
                        if(pBLocation.get(i).getLoc()[j+1]<gc.max[j])
                            pBLocation.get(i).getLoc()[j]=pBLocation.get(i).getLoc()[j+1];
                        else
                           pBLocation.get(i).getLoc()[j]= 1;//generator.nextInt(gc.max[j]-1)+1;
                        if(temp<gc.max[j+1])
                            pBLocation.get(i).getLoc()[j+1]=temp;
                        else
                             pBLocation.get(i).getLoc()[j+1]= generator.nextInt(gc.max[j+1]-1)+1;
                         }   
                }
            }
            else {
         for(int i=0;i<gc.swarm_size;i++){
         for(int j=0; j<gc.size;j++){
             int r= generator.nextInt(10);
             if(i%2==1){
                 if(pBLocation.get(i).getLoc()[j]>1 && r%2==0){
                     //System.out.println("BM= "+pBestLocation.get(i).getLoc()[j]);
                  pBLocation.get(i).getLoc()[j]=pBLocation.get(i).getLoc()[j]-1;
                 // System.out.println("AM= "+pBestLocation.get(i).getLoc()[j]);
             }
                 if(pBLocation.get(i).getLoc()[j]<gc.max[j] && r%2==1){
                    // System.out.println("BM= "+pBestLocation.get(i).getLoc()[j]);
               pBLocation.get(i).getLoc()[j]=pBLocation.get(i).getLoc()[j]+1;
              // System.out.println("AM= "+pBestLocation.get(i).getLoc()[j]);
             }
             }
             else {
                 if(pBLocation.get(i).getLoc()[j]<gc.max[j] && r%2==0){
                    // System.out.println("BM= "+pBestLocation.get(i).getLoc()[j]);
                  pBLocation.get(i).getLoc()[j]=pBLocation.get(i).getLoc()[j]+1;
                 // System.out.println("AM= "+pBestLocation.get(i).getLoc()[j]);
             }
                 if(pBLocation.get(i).getLoc()[j]>1 && r%2==1){
                    // System.out.println("BM= "+pBestLocation.get(i).getLoc()[j]);
               pBLocation.get(i).getLoc()[j]=pBLocation.get(i).getLoc()[j]-1;
               //System.out.println("AM= "+pBestLocation.get(i).getLoc()[j]);
             }
             }
         }
         }
            }   
        for(int i=0;i<gc.swarm_size;i++){
            //pBLocation.get(i).setElementAt(pBLocation.get(i).setLoc(perturbation(pBLocation.get(i).getLoc()))), i);
            pB[i]=ps.evaluate(pBLocation.get(i));
        }
        /*for(int i=0;i<gc.swarm_size;i++){
            for(int j=0; j<gc.size;j++){
                System.out.print("mutated   ");
                 System.out.println(pBLocation.get(i).getLoc()[j]);
                 System.out.print("original  ");
                 System.out.println(pBestLocation.get(i).getLoc()[j]);                        
            }
            }*/
        for(int i=0;i<gc.swarm_size;i++){
            if(pB[i]<pBest[i]){
                pBest[i]=pB[i];
                pBestLocation.setElementAt(pBLocation.get(i), i);
                //System.out.println("mutation update");
            }
        }
            /*if(t%2==0){
            for(int i=0;i<gc.swarm_size;i++){
            for(int j=0; j<gc.size-1;j++){
                        int temp=pBestLocation.get(i).getLoc()[j];
                        if(pBestLocation.get(i).getLoc()[j+1]<gc.max[j])
			pBestLocation.get(i).getLoc()[j]=pBestLocation.get(i).getLoc()[j+1];                            
                        if(pBestLocation.get(i).getLoc()[j]<gc.max[j+1])
			pBestLocation.get(i).getLoc()[j+1]=temp;
                         }   
                }
            }
            else {
         for(int i=0;i<gc.swarm_size;i++){
         for(int j=0; j<gc.size;j++){
             if(i%2==0){
                 if(pBestLocation.get(i).getLoc()[j]>1 && j%2==0){
                     //System.out.println("BM= "+pBestLocation.get(i).getLoc()[j]);
                  pBestLocation.get(i).getLoc()[j]=pBestLocation.get(i).getLoc()[j]-1;
                 // System.out.println("AM= "+pBestLocation.get(i).getLoc()[j]);
             }
                 if(pBestLocation.get(i).getLoc()[j]<gc.max[j] && j%2==1){
                    // System.out.println("BM= "+pBestLocation.get(i).getLoc()[j]);
               pBestLocation.get(i).getLoc()[j]=pBestLocation.get(i).getLoc()[j]+1;
              // System.out.println("AM= "+pBestLocation.get(i).getLoc()[j]);
             }
             }
             else {
                 if(pBestLocation.get(i).getLoc()[j]<gc.max[j] && j%2==0){
                    // System.out.println("BM= "+pBestLocation.get(i).getLoc()[j]);
                  pBestLocation.get(i).getLoc()[j]=pBestLocation.get(i).getLoc()[j]+1;
                 // System.out.println("AM= "+pBestLocation.get(i).getLoc()[j]);
             }
                 if(pBestLocation.get(i).getLoc()[j]>1 && j%2==1){
                    // System.out.println("BM= "+pBestLocation.get(i).getLoc()[j]);
               pBestLocation.get(i).getLoc()[j]=pBestLocation.get(i).getLoc()[j]-1;
               //System.out.println("AM= "+pBestLocation.get(i).getLoc()[j]);
             }
             }
         }
         }
            }   
        for(int i=0;i<gc.swarm_size;i++){
            pBest[i]=ps.evaluate(pBestLocation.get(i));
        }*/
                    /*for(int x=0;x<gc.swarm_size;x++){
                            for(int j=0; j<gc.size;j++){
                                System.out.println("  locations for particle"+x+"  "+j+" = "+pBestLocation.get(x).getLoc()[j]);
                            }
                        }*/
        
        }
        public int[] perturbation(int l[]){
            for(int j=0;j<gc.size;j++){
            if(j<gc.noofresources){
                if(l[j]<1)
                    l[j]=1;
                 //l[j]=1+generator.nextInt(gc.max[j]-1);
                 if(l[j]>gc.max[j])
                 l[j]=1+generator.nextInt(gc.max[j]-1);
            }
            //for UF 
            else{
                 if(l[j]<1)
                 l[j]=1+generator.nextInt(gc.max[j]-1);
                 if(l[j]>gc.max[j])
                 l[j]=1+generator.nextInt(gc.max[j]-1);
            }
            }
            /*
            for(int i=0;i<l.length;i++){
                int x=generator.nextInt(5);
                for(int j=0;j<x;j++){
                    if(l[i]<1){
                        l[i]++;
                    }
                    if(l[i]>gc.max[i]){
                        l[i]--;
                        break;
                    }
                }
                for(int j=0;j<x;j++){
                    if(l[i]>gc.max[i]){
                        l[i]--;
                    }
                    if(l[i]<1){
                        l[i]++;
                        break;
                    }
                }
                
            }*/
            return l;
        }
       
}
  
