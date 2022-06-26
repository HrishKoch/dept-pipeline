CREATE TABLE Department (
  departmentId         INT PRIMARY KEY AUTO_INCREMENT,
  departmentName       VARCHAR(64) ,
  departmentAddress    VARCHAR(64) ,
  departmentCode       VARCHAR(64)
);


insert into Department(departmentName,departmentAddress,departmentCode)
values('USDept','USA','US');
insert into Department(departmentName,departmentAddress,departmentCode)
values('INDDept','IND','IN');
insert into Department(departmentName,departmentAddress,departmentCode)
values('AUSDept','AUS','AU');
insert into Department(departmentName,departmentAddress,departmentCode)
values('NZDept','NZL','NZ');
