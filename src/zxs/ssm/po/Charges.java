package zxs.ssm.po;

public class Charges {
    private Integer id;

    private String chId;

    private String chMoney;

    private String chState;

    private String chThismoney;

    private String chSummoney;

    private String chPlanmoney;

    private String chDepid;

    private String chDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChId() {
        return chId;
    }

    public void setChId(String chId) {
        this.chId = chId == null ? null : chId.trim();
    }

    public String getChMoney() {
        return chMoney;
    }

    public void setChMoney(String chMoney) {
        this.chMoney = chMoney == null ? null : chMoney.trim();
    }

    public String getChState() {
        return chState;
    }

    public void setChState(String chState) {
        this.chState = chState == null ? null : chState.trim();
    }

    public String getChThismoney() {
        return chThismoney;
    }

    public void setChThismoney(String chThismoney) {
        this.chThismoney = chThismoney == null ? null : chThismoney.trim();
    }

    public String getChSummoney() {
        return chSummoney;
    }

    public void setChSummoney(String chSummoney) {
        this.chSummoney = chSummoney == null ? null : chSummoney.trim();
    }

    public String getChPlanmoney() {
        return chPlanmoney;
    }

    public void setChPlanmoney(String chPlanmoney) {
        this.chPlanmoney = chPlanmoney == null ? null : chPlanmoney.trim();
    }

    public String getChDepid() {
        return chDepid;
    }

    public void setChDepid(String chDepid) {
        this.chDepid = chDepid == null ? null : chDepid.trim();
    }

    public String getChDate() {
        return chDate;
    }

    public void setChDate(String chDate) {
        this.chDate = chDate == null ? null : chDate.trim();
    }
}