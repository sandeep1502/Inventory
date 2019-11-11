package com.project;

public class StockadjustModel {
	private int Adjitem_id;
	private String  Adjbatch_no;
	private int   defect_stock;
	private String reason;
	
	
	
	public int getAdjitem_id() {
		return Adjitem_id;
	}
	public void setAdjitem_id(int adjitem_id) {
		Adjitem_id = adjitem_id;
	}
	public String getAdjbatch_no() {
		return Adjbatch_no;
	}
	public void setAdjbatch_no(String adjbatch_no) {
		Adjbatch_no = adjbatch_no;
	}
	public int getDefect_stock() {
		return defect_stock;
	}
	public void setDefect_stock(int defect_stock) {
		this.defect_stock = defect_stock;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
}

