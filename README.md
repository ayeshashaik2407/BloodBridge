# BloodBridge

BloodBridge is a web-based application designed to facilitate the management of blood donations and ensure timely availability of blood for emergency requirements. It serves both hospitals and potential blood donors, enabling efficient communication and coordination during critical times.

## Features

- **Donor Registration**: Donors can create an account, manage their profile, and view their donation history.
- **Hospital Registration**: Hospitals can register and update their details, including blood bank information and emergency contact numbers.
- **Blood Availability Tracking**: Hospitals can update and manage the types and quantities of blood available in their blood banks.
- **Emergency Requests**: Hospitals can make emergency blood requests, which are then visible to registered donors.
- **User-Friendly Interface**: The application is designed with a responsive interface using HTML, CSS, JSP, and Bootstrap, ensuring accessibility across different devices.
- 
## Technologies Used

- **Java**: The core programming language used for the application's backend logic.
- **Servlets**: Java Servlets are used to handle HTTP requests and responses, managing user authentication and authorization.
- **JSPs (Java Server Pages)**: JSPs are used to create dynamic web pages and render the user interface.
- **MySQL**: The relational database management system is used to store user credentials, hospital details, blood bank information, and emergency requests.
- **CSS**: Cascading Style Sheets are used to style the web pages, ensuring a consistent look and feel across the application.
- **Bootstrap**: A popular CSS framework used to create responsive and mobile-first web pages with ease.


## Getting Started
1. **Prerequisites**:
   - Java Development Kit (JDK) 8 or higher
   - Apache Tomcat (or any other Java Servlet container)
   - MySQL database

2. **Installation and Setup**:
   - Clone the repository: `git clone https://github.com/ayeshashaik2407/BloodBridge.git`
   - Set up the MySQL database:
     - Create a new database for the application.
     - Update the database connection details in the application's configuration files.
   - Configure the Apache Tomcat server:
     - Deploy the application to the Tomcat server.
     - Ensure the server is running and accessible.

3. **Running the Application**:
   - Open a web browser and navigate to the application's URL (e.g., `http://localhost:8080/BloodBridge`).
   - Users can sign up and sign in to the application using the secure authentication system.
   - After successful login, users can access the movie search and personalization features.

## Contribution
Contributions to the BloodBridge project are welcome. If you find any issues or have suggestions for improvements, please feel free to submit a pull request or open an issue in the repository.

## License
This project is licensed under the [MIT License](LICENSE).
