package com.board.dto;

import java.util.Date;

public class BoardDto {
	private int postUserNo;
	private int postId;
	private int postNo;
	private String postBoardName;
	private String postCategoryName;
	private String postTitle;
	private String postContent;
	private String postMdate;
	private Date postRegdate;
	private int postHit;
	private int postCommentHit;
	private int postLike;
	private String postDelflag;
	private String postLatitude;
	private String postLongitude;
	private String postThumbNail;
	
	public BoardDto() {}
	
	public BoardDto(int postUserNo, int postId, int postNo, String postBoardName, String postCategoryName,
			String postTitle, String postContent, String postMdate, Date postRegdate, int postHit, int postCommentHit,
			int postLike, String postDelflag, String postLatitude, String postLongitude, String postThumbNail) {
		this.postUserNo = postUserNo;
		this.postId = postId;
		this.postNo = postNo;
		this.postBoardName = postBoardName;
		this.postCategoryName = postCategoryName;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postMdate = postMdate;
		this.postRegdate = postRegdate;
		this.postHit = postHit;
		this.postCommentHit = postCommentHit;
		this.postLike = postLike;
		this.postDelflag = postDelflag;
		this.postLatitude = postLatitude;
		this.postLongitude = postLongitude;
		this.postThumbNail = postThumbNail;
	}

	public int getPostUserNo() {
		return postUserNo;
	}

	public void setPostUserNo(int postUserNo) {
		this.postUserNo = postUserNo;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getPostBoardName() {
		return postBoardName;
	}

	public void setPostBoardName(String postBoardName) {
		this.postBoardName = postBoardName;
	}

	public String getPostCategoryName() {
		return postCategoryName;
	}

	public void setPostCategoryName(String postCategoryName) {
		this.postCategoryName = postCategoryName;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public String getPostMdate() {
		return postMdate;
	}

	public void setPostMdate(String postMdate) {
		this.postMdate = postMdate;
	}

	public Date getPostRegdate() {
		return postRegdate;
	}

	public void setPostRegdate(Date postRegdate) {
		this.postRegdate = postRegdate;
	}

	public int getPostHit() {
		return postHit;
	}

	public void setPostHit(int postHit) {
		this.postHit = postHit;
	}

	public int getPostCommentHit() {
		return postCommentHit;
	}

	public void setPostCommentHit(int postCommentHit) {
		this.postCommentHit = postCommentHit;
	}

	public int getPostLike() {
		return postLike;
	}

	public void setPostLike(int postLike) {
		this.postLike = postLike;
	}

	public String getpostDelflag() {
		return postDelflag;
	}

	public void setpostDelflag(String postDelflag) {
		this.postDelflag = postDelflag;
	}

	public String getPostLatitude() {
		return postLatitude;
	}

	public void setPostLatitude(String postLatitude) {
		this.postLatitude = postLatitude;
	}

	public String getPostLongitude() {
		return postLongitude;
	}

	public void setPostLongitude(String postLongitude) {
		this.postLongitude = postLongitude;
	}

	public String getPostDelflag() {
		return postDelflag;
	}

	public void setPostDelflag(String postDelflag) {
		this.postDelflag = postDelflag;
	}

	public String getPostThumbNail() {
		return postThumbNail;
	}

	public void setPostThumbNail(String postThumbNail) {
		this.postThumbNail = postThumbNail;
	}
}
