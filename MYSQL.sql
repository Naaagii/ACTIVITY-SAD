CREATE TABLE departments (
   department_id INT IDENTITY(1,1) PRIMARY KEY,
   department_name VARCHAR(100) NOT NULL,
   created_at DATETIME DEFAULT GETDATE(),
   updated_at DATETIME DEFAULT GETDATE()
);

CREATE TABLE users (
   user_id INT IDENTITY(1,1) PRIMARY KEY,
   username VARCHAR(50) NOT NULL UNIQUE,
   password VARCHAR(255) NOT NULL,
   first_name VARCHAR(100) NOT NULL,
   middle_name VARCHAR(100) NULL,
   last_name VARCHAR(100) NOT NULL,
   extension_name VARCHAR(10) NULL,
   address TEXT NULL,
   contact_number VARCHAR(20) NULL,
   gender VARCHAR(10) CHECK (gender IN ('male', 'female', 'other')) NULL,
   birthday DATE NULL,
   profile_picture VARCHAR(255) NULL,
   role VARCHAR(50) NOT NULL DEFAULT 'User',
   department_id INT NULL,
   status VARCHAR(10) CHECK (status IN ('active', 'inactive')) NOT NULL DEFAULT 'inactive',
   last_login DATETIME NULL,
   created_at DATETIME DEFAULT GETDATE(),
   updated_at DATETIME DEFAULT GETDATE(),
   FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE SET NULL
);