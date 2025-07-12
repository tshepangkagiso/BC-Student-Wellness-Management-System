<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BC Wellness Management - Register</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/styles.css">
        <style>
            .form-container {
                max-width: 600px;
            }
            .form-row {
                display: flex;
                gap: 1rem;
            }
            .form-row .form-group {
                flex: 1;
            }
            @media (max-width: 768px) {
                .form-row {
                    flex-direction: column;
                }
            }
        </style>
    </head>
    <body>
        <nav>
            <div>
                <h1>BC Wellness Management Web Application</h1>
                <nav>
                    <ul>
                        <li><a href="index.jsp" style="text-decoration: none; color: inherit;">Home</a></li>
                        <li><a href="login.jsp" style="text-decoration: none; color: inherit;">Login</a></li>
                        <li><a href="dashboard.jsp" style="text-decoration: none; color: inherit;">Dashboard</a></li>
                    </ul>
                </nav>
            </div>
        </nav>
        
        <main>
            <div class="form-container">
                <h2 style="text-align: center; color: #2c3e50; margin-bottom: 2rem;">Student Registration</h2>
                
                <!-- Display error message if registration fails -->
                <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
                <% if (errorMessage != null) { %>
                    <div class="message error">
                        <%= errorMessage %>
                    </div>
                <% } %>
                
                <!-- Display success message if registration succeeds -->
                <% String successMessage = (String) request.getAttribute("successMessage"); %>
                <% if (successMessage != null) { %>
                    <div class="message success">
                        <%= successMessage %>
                    </div>
                <% } %>
                
                <form action="RegisterServlet" method="post">
                    <div class="form-group">
                        <label for="studentNumber">Student Number</label>
                        <input type="text" id="studentNumber" name="studentNumber" required 
                               placeholder="Enter your student number"
                               value="<%= request.getParameter("studentNumber") != null ? request.getParameter("studentNumber") : "" %>">
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="name">First Name</label>
                            <input type="text" id="name" name="name" required 
                                   placeholder="Enter your first name"
                                   value="<%= request.getParameter("name") != null ? request.getParameter("name") : "" %>">
                        </div>
                        
                        <div class="form-group">
                            <label for="surname">Last Name</label>
                            <input type="text" id="surname" name="surname" required 
                                   placeholder="Enter your last name"
                                   value="<%= request.getParameter("surname") != null ? request.getParameter("surname") : "" %>">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" required 
                               placeholder="Enter your email address"
                               value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>">
                    </div>
                    
                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="tel" id="phone" name="phone" required 
                               placeholder="Enter your phone number (e.g., 0123456789)"
                               pattern="[0-9]{10}"
                               value="<%= request.getParameter("phone") != null ? request.getParameter("phone") : "" %>">
                        <small style="color: #666; font-size: 0.9rem;">Format: 10 digits without spaces</small>
                    </div>
                    
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" required 
                               placeholder="Enter a strong password"
                               minlength="8">
                        <small style="color: #666; font-size: 0.9rem;">Minimum 8 characters</small>
                    </div>
                    
                    <div class="form-group">
                        <label for="confirmPassword">Confirm Password</label>
                        <input type="password" id="confirmPassword" name="confirmPassword" required 
                               placeholder="Confirm your password"
                               minlength="8">
                    </div>
                    
                    <div class="form-group">
                        <button type="submit" class="btn" style="width: 100%;">Register</button>
                    </div>
                </form>
                
                <div style="text-align: center; margin-top: 2rem;">
                    <p style="color: #666;">Already have an account? 
                        <a href="login.jsp" style="color: #667eea; text-decoration: none; font-weight: 500;">Login here</a>
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
        
        <script>
            // Client-side password confirmation validation
            document.getElementById('confirmPassword').addEventListener('input', function() {
                const password = document.getElementById('password').value;
                const confirmPassword = this.value;
                
                if (password !== confirmPassword) {
                    this.setCustomValidity('Passwords do not match');
                } else {
                    this.setCustomValidity('');
                }
            });
            
            // Password strength indicator
            document.getElementById('password').addEventListener('input', function() {
                const password = this.value;
                const strength = checkPasswordStrength(password);
                
                // You can add visual feedback here
                console.log('Password strength:', strength);
            });
            
            function checkPasswordStrength(password) {
                let strength = 0;
                if (password.length >= 8) strength++;
                if (password.match(/[a-z]/)) strength++;
                if (password.match(/[A-Z]/)) strength++;
                if (password.match(/[0-9]/)) strength++;
                if (password.match(/[^a-zA-Z0-9]/)) strength++;
                
                return strength;
            }
        </script>
    </body>
</html>
