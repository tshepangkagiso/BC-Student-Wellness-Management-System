<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Check if user is logged in using the implicit session object
    /*String userName = null;
    String userEmail = null;
    
    if (session != null) {
        userName = (String) session.getAttribute("userName");
        userEmail = (String) session.getAttribute("userEmail");
    }
    
    // Redirect to login if not logged in
    if (userName == null || userEmail == null) {
        response.sendRedirect("login.jsp");
        return;
    }*/
    

    // Demo data for testing - remove this when implementing real authentication
    String userName = "John Doe";
    String userEmail = "john.doe@student.belgiumcampus.ac.za";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BC Wellness Management - Dashboard</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/styles.css">
        <style>
            .user-info {
                background: rgba(255, 255, 255, 0.95);
                backdrop-filter: blur(10px);
                border-radius: 15px;
                padding: 2rem;
                margin-bottom: 2rem;
                box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
                text-align: center;
            }
            .user-info h2 {
                color: #2c3e50;
                margin-bottom: 0.5rem;
            }
            .user-info p {
                color: #666;
                margin-bottom: 1rem;
            }
            .logout-btn {
                background: linear-gradient(135deg, #f5576c, #f093fb);
                margin-left: 1rem;
            }
            .logout-btn:hover {
                background: linear-gradient(135deg, #f093fb, #f5576c);
                box-shadow: 0 8px 25px rgba(245, 87, 108, 0.4);
            }
            .quick-actions {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 1.5rem;
                margin-top: 2rem;
            }
            .action-card {
                background: rgba(255, 255, 255, 0.95);
                backdrop-filter: blur(10px);
                border-radius: 15px;
                padding: 2rem;
                box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease;
                text-align: center;
                border: 1px solid rgba(255, 255, 255, 0.2);
            }
            .action-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 15px 50px rgba(0, 0, 0, 0.15);
            }
            .action-card h3 {
                color: #2c3e50;
                margin-bottom: 1rem;
            }
            .action-card p {
                color: #666;
                margin-bottom: 1.5rem;
                font-size: 0.9rem;
            }
            .wellness-stats {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
                gap: 1rem;
                margin-top: 2rem;
            }
            .stat-card {
                background: linear-gradient(135deg, #667eea, #764ba2);
                color: white;
                border-radius: 15px;
                padding: 1.5rem;
                text-align: center;
                box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            }
            .stat-number {
                font-size: 2rem;
                font-weight: bold;
                margin-bottom: 0.5rem;
            }
            .stat-label {
                font-size: 0.9rem;
                opacity: 0.9;
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
                        <li style="color: #667eea; font-weight: 600;">Dashboard</li>
                        <li>
                            <form action="LogoutServlet" method="post" style="display: inline;">
                                <button type="submit" class="logout-btn" style="border: none; padding: 0.5rem 1rem; border-radius: 25px; font-size: 0.9rem;">
                                    Logout
                                </button>
                            </form>
                        </li>
                    </ul>
                </nav>
            </div>
        </nav>
        
        <main>
            <div class="user-info">
                <h2>Welcome back, <%= userName %>!</h2>
                <p>Email: <%= userEmail %></p>
                <p>You're logged into the BC Student Wellness Management System</p>
            </div>
            
            <div class="wellness-stats">
                <div class="stat-card">
                    <div class="stat-number">3</div>
                    <div class="stat-label">Upcoming Appointments</div>
                </div>
                <div class="stat-card" style="background: linear-gradient(135deg, #f093fb, #f5576c);">
                    <div class="stat-number">12</div>
                    <div class="stat-label">Sessions Completed</div>
                </div>
                <div class="stat-card" style="background: linear-gradient(135deg, #4facfe, #00f2fe);">
                    <div class="stat-number">8</div>
                    <div class="stat-label">Wellness Goals</div>
                </div>
                <div class="stat-card" style="background: linear-gradient(135deg, #43e97b, #38f9d7);">
                    <div class="stat-number">95%</div>
                    <div class="stat-label">Progress Score</div>
                </div>
            </div>
            
            <div class="quick-actions">
                <div class="action-card">
                    <h3>Book Appointment</h3>
                    <p>Schedule a session with one of our professional counselors</p>
                    <button class="btn">Book Now</button>
                </div>
                
                <div class="action-card">
                    <h3>View Appointments</h3>
                    <p>Check your upcoming and past counseling sessions</p>
                    <button class="btn">View Schedule</button>
                </div>
                
                <div class="action-card">
                    <h3>Wellness Assessment</h3>
                    <p>Take a quick assessment to track your mental health progress</p>
                    <button class="btn btn-secondary">Take Assessment</button>
                </div>
                
                <div class="action-card">
                    <h3>Resource Library</h3>
                    <p>Access self-help resources, articles, and wellness tools</p>
                    <button class="btn">Browse Resources</button>
                </div>
                
                <div class="action-card">
                    <h3>Crisis Support</h3>
                    <p>Get immediate help if you're experiencing a mental health crisis</p>
                    <button class="btn btn-secondary">Get Help</button>
                </div>
                
                <div class="action-card">
                    <h3>Feedback</h3>
                    <p>Share your experience and help us improve our services</p>
                    <button class="btn">Give Feedback</button>
                </div>
            </div>
            
            <div class="cards-container" style="margin-top: 3rem;">
                <div class="card">
                    <h3>Recent Activity</h3>
                    <p>Your last counseling session was on July 8th, 2025 with Dr. Sarah Johnson. 
                       Next appointment: July 15th, 2025 at 2:00 PM.</p>
                </div>
                
                <div class="card">
                    <h3>Wellness Tips</h3>
                    <p>Remember to practice the breathing exercises we discussed. 
                       Try the 4-7-8 technique when feeling anxious: breathe in for 4, hold for 7, exhale for 8.</p>
                </div>
                
                <div class="card">
                    <h3>Upcoming Events</h3>
                    <p>Join our "Stress Management Workshop" on July 20th, 2025. 
                       Learn practical techniques for managing academic pressure.</p>
                </div>
            </div>
        </main>
        
        <footer>
            <p>&copy; 2025 Belgium Campus Student Wellness Management System. All rights reserved.</p>
        </footer>
        
        <script>
            // Add some interactivity to the dashboard
            document.addEventListener('DOMContentLoaded', function() {
                // Animate stats on load
                const statNumbers = document.querySelectorAll('.stat-number');
                statNumbers.forEach(stat => {
                    const finalValue = parseInt(stat.textContent);
                    if (!isNaN(finalValue)) {
                        animateNumber(stat, finalValue);
                    }
                });
            });
            
            function animateNumber(element, finalValue) {
                let currentValue = 0;
                const increment = finalValue / 50;
                const timer = setInterval(() => {
                    currentValue += increment;
                    if (currentValue >= finalValue) {
                        element.textContent = finalValue + (element.textContent.includes('%') ? '%' : '');
                        clearInterval(timer);
                    } else {
                        element.textContent = Math.floor(currentValue) + (element.textContent.includes('%') ? '%' : '');
                    }
                }, 30);
            }
        </script>
    </body>
</html>