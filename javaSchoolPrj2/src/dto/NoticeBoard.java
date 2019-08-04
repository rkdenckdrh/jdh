package dto;

import java.sql.Timestamp;

public class NoticeBoard {
	private int notice_no;
	private String notice_id;
	private String notice_title;
	private String notice_content;
	private Timestamp notice_date;
	private int notice_read_count;
	private String notice_filename;

	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getNotice_id() {
		return notice_id;
	}

	public void setNotice_id(String notice_id) {
		this.notice_id = notice_id;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public Timestamp getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(Timestamp notice_date) {
		this.notice_date = notice_date;
	}

	public int getNotice_read_count() {
		return notice_read_count;
	}

	public void setNotice_read_count(int notice_read_count) {
		this.notice_read_count = notice_read_count;
	}

	public String getNotice_filename() {
		return notice_filename;
	}

	public void setNotice_filename(String notice_filename) {
		this.notice_filename = notice_filename;
	}

	@Override
	public String toString() {
		return "NoticeBoard [notice_no=" + notice_no + ", notice_id=" + notice_id + ", notice_title=" + notice_title
				+ ", notice_content=" + notice_content + ", notice_date=" + notice_date + ", notice_read_count="
				+ notice_read_count + ", notice_filename=" + notice_filename + "]";
	}
}