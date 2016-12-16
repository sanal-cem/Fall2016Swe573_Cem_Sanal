package bmi.net.service.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import bmi.net.domain.FoodItem;
import bmi.net.model.User;
import bmi.net.service.AppService;

public class AppServiceImpl implements AppService {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
    User user = new User();

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public String login(User login) {
	    try
	    {
		    	user.setuName(login.getuName());
		        user.setPass(login.getPass());
		        if(user.getIsValid())
		        {
		        	try {
		    			String query = "SELECT UNAME, PASS, "
		    					+ "NAME, SURNAME , AGE, "
		    					+ "COMMENT FROM USERS "
		    					+ "WHERE UNAME LIKE '"
		    					+ login.getuName() + "'"
		    					+ " AND PASS LIKE '"
		    					+ login.getPass() + "'";
		    		    for(Map<String, Object> row : jdbcTemplate.queryForList(query)){
		    		    	user.setuName(row.get("UNAME").toString());
		    		    	user.setPass(row.get("PASS").toString());
		    		    	user.setName(row.get("NAME").toString());
		    		    	user.setSurName(row.get("SURNAME").toString());
		    		    	user.setAge(row.get("AGE").toString());
		    		    	user.setComment(row.get("COMMENT").toString());
		    		     }
		    		    if(user.getName().isEmpty() && user.getSurName().isEmpty()) 
		    		    	return "loginFailed";
		    		} catch (Exception e) {
		    			System.out.println(e.getMessage());
		    			e.printStackTrace();
		    			return "loginFailed";
		    		}
		        	return "loginSuccess";
		        }else
		        	//notValid
		            return "logreg";
	    } catch (Throwable exc)
	    {
	        System.out.println(exc);
	    }
	    return "logreg";
	}
	
	public String reg(User reg) {
		try {
			String sql = "INSERT INTO USERS("
					+ "UNAME, PASS, SURNAME, "
					+ "NAME, AGE, COMMENT"
					+ ") values(?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] {
					reg.getuName(), reg.getPass(),
					reg.getSurName(), reg.getName(),
					reg.getAge(), reg.getComment()});
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "regFailed";
		}
		return "regSuccess";
	}
	
	public String addFood(FoodItem food) {
		try {
			String sql = "INSERT INTO UFOOD("
					+ "UNAME, FOFFSET,"
					+ "FGROUP, FNAME, FNDBNO,"
					+ " FDS, FCALORY, FINGRED"
					+ ") values(?,?,?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] { food.getuName(),
					food.getOffset(), food.getGroup(),
					food.getName(), food.getnDbNo(),
					food.getDs(), food.getfCalory(),
					food.getfIngred() });
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "newFoodFailed";
		}
		return "newFoodSuccess";
	}
	
	public List<Map<String, Object>> getUsersFood() {
		List<Map<String, Object>> foodRows = null;
		try {
			//****like'dan sonra seçilmiþ kullanýcý adý gelecek.
			String query = "SELECT UNAME, FOFFSET,"
					+ "FGROUP, FNAME, FNDBNO,"
					+ " FDS, FCALORY, FINGRED"
					+ "WHERE FNAME LIKE "
					+ user.getuName();
		    foodRows = jdbcTemplate.queryForList(query);
		    for(Map<String, Object> row : foodRows){
		       String uName = row.get("UNAME").toString();
		       String offset = row.get("FOFFSET").toString();
		       String group = row.get("FGROUP").toString();
		       String name = row.get("FNAME").toString();
		       String nDbNo = row.get("FNDBNO").toString();
		       String ds = row.get("FDS").toString();
		       String fClry = row.get("FCALORY").toString();
		       String fIngred = row.get("FINGRED").toString();
		       System.out.println(uName + " " + offset + " " + group + " " + name 
		    		   + " " + nDbNo + " " + ds + " " + fClry + " " + fIngred );
		     }
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return foodRows;
	}
	
//	public List<Food> getAllFoods() {
		/* here you will call a DAO Class */
		//loop olacak
		//foods query
//		Food food = new Food(,,,,);
//		List<Food> foods = new ArrayList<Food>();
//		foods.add(food);
//		return foods;
//	}
}