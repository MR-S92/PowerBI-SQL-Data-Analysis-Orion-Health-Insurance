DROP DATABASE IF EXISTS `Orion_Health_Insurance`;
CREATE DATABASE `Orion_Health_Insurance`;
USE `Orion_Health_Insurance`;

CREATE TABLE Orion_Health_Insurance_members (
    member_id INT AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    gender VARCHAR(15),
    `language` ENUM('English', 'Spanish', 'Bilingual'),
    enrollment_status ENUM('Active', 'Inactive'),
    member_since DATE,
    Financial_stability ENUM('Low Risk', 'Medium', 'High Risk'),
    Life_style ENUM('Smoker', 'Drinks', 'Active', 'Non-Active'),
    state VARCHAR(50),
    PRIMARY KEY (member_id)
);
-- This line below is to calculate age automatic since it changes. 
-- SELECT TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS age FROM Orion_Health_Insurance_members;


INSERT INTO Orion_Health_Insurance_members 
    (first_name, last_name, birth_date, gender, `language`, enrollment_status, member_since, Financial_stability, Life_style, state) 
VALUES
    ('Manuel', 'Sierra', '1979-09-25', 'Male', 'Bilingual', 'Active', '2020-01-25', 'Low Risk', 'Active', 'Florida'),
    ('Jane', 'Smith', '1981-04-14', 'Female', 'English', 'Inactive', '2019-03-22', 'Low Risk', 'Active', 'Alabama')
    ;

-- SELECT*
-- FROM Orion_Health_Insurance_members;


CREATE TABLE Orion_Health_Insurance_Policies (
    policy_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    policy_tier ENUM('Secure', 'Bronze', 'Silver', 'Gold', 'Platinum') NOT NULL,
    coverage_amount DECIMAL(10,2) NOT NULL COMMENT 'Total coverage limit in dollars',
    premium DECIMAL(10,2) NOT NULL COMMENT 'Monthly payment in dollars',
    deductible DECIMAL(10,2) NOT NULL COMMENT 'Amount paid before insurance kicks in',
    coinsurance_percentage TINYINT NOT NULL COMMENT 'Percentage you pay after deductible (0-100)',
    out_of_pocket_max DECIMAL(10,2) NOT NULL COMMENT 'Annual max out-of-pocket cost',
    enrollment_start DATE NOT NULL COMMENT 'Start date of policy coverage',
    enrollment_end DATE NOT NULL COMMENT 'End date of policy coverage',
    network_type ENUM('HMO', 'PPO', 'EPO') NOT NULL DEFAULT 'HMO' COMMENT 'Provider network type',
    virtual_care_covered BOOLEAN NOT NULL DEFAULT TRUE COMMENT 'Is virtual care included?',
    status ENUM('Active', 'Pending', 'Expired', 'Cancelled') NOT NULL DEFAULT 'Pending' COMMENT 'Policy status',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation timestamp',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update timestamp',
    FOREIGN KEY (member_id) REFERENCES Orion_Health_Insurance_members(member_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB COMMENT 'Stores health insurance policy details'
;

-- INSERT INTO Policies (
--     member_id, policy_name, coverage_amount, premium, deductible, 
--     coinsurance_percentage, out_of_pocket_max, enrollment_start, enrollment_end
-- ) VALUES
--     (1, 'Secure', 500000.00, 150.00, 8700.00, 50, 8700.00, '2025-01-01', '2025-12-31'),
--     (2, 'Bronze', 750000.00, 250.00, 6000.00, 40, 8700.00, '2025-01-01', '2025-12-31'),
--     (3, 'Silver', 1000000.00, 350.00, 3000.00, 30, 7500.00, '2025-01-01', '2025-12-31'),
--     (4, 'Gold', 1500000.00, 500.00, 1500.00, 20, 6000.00, '2025-01-01', '2025-12-31'),
--     (5, 'Platinum', 2000000.00, 700.00, 500.00, 20, 5000.00, '2025-01-01', '2025-12-31')
--     ;



SELECT*
FROM Orion_Health_Insurance_Policies;



