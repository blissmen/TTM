/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cm.prj.db;

/**
 *
 * @author Yanick
 */
import cm.prj.controller.User;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
public class Functions {
    private ArrayList  Slot=new ArrayList();

    DbUtil database= new DbUtil();
    private ArrayList result=new ArrayList();
    private ArrayList<ArrayList> RealSlots= new ArrayList<ArrayList>();
     private ArrayList<ArrayList<ArrayList>> Reals= new ArrayList<ArrayList<ArrayList>>();
   
    private ArrayList slots;
    private String sql;
    private String sql2;
   
    public ArrayList getDays(Object data) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
  return null;
    }

    public ArrayList gethours(Object data) throws SQLException {
        
        String sql="select slot from time_table where teacher_id="+data.toString();
            System.out.println(sql);
        slots =database.getResultSet(sql);
       
        return slots;
    }

    public ArrayList gethours(Object data, int i) throws SQLException {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    String sql="select slot from time_table where teacher_id="+data.toString()+" and day="+i;
            System.out.println(sql);
        slots =database.getResultSet(sql);
       ArrayList AllSlots = new ArrayList();
            AllSlots.add(0);
            AllSlots.add(1);
            AllSlots.add(2);
            AllSlots.add(3);
            AllSlots.add(4);
            AllSlots.add(5);
            
            ArrayList ab = new ArrayList();
            ab.add("7-9");
            ab.add("9-11");
            ab.add("11-13");
            ab.add("13-15");
            ab.add("15-17");
            ab.add("17-19");
            
            ArrayList realSots=new ArrayList();
            System.out.println("Slots:"+slots.toString()+" All Slots:"+AllSlots.toString());
            for(Object slot:AllSlots)
            if(slots.contains(slot))
            {
                System.out.println("Teacher occupied at"+slot);
            }
            else
            {
                realSots.add(slot);
               
            }
             System.out.println("To be printed "+realSots );
             ArrayList printable_slots= new ArrayList();
             for(Object slot: realSots)
             {
             printable_slots.add(ab.get(Integer.parseInt(slot.toString())));
                     }
             System.out.println(""+printable_slots.toString());
                     return printable_slots;
             }

    public ArrayList getClasshours(Object data, int i) throws SQLException {
             String sql="select slot from time_table where room_id="+data.toString()+" and day="+i;
            System.out.println(sql);
         slots =database.getResultSet(sql);
           ArrayList AllSlots = new ArrayList();
            //AllIds.add(0);
          
           AllSlots.add(0);
           AllSlots.add(1);
           AllSlots.add(2);
           AllSlots.add(3);
           AllSlots.add(4);
           AllSlots.add(5);
           
           ArrayList names = new ArrayList();
           names.add("7-9");
           names.add("9-11");
           names.add("11-13");
           names.add("13-15");
           names.add("15-17");
           names.add("17-19");
           ArrayList realSots=new ArrayList();
            System.out.println("Slots:"+slots.toString()+" All Slots:"+AllSlots.toString());
            for(Object slot:AllSlots)
            if(slots.contains(slot))
            {
                System.out.println("Class occupied at"+slot);
            }
            else
            {
                realSots.add(slot);
               
            }
             System.out.println("To be printed "+realSots );
             ArrayList printable_slots= new ArrayList();
             for(Object slot: realSots)
             {
             printable_slots.add(names.get(Integer.parseInt(slot.toString())));
                     }
             System.out.println(""+printable_slots.toString());
                     return printable_slots;
                         
    }

    public ArrayList getAttribute() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getAttribute(String string,String table,String constraint) throws SQLException {
     String query="select "+string+" from "+table+" where id="+constraint; 
        System.out.println(query);
    return database.getResultSet(query).get(0).toString();
    }

    public ArrayList getTeacherAttribute(String teacher_id, String teachers_has_courses, String string) throws SQLException {
     //   throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String sql="select teachers_id from teachers_has_courses where courses_code = '"+string+"'";
        System.out.println(sql);    
        return    database.getResultSet(sql);
       
    }

    public ArrayList getCurseAttribute(String name, String courses, String string) throws SQLException {
       
        String sql = "select name from courses where code='"+string+"'"; 
        System.out.println(sql);
        return database.getResultSet(sql);
    }

    public ArrayList getAllTeachers(String period) throws SQLException {
      //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    String sql="select teacher_id from time_table where slot="+period;
    ArrayList teachers= database.getResultSet(sql);
    return teachers;
    }

    public int getStatus() {
         
           
       String sql = "select status from users where name ='"+User.getUsername()+"'";
        System.out.println(sql);
        try {
             result = database.getResultSet(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Functions.class.getName()).log(Level.SEVERE, null, ex);
        }
         if(result.isEmpty())
             result.add(6);
   return Integer.getInteger(result.get(0).toString());
    }
    public ArrayList<ArrayList<ArrayList>> getTimeTable()
            {
               ArrayList Days = new ArrayList();
               ArrayList Slot = new ArrayList();
               ArrayList Courses = new ArrayList();
               ArrayList Halls = new ArrayList();
               //Halls = this.getAllHalls();
                 Slot.add(0);
                 Slot.add(1);
                 Slot.add(2);
                 Slot.add(3);
                 Slot.add(4);
                 Slot.add(5);
                    Days.add(0);
                    Days.add(1);
                    Days.add(2);
                    Days.add(3);
                    Days.add(4);
                    Days.add(5);
               String sql ="";
              for(int i =0; i<Days.size();i++)
              {
                for(int d=0 ; d<Slot.size();d++)
                {
                 sql = "select course_code from time_table where day="+i+" and slot ="+d;
                   try {
                       System.out.println(sql);
                       Courses=database.getResultSet(sql);
                      // System.out.println(Courses.toString());
                        RealSlots.add(Courses);
                      // System.out.println(RealSlots.toString());
                   } catch (SQLException ex) {
                       Logger.getLogger(Functions.class.getName()).log(Level.SEVERE, null, ex);
                   }
                }
                Reals.add(RealSlots);
              } 
                //System.out.println("Final :"+Reals.toString());
              return Reals;
               
            }

    public ArrayList<ArrayList> getFreeeLecturer() {
        int slot=5;
        int day=5;
        ArrayList res = new ArrayList();
        ArrayList<ArrayList> finalres = new ArrayList();
        for(int i=0;i<day;i++)
            for(int j=0;j<slot;j++)
            {
                sql="select teachers.name from teachers where teachers.id not in (Select teacher_id from time_table where slot ="+ j+" and day ="+i+");";					
            try {
               System.out.println(sql);
                res=database.getResultSet(sql);
            } catch (SQLException ex) {
                Logger.getLogger(Functions.class.getName()).log(Level.SEVERE, null, ex);
            }
            finalres.add(res);
            }
        System.out.println("resuts are"+finalres.toString());
                return finalres;
    }

    public ArrayList getTimetableWithNames() {
        ArrayList Days = new ArrayList();
               ArrayList Lecturers = new ArrayList();
               ArrayList finalLecturers = new ArrayList();
               
               ArrayList Lecturer = new ArrayList();
               ArrayList Slot = new ArrayList();
               ArrayList Courses = new ArrayList();
               ArrayList Halls = new ArrayList();
               //Halls = this.getAllHalls();
                 Slot.add(0);
                 Slot.add(1);
                 Slot.add(2);
                 Slot.add(3);
                 Slot.add(4);
                 Slot.add(5);
                    Days.add(0);
                    Days.add(1);
                    Days.add(2);
                    Days.add(3);
                    Days.add(4);
                    Days.add(5);
               String sql ="";
              for(int i =0; i<Days.size();i++)
              {
                for(int d=0 ; d<Slot.size();d++)
                {
                    sql = "select course_code from time_table where day="+i+" and slot ="+d;
                   try {
                       System.out.println(sql);
                       Courses=database.getResultSet(sql);
                       for(Object course: Courses)
                       {
                            sql2="select teachers.name from teachers where teachers.id=(select teacher_id from time_table where day="+i+" and slot ="+d+" and course_code='"+course.toString()+"')";
                         Lecturer =  database.getResultSet(sql2);
                           System.out.println(sql2);
                         Lecturers.add(Lecturer.get(0));
                           System.out.println(""+Lecturer.get(0));
                       }
                       finalLecturers.add(Lecturers);
                       System.out.println("hmmm"+finalLecturers.toString());
                      // System.out.println(Courses.toString());
                        RealSlots.add(Courses);
                      // System.out.println(RealSlots.toString());
                   } catch (SQLException ex) {
                       Logger.getLogger(Functions.class.getName()).log(Level.SEVERE, null, ex);
                   }
                }
                Reals.add(RealSlots);
              } 
        
        return RealSlots;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
 
}
