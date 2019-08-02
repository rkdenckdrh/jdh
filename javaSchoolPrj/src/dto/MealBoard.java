package dto;

import java.sql.Timestamp;

public class MealBoard {
	private int meal_no;
	private String meal_id;
	private String meal_title;
	private String meal_content;
	private Timestamp meal_date;
	private int meal_read_count;
	private String meal_filename;

	public int getMeal_no() {
		return meal_no;
	}

	public void setMeal_no(int meal_no) {
		this.meal_no = meal_no;
	}

	public String getMeal_id() {
		return meal_id;
	}

	public void setMeal_id(String meal_id) {
		this.meal_id = meal_id;
	}

	public String getMeal_title() {
		return meal_title;
	}

	public void setMeal_title(String meal_title) {
		this.meal_title = meal_title;
	}

	public String getMeal_content() {
		return meal_content;
	}

	public void setMeal_content(String meal_content) {
		this.meal_content = meal_content;
	}

	public Timestamp getMeal_date() {
		return meal_date;
	}

	public void setMeal_date(Timestamp meal_date) {
		this.meal_date = meal_date;
	}

	public int getMeal_read_count() {
		return meal_read_count;
	}

	public void setMeal_read_count(int meal_read_count) {
		this.meal_read_count = meal_read_count;
	}

	public String getMeal_filename() {
		return meal_filename;
	}

	public void setMeal_filename(String meal_filename) {
		this.meal_filename = meal_filename;
	}

	@Override
	public String toString() {
		return "MealBoard [meal_no=" + meal_no + ", meal_id=" + meal_id + ", meal_title=" + meal_title
				+ ", meal_content=" + meal_content + ", meal_date=" + meal_date + ", meal_read_count=" + meal_read_count
				+ ", meal_filename=" + meal_filename + "]";
	}
}