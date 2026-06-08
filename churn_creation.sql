create table customer_dim(
customerID varchar(50) primary key,
gender int,
SeniorCitizen int,
Partner int,
Depndents int ,
)

create table service_dim(
PhoneService int,
MultipleLines int,
InternetService  varchar(50),
OnlineSecurity  int,
OnlineBackup  int ,
DeviceProtection  int ,
TechSupport int ,
StreamingTV int,
StreamingMovies  int,
service_id int primary key,
)

create table contract_dim(
Contract           varchar(50) ,
PaperlessBilling   int,
PaymentMethod      varchar(50),
contract_id        int primary key
)
create table fact_table(
customerID varchar(50),
tenure              float,
MonthlyCharges      float,
TotalCharges        float,
ChurnPrediction int ,
ChurnProbability float,
fact_id           int  primary key,
service_id         int ,
contract_id        int,
CONSTRAINT FK_customerID FOREIGN KEY (customerID) REFERENCES customer_dim(customerID),
CONSTRAINT FK_service_id FOREIGN KEY (service_id) REFERENCES service_dim(service_id),
CONSTRAINT FK_contract_id FOREIGN KEY (contract_id) REFERENCES contract_dim(contract_id)
)

