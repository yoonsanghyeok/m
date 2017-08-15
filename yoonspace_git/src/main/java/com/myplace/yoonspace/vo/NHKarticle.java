package com.myplace.yoonspace.vo;

public class NHKarticle {
	private int postno;
	private String title;
	private String inputdate;
	private String summary;
	private String more;
	private String additional;
	private String image_url;
	private String video_url;
	
	public NHKarticle() {}

	public NHKarticle(int postno, String title, String inputdate, String summary, String more, String additional,
			String image_url, String video_url) {
		super();
		this.postno = postno;
		this.title = title;
		this.inputdate = inputdate;
		this.summary = summary;
		this.more = more;
		this.additional = additional;
		this.image_url = image_url;
		this.video_url = video_url;
	}

	public int getPostno() {
		return postno;
	}

	public void setPostno(int postno) {
		this.postno = postno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getMore() {
		return more;
	}

	public void setMore(String more) {
		this.more = more;
	}

	public String getAdditional() {
		return additional;
	}

	public void setAdditional(String additional) {
		this.additional = additional;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public String getVideo_url() {
		return video_url;
	}

	public void setVideo_url(String video_url) {
		this.video_url = video_url;
	}

	@Override
	public String toString() {
		return "NHKarticle [postno=" + postno + ", title=" + title + ", inputdate=" + inputdate + ", summary=" + summary
				+ ", more=" + more + ", additional=" + additional + ", image_url=" + image_url + ", video_url="
				+ video_url + "]";
	}

	
	
	
}
