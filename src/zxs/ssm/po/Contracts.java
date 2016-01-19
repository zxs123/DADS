package zxs.ssm.po;

public class Contracts {
    private String cId;

    private String bidId;

    private String cName;

    private String cMoney;

    private String cSigntime;

    private String cDate;

    public String getcId() {
        return cId;
    }

    public void setcId(String cId) {
        this.cId = cId == null ? null : cId.trim();
    }

    public String getBidId() {
        return bidId;
    }

    public void setBidId(String bidId) {
        this.bidId = bidId == null ? null : bidId.trim();
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

    public String getcMoney() {
        return cMoney;
    }

    public void setcMoney(String cMoney) {
        this.cMoney = cMoney == null ? null : cMoney.trim();
    }

    public String getcSigntime() {
        return cSigntime;
    }

    public void setcSigntime(String cSigntime) {
        this.cSigntime = cSigntime == null ? null : cSigntime.trim();
    }

    public String getcDate() {
        return cDate;
    }

    public void setcDate(String cDate) {
        this.cDate = cDate == null ? null : cDate.trim();
    }
}