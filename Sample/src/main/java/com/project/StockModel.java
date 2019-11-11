package com.project;
import java.util.Date;
public class StockModel {
	  private int issue_id;
	  private int issues_indents_id;
	  private Date issues_date;
	  private int issues_amount;
	/**
	 * @return the issue_id
	 */
	public int getIssue_id() {
		return issue_id;
	}
	/**
	 * @param issue_id the issue_id to set
	 */
	public void setIssue_id(int issue_id) {
		this.issue_id = issue_id;
	}
	/**
	 * @return the issues_indents_id
	 */
	public int getIssues_indents_id() {
		return issues_indents_id;
	}
	/**
	 * @param issues_indents_id the issues_indents_id to set
	 */
	public void setIssues_indents_id(int issues_indents_id) {
		this.issues_indents_id = issues_indents_id;
	}
	/**
	 * @return the issues_date
	 */
	public Date getIssues_date() {
		return issues_date;
	}
	/**
	 * @param issues_date the issues_date to set
	 */
	public void setIssues_date(Date issues_date) {
		this.issues_date = issues_date;
	}
	/**
	 * @return the issues_amount
	 */
	public int getIssues_amount() {
		return issues_amount;
	}
	/**
	 * @param issues_amount the issues_amount to set
	 */
	public void setIssues_amount(int issues_amount) {
		this.issues_amount = issues_amount;
	}

}
	