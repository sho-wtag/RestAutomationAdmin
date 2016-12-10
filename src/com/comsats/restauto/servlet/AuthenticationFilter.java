package com.comsats.restauto.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.comsats.restauto.controller.AuthenticationController;
import com.comsats.restauto.entity.User;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
public class AuthenticationFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public AuthenticationFilter() {
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		HttpSession session = ((HttpServletRequest) request).getSession();
		HttpServletResponse httpResponse = (HttpServletResponse)response;
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		
 		String sessionUserName = (String) session.getAttribute("sessionUserName");

		if (sessionUserName == null) {
			// then check if it exists in the db and set in the session
			String userName = (String)request.getParameter("userName");
			String password = (String)request.getParameter("password");

			if (userName != "" && password != "") {
				AuthenticationController authController = new AuthenticationController();
				User userObject = authController.getAuthorizedUserRole(userName, password);
				if (userObject != null) {
					session.setAttribute("sessionUserName", userName);
					session.setAttribute("sessionUserRole", userObject.getRoleName());
					session.setAttribute("sessionUserID", userObject.getUserID());
					chain.doFilter(request, response);
				} else {
					httpResponse.sendRedirect(httpRequest.getContextPath() +"/login.jsp?userNotAuthenticated=true");
				}
			} else {
				httpResponse.sendRedirect(httpRequest.getContextPath() +"/login.jsp?userNotAuthenticated=nothing");
			}
		} else {
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {

	}

}
