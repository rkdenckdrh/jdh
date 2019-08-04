package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.NoticeBoard;

public class NoticeBoardDAO {
	private NoticeBoardDAO() {
	}

	private static NoticeBoardDAO dao = new NoticeBoardDAO();

	public static NoticeBoardDAO getInstance() {
		return dao;
	}

	public int getTotalCount() {
		int n = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select count(*) from tbl_noticeboard";
		try {
			conn = DBConn.getConnect();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				n = rs.getInt(1);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			DBConn.close(rs);
			DBConn.close(ps);
			DBConn.close(conn);
		}
		return n;
	}

	public List<NoticeBoard> getBoardPage(int start, int size) {
		List<NoticeBoard> list = new ArrayList<NoticeBoard>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
//		String sql = "select * from board order by bno desc limit ?,?"; //mysql
		String sql = "select * from " + "(select /*+index+desc(SYS_C007225)*/ rownum as rn, "
				+ "a.notice_no, a.notice_id, a.notice_title, a.notice_content, a.notice_date, a.notice_read_count, a.notice_filename "
				+ "from  (select * from tbl_noticeboard order by notice_no desc) a " + "where rownum <= ?)b "
				+ "where b.rn >= ?";
		try {
			conn = DBConn.getConnect();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, start + size);
			ps.setInt(2, start + 1);
			rs = ps.executeQuery();
			while (rs.next()) {
				NoticeBoard board = new NoticeBoard();
				board.setNotice_no(rs.getInt("notice_no"));
				board.setNotice_id(rs.getString("notice_id"));
				board.setNotice_title(rs.getString("notice_title"));
				board.setNotice_content(rs.getString("notice_content"));
				board.setNotice_date(rs.getTimestamp("notice_date"));
				board.setNotice_read_count(rs.getInt("notice_read_count"));
				board.setNotice_filename(rs.getString("notice_filename"));
				list.add(board);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			DBConn.close(rs);
			DBConn.close(ps);
			DBConn.close(conn);
		}
		return list;
	}

	public void read_count_update(int notice_no) {
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "update tbl_noticeboard set notice_read_count = notice_read_count+1 where notice_no=?";
		try {
			conn = DBConn.getConnect();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, notice_no);
			int n = ps.executeUpdate();
			if (n == 1) {
//				conn.commit(); //2개 똑같은 거임
				DBConn.commit(conn);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			DBConn.close(ps);
			DBConn.close(conn);
		}
	}

	public NoticeBoard getBoard(int notice_no) {
		NoticeBoard board = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from tbl_noticeboard where notice_no=?";
		try {
			conn = DBConn.getConnect();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, notice_no);
			rs = ps.executeQuery();
			while (rs.next()) {
				board = new NoticeBoard();
				board.setNotice_no(rs.getInt("notice_no"));
				board.setNotice_id(rs.getString("notice_id"));
				board.setNotice_title(rs.getString("notice_title"));
				board.setNotice_content(rs.getString("notice_content"));
				board.setNotice_date(rs.getTimestamp("notice_date"));
				board.setNotice_read_count(rs.getInt("notice_read_count"));
				board.setNotice_filename(rs.getString("notice_filename"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			DBConn.close(rs);
			DBConn.close(ps);
			DBConn.close(conn);
		}
		return board;
	}

	public void noticeInsert(NoticeBoard board) {
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "insert into tbl_noticeboard(notice_no, notice_id, notice_title, notice_content, notice_filename) "
				+ "values(notice_seq.nextval, ?, ?, ?, ?)";
		try {
			conn = DBConn.getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, board.getNotice_id());
			ps.setString(2, board.getNotice_title());
			ps.setString(3, board.getNotice_content());
			ps.setString(4, board.getNotice_filename());
			int n = ps.executeUpdate();
			if (n == 1) {
				DBConn.commit(conn);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			DBConn.close(ps);
			DBConn.close(conn);
		}
	}

	public void boardUpdate(NoticeBoard board) {
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "update tbl_noticeboard set notice_title=?, notice_content=?, notice_filename=? where notice_no=?";
		try {
			conn = DBConn.getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, board.getNotice_title());
			ps.setString(2, board.getNotice_content());
			ps.setString(3, board.getNotice_filename());
			ps.setInt(4, board.getNotice_no());
			int n = ps.executeUpdate();
			if (n == 1) {
				conn.commit();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			DBConn.close(ps);
			DBConn.close(conn);
		}
	}

	public void boardDelete(int bno) {
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "delete from tbl_noticeboard where notice_no=?";
		try {
			conn = DBConn.getConnect();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, bno);
			int n = ps.executeUpdate();
			if (n == 1) {
				conn.commit();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			DBConn.close(ps);
			DBConn.close(conn);
		}
	}

	public List<NoticeBoard> mainNoticeList() {
		List<NoticeBoard> list = new ArrayList<NoticeBoard>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select notice_title from tbl_noticeboard where rownum <= 3 order by notice_no desc";
		try {
			conn = DBConn.getConnect();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				NoticeBoard board = new NoticeBoard();
				board.setNotice_title(rs.getString("notice_title"));
				list.add(board);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			DBConn.close(rs);
			DBConn.close(ps);
			DBConn.close(conn);
		}
		return list;
	}
}
