<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BC Wellness Management - Login</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/styles.css">
    </head>
    <body>
        <nav>
            <div>
                <h1>BC Wellness Management Web Application</h1>
                <nav>
                    <ul>
                        <li><a href="index.jsp" style="text-decoration: none; color: inherit;">Home</a></li>
                        <li><a href="register.jsp" style="text-decoration: none; color: inherit;">Register</a></li>
                        <li><a href="dashboard.jsp" style="text-decoration: none; color: inherit;">Dashboard</a></li>
                    </ul>
                </nav>
            </div>
        </nav>
        
        <main>
            <div class="form-container">
                <h2 style="text-align: center; color: #2c3e50; margin-bottom: 2rem;">Student Login</h2>
                
                <!-- Display error message if login fails -->
                <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
                <% if (errorMessage != null) { %>
                    <div class="message error">
                        <%= errorMessage %>
                    </div>
                <% } %>
                
                <!-- Display success message if redirected from registration -->
                <% String successMessage = (String) request.getAttribute("successMessage"); %>
                <% if (successMessage != null) { %>
                    <div class="message success">
                        <%= successMessage %>
                    </div>
                <% } %>
                
                <form action="LoginServlet" method="post">
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" required 
                               placeholder="Enter your email address"
                               value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>">
                    </div>
                    
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" required 
                               placeholder="Enter your password">
                    </div>
                    
                    <div class="form-group">
                        <button type="submit" class="btn" style="width: 100%;">Login</button>
                    </div>
                </form>
                
                <div style="text-align: center; margin-top: 2rem;">
                    <p style="color: #666;">Don't have an account? 
                        <a href="register.jsp" style="color: #667eea; text-decoration: none; font-weight: 500;">Register here</a>
                    </p>
                    <p style="color: #666; margin-top: 1rem;">
                        <a href="index.jsp" style="color: #667eea; text-decoration: none; font-weight: 500;">← Back to Home</a>
                    </p>
                </div>
            </div>
        </main>
        
        <footer>
            <p>&copy; 2025 Belgium Campus Student Wellness Management System. All rights reserved.</p>
        </footer>
    </body>
</html>
