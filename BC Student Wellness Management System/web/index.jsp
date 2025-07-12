<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BC Wellness Management - Home</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/styles.css">
    </head>
    <body>
        <nav>
            <div>
                <h1>BC Wellness Management Web Application</h1>
                <nav>
                    <ul>
                        <li><a href="register.jsp" style="text-decoration: none; color: inherit;">Register</a></li>
                        <li><a href="dashboard.jsp" style="text-decoration: none; color: inherit;">Dashboard</a></li>
                        <li><a href="login.jsp" style="text-decoration: none; color: inherit;">Login</a></li>
                    </ul>
                </nav>
            </div>
        </nav>
        
        <main>
            <div class="welcome-section">
                <h2>Welcome to BC Student Wellness</h2>
                <p>Your mental health and wellbeing matter. Access professional counseling services, 
                   book appointments, and take control of your wellness journey with our comprehensive 
                   student support system.</p>
                <a href="register.jsp" class="btn">Get Started Today</a>
            </div>
            
            <div class="cards-container">
                <div class="card">
                    <h3>Professional Counseling</h3>
                    <p>Connect with qualified counselors who understand student life challenges. 
                       Get personalized support for academic stress, anxiety, depression, and more.</p>
                    <a href="login.jsp" class="btn">Book Appointment</a>
                </div>
                
                <div class="card">
                    <h3>Wellness Resources</h3>
                    <p>Access a comprehensive library of mental health resources, self-help guides, 
                       and wellness tools designed specifically for students.</p>
                    <a href="login.jsp" class="btn">Explore Resources</a>
                </div>
                
                <div class="card">
                    <h3>Peer Support Groups</h3>
                    <p>Join supportive communities of fellow students facing similar challenges. 
                       Share experiences and learn coping strategies in a safe environment.</p>
                    <a href="register.jsp" class="btn btn-secondary">Join Community</a>
                </div>
                
                <div class="card">
                    <h3>Crisis Support</h3>
                    <p>24/7 emergency support available for students in crisis. Immediate help 
                       is just a click away when you need it most.</p>
                    <a href="login.jsp" class="btn btn-secondary">Get Help Now</a>
                </div>
            </div>
        </main>
        
        <footer>
            <p>&copy; 2025 Belgium Campus Student Wellness Management System. All rights reserved.</p>
        </footer>
    </body>
</html>
