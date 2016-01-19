package zxs.ssm.po;

public class Bids {
    private String bidId;

    private String pId;

    private String bidState;

    private String bidTime;

    private String bidMoney;

    private String bidDate;

    public String getBidId() {
        return bidId;
    }

    public void setBidId(String bidId) {
        this.bidId = bidId == null ? null : bidId.trim();
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId == null ? null : pId.trim();
    }

    public String getBidState() {
        return bidState;
    }

    public void setBidState(String bidState) {
        this.bidState = bidState == null ? null : bidState.trim();
    }

    public String getBidTime() {
        return bidTime;
    }

    public void setBidTime(String bidTime) {
        this.bidTime = bidTime == null ? null : bidTime.trim();
    }

    public String getBidMoney() {
        return bidMoney;
    }

    public void setBidMoney(String bidMoney) {
        this.bidMoney = bidMoney == null ? null : bidMoney.trim();
    }

    public String getBidDate() {
        return bidDate;
    }

    public void setBidDate(String bidDate) {
        this.bidDate = bidDate == null ? null : bidDate.trim();
    }
}