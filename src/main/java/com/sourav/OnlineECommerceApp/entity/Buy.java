package com.sourav.OnlineECommerceApp.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Buy {
	@Id
	private int billno;
	private int pid;
	private int quantity;
	private double billamt;
	private static int count = 0;
	
	public Buy() {
		super();
		billno = count++;
	}
	public Buy(int pid, int quantity, double billamt) {
		super();
		this.billno = count++;
		this.pid = pid;
		this.quantity = quantity;
		this.billamt = billamt;
	}
	public int getBillno() {
		return billno;
	}
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getBillamt() {
		return billamt;
	}
	public void setBillamt(double billamt) {
		this.billamt = billamt;
	}
	@Override
	public String toString() {
		return "Purchase [billno=" + billno + ", pid=" + pid + ", quantity=" + quantity + ", billamt=" + billamt + "]";
	}
	
	
}

