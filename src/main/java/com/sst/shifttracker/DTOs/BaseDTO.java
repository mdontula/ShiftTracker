package com.sst.shifttracker.DTOs;



public class BaseDTO {

private int id;
private int patient_id;
private String created_date;

public int getPatient_id() {
	return patient_id;
}
public void setPatient_id(int patientId) {
	patient_id = patientId;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCreated_date() {
	return created_date;
}
public void setCreated_date(String createdDate) {
	created_date = createdDate;
}

}
