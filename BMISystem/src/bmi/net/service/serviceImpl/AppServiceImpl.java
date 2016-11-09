package bmi.net.service.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import bmi.net.domain.Food;
import bmi.net.model.User;
import bmi.net.service.AppService;

public class AppServiceImpl implements AppService {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
    User user = new User();

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public boolean addUser(User registration) {
		try {
			String sql = "INSERT INTO USERS("
					+ "UNAME, PASS, SURNAME, "
					+ "NAME, AGE, COMMENT"
					+ ") values(?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] {
					registration.getuName(), registration.getPass(),
					registration.getSurName(), registration.getName(),
					registration.getAge(), registration.getComment()});
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public boolean login(User login) {
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
	    					+ user.getuName() + "'"
	    					+ " AND PASS LIKE '"
	    					+ user.getPass() + "'";
	    		    for(Map<String, Object> row : jdbcTemplate.queryForList(query)){
	    		       user.setuName(row.get("UNAME").toString());
	    		       user.setPass(row.get("PASS").toString());
	    		       user.setName(row.get("NAME").toString());
	    		       user.setSurName(row.get("SURNAME").toString());
	    		       user.setAge(row.get("AGE").toString());
	    		       user.setComment(row.get("COMMENT").toString());
	    		     }
	    		} catch (Exception e) {
	    			System.out.println(e.getMessage());
	    			e.printStackTrace();
	    			return false;
	    		}
	        	return true;
	        }else
	            return false;
	    } catch (Throwable exc)
	    {
	        System.out.println(exc);
	    }
	    return true;
	}
	
	public boolean addFood(Food food) {
		try {
			String sql = "INSERT INTO UFOOD("
					+ "UNAME, FOODID, FNAME,"
					+ "FTYPE ,FCALORY, FINGRED"
					+ ") values(?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] { food.getuName(),
					food.getfoodId(), food.getfName(),
					food.getfType(), food.getfCalory(),
					food.getfIngred() });
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public List<Map<String, Object>> getUsersFood() {
		List<Map<String, Object>> foodRows = null;
		try {
			//****like'dan sonra seçilmiþ kullanýcý adý gelecek.
			String query = "SELECT UNAME, FOODID, "
					+ "FNAME, FTYPE ,FCALORY, "
					+ "FINGRED FROM UFOOD"
					+ "WHERE FNAME LIKE "
					+ user.getuName();
		    foodRows = jdbcTemplate.queryForList(query);
		    for(Map<String, Object> row : foodRows){
		       String uName = row.get("UNAME").toString();
		       String foodId = row.get("FOODID").toString();
		       String fName = row.get("FNAME").toString();
		       String fType = row.get("FTYPE").toString();
		       String fClry = row.get("FNAFCALORYME").toString();
		       String fIngred = row.get("FINGRED").toString();
		       System.out.println(uName + " " + foodId + " " + fName + " " + fType + " " + fClry + " " + fIngred );
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