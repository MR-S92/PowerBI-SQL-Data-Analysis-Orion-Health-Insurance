# PowerBI/SQL-Data-Analysis-Orion-Health-Insurance

###  🚧🚧🚧  Project In Development!! 🚧🚧🚧      

## Introduction:  

To sharpen my data analysis skills and tackle a real world challenge, I designed and carried out a detailed project centered on member data for Orion Health Insurance, a health insurance provider. My goal was to leverage my expertise in MySQL and Power BI to uncover valuable insights that could inform business decisions.

I started by building a relational database in MySQL from scratch, giving me a solid foundation to store and organize the data. To ensure accuracy and consistency, I applied statistical methods and standardized processes to clean and refine the dataset crucial steps for producing reliable results. Then, using Power BI, I crafted interactive dashboards and visualizations that brought the data to life, revealing key patterns in member demographics, enrollment trends, and policy related decisions.

This project wasn’t just about crunching numbers; it was about turning raw data into a clear story that could guide Orion Health’s future strategies. Through this work, I strengthened my abilities in database design, data standardization, and visualization while showing how data can drive smarter decision making.

## Dataset used 
The Orion Health Insurance dataset is a relational SQL database designed to mimic real-world health insurance data. It enables analysis of member demographics, policy details, claims, and health records through four interconnected tables:
Members: Stores demographic data like member_id, name, birth_date, enrollment_date, and state to profile members and track trends.  

- Policies: Contains policy information such as policy_id, member_id, tier, premium, and deductible to assess policy performance and costs.  

- Claims: Tracks claim details including claim_id, member_id, claim_date, claim_amount, and status to analyze claim patterns and financial impacts.  

- EHR (Electronic Health Records): Holds health data like record_id, member_id, record_type, and ICD-10_code to connect health conditions to claims and policies.



<details>
<summary>SQL Data Structure used: </summary>

  ## Why These Columns and Data?
The columns were carefully selected to support key analytical goals:  
Demographics (Members): Data like age and location helps segment members, revealing how these factors influence claims or policy choices.  

- Policy Details (Policies): Columns like tier and premium allow evaluation of how different plans affect costs and member behavior.  

- Claim Data (Claims): Details such as claim_amount and status are crucial for understanding claim frequency, costs, and approval trends.  

- Health Records (EHR): Including ICD-10_code links member health conditions to claims and policies, providing deeper insights into risk and utilization.

This dataset is perfect for practicing data analysis and visualization, enabling queries like average claims by policy tier or identifying high-risk members. It reflects practical, real-world applications in health insurance analytics.


  ## Orion's Entity-Relationship Diagram
  
<img src="https://github.com/user-attachments/assets/b9e80352-6626-43d1-aac6-ec5f5c413c09" width="800" height="700"/>

</details>



<!--

![image](https://github.com/user-attachments/assets/b9e80352-6626-43d1-aac6-ec5f5c413c09)

-->


<!--
+ Comments:
- Make a small SQL introduction.
- Present the four tables.
-

-->

- <a href= "https://github.com/MR-S92/PowerBI-SQL-Data-Analysis-Orion-Health-Insurance/blob/main/Orion_Health_Insurance.sql">Link to SQL Dataset</a>

## Statistical Methods
Project implementation statistical methods are essential for summarizing data, uncovering patterns, and supporting decision-making. 

<!--
+ Comments:
- Also, add that you needed 1,000 members / data to properly use a specific statistical methos etc.

-->

<ins> Descriptive Statistics</ins>:  These include measures like mean, median, mode, and standard deviation. They’re used to summarize patient demographics, claim amounts, or policy details, providing a quick snapshot of the data.

<ins>Inferential Statistics</ins>: Techniques such as hypothesis testing (e.g., t-tests, ANOVA) and confidence intervals allow analysts to draw conclusions about a population from sample data—crucial for comparing groups like policy tiers or regions.

<ins>Regression Analysis</ins>: This models relationships between variables, such as predicting claim amounts based on age or policy type, making it a go-to method for forecasting and understanding key drivers.

<ins>Time Series Analysis</ins>: For temporal data, like claims filed over months or years, this method identifies trends or seasonal patterns, which is valuable in insurance for planning and resource allocation.

<ins>Survival Analysis</ins>: Common in healthcare, this analyzes time-to-event data, such as the time until a member files a claim or cancels a policy, offering insights into customer behavior or risk.

These methods are widely applicable because they address the core needs of healthcare analytics: summarizing complex datasets, testing hypotheses, and predicting outcomes.

<details>
<summary>Statistical methods used: </summary>
This is a dropdown with text!
</details>

## Power BI

## Conclusion 



###  🚧🚧🚧  Project In Development!! 🚧🚧🚧 

<img src="https://github.com/user-attachments/assets/4bb33f40-09f8-4541-97f5-2b6b5fdf6dcb" alt="bulldozer-fail" style="min-width:250px; max-width:250px; width:200px;" align="right"> 
