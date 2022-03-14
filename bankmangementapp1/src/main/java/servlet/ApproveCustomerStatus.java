package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bankmangementapp.*;

/**
 * Servlet implementation class ApproveCustomerStatus
 */
public class ApproveCustomerStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApproveCustomerStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailId = request.getParameter("emailId");
		int customerId = Integer.parseInt(request.getParameter("customerId"));
		String accountType = request.getParameter("accountType");
	    float interestRate = EmployeeOperation.getInterestRate(accountType);
	    boolean isApproved = EmployeeOperation.approvecustomer(customerId,accountType,interestRate);
	
	if(isApproved) {
		EmployeeOperation.UpdateStatus(customerId);
		MyMail obj = new MyMail();
		obj.SendMail(emailId, "Account Active Status", "Your Account is Activated");
		ArrayList<Customerdetails> customers = EmployeeOperation.readAllEmployees();
		request.setAttribute("customers", customers);
		request.getRequestDispatcher("employeehome.jsp").forward(request, response);
	}else {
		PrintWriter out = response.getWriter();
		ArrayList<Customerdetails> customers = EmployeeOperation.readAllEmployees();
		request.setAttribute("customers", customers);
		RequestDispatcher footer = request.getRequestDispatcher("employeehome.jsp");
		footer.include(request, response);
		out.println("<script type=\"text/javascript\">");
		out.println("setTimeout(() => {alert('Technical Isssue')}, 1000);");
		out.println("</script>");
	}
	}

}
