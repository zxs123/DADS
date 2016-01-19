package zxs.ssm.po;

public class NotSign {
    private Integer id;

    private String bidId;

    private String plansign;

    private String date;

    private String beizhu;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBidId() {
        return bidId;
    }

    public void setBidId(String bidId) {
        this.bidId = bidId == null ? null : bidId.trim();
    }

    public String getPlansign() {
        return plansign;
    }

    public void setPlansign(String plansign) {
        this.plansign = plansign == null ? null : plansign.trim();
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date == null ? null : date.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? null : beizhu.trim();
    }
}