package zxs.ssm.po;

public class BidPlan {
    private String pId;

    private String pName;

    private String pType;

    private String pService;

    private String pScale;

    private String pOwnername;

    private String pConstruction;

    private String pLocation;

    private String pOpentime;

    private String pBmanager;

    private String pPmanager;

    private String pDepid;

    private String pDate;

    private Integer pSign;

    private String pDesign;

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId == null ? null : pId.trim();
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName == null ? null : pName.trim();
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType == null ? null : pType.trim();
    }

    public String getpService() {
        return pService;
    }

    public void setpService(String pService) {
        this.pService = pService == null ? null : pService.trim();
    }

    public String getpScale() {
        return pScale;
    }

    public void setpScale(String pScale) {
        this.pScale = pScale == null ? null : pScale.trim();
    }

    public String getpOwnername() {
        return pOwnername;
    }

    public void setpOwnername(String pOwnername) {
        this.pOwnername = pOwnername == null ? null : pOwnername.trim();
    }

    public String getpConstruction() {
        return pConstruction;
    }

    public void setpConstruction(String pConstruction) {
        this.pConstruction = pConstruction == null ? null : pConstruction.trim();
    }

    public String getpLocation() {
        return pLocation;
    }

    public void setpLocation(String pLocation) {
        this.pLocation = pLocation == null ? null : pLocation.trim();
    }

    public String getpOpentime() {
        return pOpentime;
    }

    public void setpOpentime(String pOpentime) {
        this.pOpentime = pOpentime == null ? null : pOpentime.trim();
    }

    public String getpBmanager() {
        return pBmanager;
    }

    public void setpBmanager(String pBmanager) {
        this.pBmanager = pBmanager == null ? null : pBmanager.trim();
    }

    public String getpPmanager() {
        return pPmanager;
    }

    public void setpPmanager(String pPmanager) {
        this.pPmanager = pPmanager == null ? null : pPmanager.trim();
    }

    public String getpDepid() {
        return pDepid;
    }

    public void setpDepid(String pDepid) {
        this.pDepid = pDepid == null ? null : pDepid.trim();
    }

    public String getpDate() {
        return pDate;
    }

    public void setpDate(String pDate) {
        this.pDate = pDate == null ? null : pDate.trim();
    }

    public Integer getpSign() {
        return pSign;
    }

    public void setpSign(Integer pSign) {
        this.pSign = pSign;
    }

    public String getpDesign() {
        return pDesign;
    }

    public void setpDesign(String pDesign) {
        this.pDesign = pDesign == null ? null : pDesign.trim();
    }
}