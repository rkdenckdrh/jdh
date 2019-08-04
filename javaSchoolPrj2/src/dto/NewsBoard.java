package dto;

import java.sql.Timestamp;

public class NewsBoard {
	private int news_no;
	private String news_id;
	private String news_title;
	private String news_content;
	private Timestamp news_date;
	private int news_read_count;
	private String news_filename;

	public int getNews_no() {
		return news_no;
	}

	public void setNews_no(int news_no) {
		this.news_no = news_no;
	}

	public String getNews_id() {
		return news_id;
	}

	public void setNews_id(String news_id) {
		this.news_id = news_id;
	}

	public String getNews_title() {
		return news_title;
	}

	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}

	public String getNews_content() {
		return news_content;
	}

	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}

	public Timestamp getNews_date() {
		return news_date;
	}

	public void setNews_date(Timestamp news_date) {
		this.news_date = news_date;
	}

	public int getNews_read_count() {
		return news_read_count;
	}

	public void setNews_read_count(int news_read_count) {
		this.news_read_count = news_read_count;
	}

	public String getNews_filename() {
		return news_filename;
	}

	public void setNews_filename(String news_filename) {
		this.news_filename = news_filename;
	}

	@Override
	public String toString() {
		return "NewsBoard [news_no=" + news_no + ", news_id=" + news_id + ", news_title=" + news_title
				+ ", news_content=" + news_content + ", news_date=" + news_date + ", news_read_count=" + news_read_count
				+ ", news_filename=" + news_filename + "]";
	}
}