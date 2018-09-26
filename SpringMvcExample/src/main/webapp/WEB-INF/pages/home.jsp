<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home</title>
</head>
<body>

<h1>Welcome</h1>
<form action="/add" method="get">
Input 1<input type="text" id="input1" name="input1">
Input 2<input type="text" id="input2" name="input2">
<input type="submit" >
</form>
    
    
    <form action="validateLogin" method="get" id ="loginForm" name="loginForm">
Id<input type="text" id="id" name="id">
Password<input type="password" id="password" name="password">
<button>Sub</button>
</form>
    
    @RequestMapping(value = "/validateLogin", method = RequestMethod.GET)
	public ModelAndView loginInto(HttpServletRequest request, HttpServletResponse response) {
		boolean isUser=false;
		ModelAndView mav=null;
		
		try {
			isUser=loginDao.checkUser(request.getParameter("id"),request.getParameter("password"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(isUser)
		 mav = new ModelAndView("welcome");
		//mav.addObject("login", new Login());
		else
			mav = new ModelAndView("login");	
		System.out.println(message);
		return mav;
	}

</body>
</html>
