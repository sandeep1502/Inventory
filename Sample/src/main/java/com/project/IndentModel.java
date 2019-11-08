package com.project;
import java.util.Date;

public class IndentModel {
	
	private int indent_Id;
	private String indents_Item;
	private Date  indent_Date;
	private double indents_Amount;
	private String issued_Status;
	public int getIndent_Id() {
		return indent_Id;
	}
	public void setIndent_Id(int indent_Id) {
		this.indent_Id = indent_Id;
	}
	public String getIndents_Item() {
		return indents_Item;
	}
	public void setIndents_Item(String indents_Item) {
		this.indents_Item = indents_Item;
	}
	public Date getIndent_Date() {
		return indent_Date;
	}
	public void setIndent_Date(Date indent_Date) {
		this.indent_Date = indent_Date;
	}
	public double getIndents_Amount() {
		return indents_Amount;
	}
	public void setIndents_Amount(double indents_Amount) {
		this.indents_Amount = indents_Amount;
	}
	public String getIssued_Status() {
		return issued_Status;
	}
	public void setIssued_Status(String issued_Status) {
		this.issued_Status = issued_Status;
	}

}
