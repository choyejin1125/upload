package com.yj.pay;

public class Result extends Object {
	public int earn;
	public int spend;
	public int remain;

	// overload
	public Result() {

	}

	public Result(int earn, int spend, int remain) {
		super();
		this.earn = earn;
		this.spend = spend;
		this.remain = remain;
	}

	public int getEarn() {
		return earn;
	}

	public void setEarn(int earn) {
		this.earn = earn;
	}

	public int getSpend() {
		return spend;
	}

	public void setSpend(int spend) {
		this.spend = spend;
	}

	public int getRemain() {
		return remain;
	}

	public void setRemain(int remain) {
		this.remain = remain;
	}

	// override
	@Override
	public String toString() {
		return "Result [earn=" + earn + ", spend=" + spend + ", remain=" + remain + "]";
	}

}
