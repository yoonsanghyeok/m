package com.myplace.yoonspace.vo;

public class NHKarticle {
	private int arcno;
	private String title;
	private String inputdate;
	private String jdate;
	private String summary;
	private String more;
	private String additional;
	private String image_url;
	private String video_url;
	private String tango;
	private String bunkei;
	private String opinion;
	
	public NHKarticle() {}

	public NHKarticle(int arcno, String title, String inputdate, String jdate, String summary, String more,
			String additional, String image_url, String video_url, String tango, String bunkei, String opinion) {
		super();
		this.arcno = arcno;
		this.title = title;
		this.inputdate = inputdate;
		this.jdate = jdate;
		this.summary = summary;
		this.more = more;
		this.additional = additional;
		this.image_url = image_url;
		this.video_url = video_url;
		this.tango = tango;
		this.bunkei = bunkei;
		this.opinion = opinion;
	}

	public int getArcno() {
		return arcno;
	}

	public void setArcno(int arcno) {
		this.arcno = arcno;
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

	public String getJdate() {
		return jdate;
	}

	public void setJdate(String jdate) {
		this.jdate = jdate;
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

	public String getTango() {
		return tango;
	}

	public void setTango(String tango) {
		this.tango = tango;
	}

	public String getBunkei() {
		return bunkei;
	}

	public void setBunkei(String bunkei) {
		this.bunkei = bunkei;
	}

	public String getopinion() {
		return opinion;
	}

	public void setopinion(String opinion) {
		this.opinion = opinion;
	}

	@Override
	public String toString() {
		return "NHKarticle [arcno=" + arcno + ", title=" + title + ", inputdate=" + inputdate + ", jdate=" + jdate
				+ ", summary=" + summary + ", more=" + more + ", additional=" + additional + ", image_url=" + image_url
				+ ", video_url=" + video_url + ", tango=" + tango + ", bunkei=" + bunkei + ", opinion=" + opinion + "]";
	}

	
}
