package zxs.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class BidPlanExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BidPlanExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andPIdIsNull() {
            addCriterion("p_id is null");
            return (Criteria) this;
        }

        public Criteria andPIdIsNotNull() {
            addCriterion("p_id is not null");
            return (Criteria) this;
        }

        public Criteria andPIdEqualTo(String value) {
            addCriterion("p_id =", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotEqualTo(String value) {
            addCriterion("p_id <>", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdGreaterThan(String value) {
            addCriterion("p_id >", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdGreaterThanOrEqualTo(String value) {
            addCriterion("p_id >=", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLessThan(String value) {
            addCriterion("p_id <", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLessThanOrEqualTo(String value) {
            addCriterion("p_id <=", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLike(String value) {
            addCriterion("p_id like", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotLike(String value) {
            addCriterion("p_id not like", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdIn(List<String> values) {
            addCriterion("p_id in", values, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotIn(List<String> values) {
            addCriterion("p_id not in", values, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdBetween(String value1, String value2) {
            addCriterion("p_id between", value1, value2, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotBetween(String value1, String value2) {
            addCriterion("p_id not between", value1, value2, "pId");
            return (Criteria) this;
        }

        public Criteria andPNameIsNull() {
            addCriterion("p_name is null");
            return (Criteria) this;
        }

        public Criteria andPNameIsNotNull() {
            addCriterion("p_name is not null");
            return (Criteria) this;
        }

        public Criteria andPNameEqualTo(String value) {
            addCriterion("p_name =", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotEqualTo(String value) {
            addCriterion("p_name <>", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameGreaterThan(String value) {
            addCriterion("p_name >", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameGreaterThanOrEqualTo(String value) {
            addCriterion("p_name >=", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameLessThan(String value) {
            addCriterion("p_name <", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameLessThanOrEqualTo(String value) {
            addCriterion("p_name <=", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameLike(String value) {
            addCriterion("p_name like", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotLike(String value) {
            addCriterion("p_name not like", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameIn(List<String> values) {
            addCriterion("p_name in", values, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotIn(List<String> values) {
            addCriterion("p_name not in", values, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameBetween(String value1, String value2) {
            addCriterion("p_name between", value1, value2, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotBetween(String value1, String value2) {
            addCriterion("p_name not between", value1, value2, "pName");
            return (Criteria) this;
        }

        public Criteria andPTypeIsNull() {
            addCriterion("p_type is null");
            return (Criteria) this;
        }

        public Criteria andPTypeIsNotNull() {
            addCriterion("p_type is not null");
            return (Criteria) this;
        }

        public Criteria andPTypeEqualTo(String value) {
            addCriterion("p_type =", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotEqualTo(String value) {
            addCriterion("p_type <>", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeGreaterThan(String value) {
            addCriterion("p_type >", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeGreaterThanOrEqualTo(String value) {
            addCriterion("p_type >=", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeLessThan(String value) {
            addCriterion("p_type <", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeLessThanOrEqualTo(String value) {
            addCriterion("p_type <=", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeLike(String value) {
            addCriterion("p_type like", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotLike(String value) {
            addCriterion("p_type not like", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeIn(List<String> values) {
            addCriterion("p_type in", values, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotIn(List<String> values) {
            addCriterion("p_type not in", values, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeBetween(String value1, String value2) {
            addCriterion("p_type between", value1, value2, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotBetween(String value1, String value2) {
            addCriterion("p_type not between", value1, value2, "pType");
            return (Criteria) this;
        }

        public Criteria andPServiceIsNull() {
            addCriterion("p_service is null");
            return (Criteria) this;
        }

        public Criteria andPServiceIsNotNull() {
            addCriterion("p_service is not null");
            return (Criteria) this;
        }

        public Criteria andPServiceEqualTo(String value) {
            addCriterion("p_service =", value, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceNotEqualTo(String value) {
            addCriterion("p_service <>", value, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceGreaterThan(String value) {
            addCriterion("p_service >", value, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceGreaterThanOrEqualTo(String value) {
            addCriterion("p_service >=", value, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceLessThan(String value) {
            addCriterion("p_service <", value, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceLessThanOrEqualTo(String value) {
            addCriterion("p_service <=", value, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceLike(String value) {
            addCriterion("p_service like", value, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceNotLike(String value) {
            addCriterion("p_service not like", value, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceIn(List<String> values) {
            addCriterion("p_service in", values, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceNotIn(List<String> values) {
            addCriterion("p_service not in", values, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceBetween(String value1, String value2) {
            addCriterion("p_service between", value1, value2, "pService");
            return (Criteria) this;
        }

        public Criteria andPServiceNotBetween(String value1, String value2) {
            addCriterion("p_service not between", value1, value2, "pService");
            return (Criteria) this;
        }

        public Criteria andPScaleIsNull() {
            addCriterion("p_scale is null");
            return (Criteria) this;
        }

        public Criteria andPScaleIsNotNull() {
            addCriterion("p_scale is not null");
            return (Criteria) this;
        }

        public Criteria andPScaleEqualTo(String value) {
            addCriterion("p_scale =", value, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleNotEqualTo(String value) {
            addCriterion("p_scale <>", value, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleGreaterThan(String value) {
            addCriterion("p_scale >", value, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleGreaterThanOrEqualTo(String value) {
            addCriterion("p_scale >=", value, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleLessThan(String value) {
            addCriterion("p_scale <", value, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleLessThanOrEqualTo(String value) {
            addCriterion("p_scale <=", value, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleLike(String value) {
            addCriterion("p_scale like", value, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleNotLike(String value) {
            addCriterion("p_scale not like", value, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleIn(List<String> values) {
            addCriterion("p_scale in", values, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleNotIn(List<String> values) {
            addCriterion("p_scale not in", values, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleBetween(String value1, String value2) {
            addCriterion("p_scale between", value1, value2, "pScale");
            return (Criteria) this;
        }

        public Criteria andPScaleNotBetween(String value1, String value2) {
            addCriterion("p_scale not between", value1, value2, "pScale");
            return (Criteria) this;
        }

        public Criteria andPOwnernameIsNull() {
            addCriterion("p_ownername is null");
            return (Criteria) this;
        }

        public Criteria andPOwnernameIsNotNull() {
            addCriterion("p_ownername is not null");
            return (Criteria) this;
        }

        public Criteria andPOwnernameEqualTo(String value) {
            addCriterion("p_ownername =", value, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameNotEqualTo(String value) {
            addCriterion("p_ownername <>", value, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameGreaterThan(String value) {
            addCriterion("p_ownername >", value, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameGreaterThanOrEqualTo(String value) {
            addCriterion("p_ownername >=", value, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameLessThan(String value) {
            addCriterion("p_ownername <", value, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameLessThanOrEqualTo(String value) {
            addCriterion("p_ownername <=", value, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameLike(String value) {
            addCriterion("p_ownername like", value, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameNotLike(String value) {
            addCriterion("p_ownername not like", value, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameIn(List<String> values) {
            addCriterion("p_ownername in", values, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameNotIn(List<String> values) {
            addCriterion("p_ownername not in", values, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameBetween(String value1, String value2) {
            addCriterion("p_ownername between", value1, value2, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPOwnernameNotBetween(String value1, String value2) {
            addCriterion("p_ownername not between", value1, value2, "pOwnername");
            return (Criteria) this;
        }

        public Criteria andPConstructionIsNull() {
            addCriterion("p_construction is null");
            return (Criteria) this;
        }

        public Criteria andPConstructionIsNotNull() {
            addCriterion("p_construction is not null");
            return (Criteria) this;
        }

        public Criteria andPConstructionEqualTo(String value) {
            addCriterion("p_construction =", value, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionNotEqualTo(String value) {
            addCriterion("p_construction <>", value, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionGreaterThan(String value) {
            addCriterion("p_construction >", value, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionGreaterThanOrEqualTo(String value) {
            addCriterion("p_construction >=", value, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionLessThan(String value) {
            addCriterion("p_construction <", value, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionLessThanOrEqualTo(String value) {
            addCriterion("p_construction <=", value, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionLike(String value) {
            addCriterion("p_construction like", value, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionNotLike(String value) {
            addCriterion("p_construction not like", value, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionIn(List<String> values) {
            addCriterion("p_construction in", values, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionNotIn(List<String> values) {
            addCriterion("p_construction not in", values, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionBetween(String value1, String value2) {
            addCriterion("p_construction between", value1, value2, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPConstructionNotBetween(String value1, String value2) {
            addCriterion("p_construction not between", value1, value2, "pConstruction");
            return (Criteria) this;
        }

        public Criteria andPLocationIsNull() {
            addCriterion("p_location is null");
            return (Criteria) this;
        }

        public Criteria andPLocationIsNotNull() {
            addCriterion("p_location is not null");
            return (Criteria) this;
        }

        public Criteria andPLocationEqualTo(String value) {
            addCriterion("p_location =", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationNotEqualTo(String value) {
            addCriterion("p_location <>", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationGreaterThan(String value) {
            addCriterion("p_location >", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationGreaterThanOrEqualTo(String value) {
            addCriterion("p_location >=", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationLessThan(String value) {
            addCriterion("p_location <", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationLessThanOrEqualTo(String value) {
            addCriterion("p_location <=", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationLike(String value) {
            addCriterion("p_location like", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationNotLike(String value) {
            addCriterion("p_location not like", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationIn(List<String> values) {
            addCriterion("p_location in", values, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationNotIn(List<String> values) {
            addCriterion("p_location not in", values, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationBetween(String value1, String value2) {
            addCriterion("p_location between", value1, value2, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationNotBetween(String value1, String value2) {
            addCriterion("p_location not between", value1, value2, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPOpentimeIsNull() {
            addCriterion("p_opentime is null");
            return (Criteria) this;
        }

        public Criteria andPOpentimeIsNotNull() {
            addCriterion("p_opentime is not null");
            return (Criteria) this;
        }

        public Criteria andPOpentimeEqualTo(String value) {
            addCriterion("p_opentime =", value, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeNotEqualTo(String value) {
            addCriterion("p_opentime <>", value, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeGreaterThan(String value) {
            addCriterion("p_opentime >", value, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeGreaterThanOrEqualTo(String value) {
            addCriterion("p_opentime >=", value, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeLessThan(String value) {
            addCriterion("p_opentime <", value, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeLessThanOrEqualTo(String value) {
            addCriterion("p_opentime <=", value, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeLike(String value) {
            addCriterion("p_opentime like", value, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeNotLike(String value) {
            addCriterion("p_opentime not like", value, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeIn(List<String> values) {
            addCriterion("p_opentime in", values, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeNotIn(List<String> values) {
            addCriterion("p_opentime not in", values, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeBetween(String value1, String value2) {
            addCriterion("p_opentime between", value1, value2, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPOpentimeNotBetween(String value1, String value2) {
            addCriterion("p_opentime not between", value1, value2, "pOpentime");
            return (Criteria) this;
        }

        public Criteria andPBmanagerIsNull() {
            addCriterion("p_bmanager is null");
            return (Criteria) this;
        }

        public Criteria andPBmanagerIsNotNull() {
            addCriterion("p_bmanager is not null");
            return (Criteria) this;
        }

        public Criteria andPBmanagerEqualTo(String value) {
            addCriterion("p_bmanager =", value, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerNotEqualTo(String value) {
            addCriterion("p_bmanager <>", value, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerGreaterThan(String value) {
            addCriterion("p_bmanager >", value, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerGreaterThanOrEqualTo(String value) {
            addCriterion("p_bmanager >=", value, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerLessThan(String value) {
            addCriterion("p_bmanager <", value, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerLessThanOrEqualTo(String value) {
            addCriterion("p_bmanager <=", value, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerLike(String value) {
            addCriterion("p_bmanager like", value, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerNotLike(String value) {
            addCriterion("p_bmanager not like", value, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerIn(List<String> values) {
            addCriterion("p_bmanager in", values, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerNotIn(List<String> values) {
            addCriterion("p_bmanager not in", values, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerBetween(String value1, String value2) {
            addCriterion("p_bmanager between", value1, value2, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPBmanagerNotBetween(String value1, String value2) {
            addCriterion("p_bmanager not between", value1, value2, "pBmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerIsNull() {
            addCriterion("p_pmanager is null");
            return (Criteria) this;
        }

        public Criteria andPPmanagerIsNotNull() {
            addCriterion("p_pmanager is not null");
            return (Criteria) this;
        }

        public Criteria andPPmanagerEqualTo(String value) {
            addCriterion("p_pmanager =", value, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerNotEqualTo(String value) {
            addCriterion("p_pmanager <>", value, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerGreaterThan(String value) {
            addCriterion("p_pmanager >", value, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerGreaterThanOrEqualTo(String value) {
            addCriterion("p_pmanager >=", value, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerLessThan(String value) {
            addCriterion("p_pmanager <", value, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerLessThanOrEqualTo(String value) {
            addCriterion("p_pmanager <=", value, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerLike(String value) {
            addCriterion("p_pmanager like", value, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerNotLike(String value) {
            addCriterion("p_pmanager not like", value, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerIn(List<String> values) {
            addCriterion("p_pmanager in", values, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerNotIn(List<String> values) {
            addCriterion("p_pmanager not in", values, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerBetween(String value1, String value2) {
            addCriterion("p_pmanager between", value1, value2, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPPmanagerNotBetween(String value1, String value2) {
            addCriterion("p_pmanager not between", value1, value2, "pPmanager");
            return (Criteria) this;
        }

        public Criteria andPDepidIsNull() {
            addCriterion("p_depId is null");
            return (Criteria) this;
        }

        public Criteria andPDepidIsNotNull() {
            addCriterion("p_depId is not null");
            return (Criteria) this;
        }

        public Criteria andPDepidEqualTo(String value) {
            addCriterion("p_depId =", value, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidNotEqualTo(String value) {
            addCriterion("p_depId <>", value, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidGreaterThan(String value) {
            addCriterion("p_depId >", value, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidGreaterThanOrEqualTo(String value) {
            addCriterion("p_depId >=", value, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidLessThan(String value) {
            addCriterion("p_depId <", value, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidLessThanOrEqualTo(String value) {
            addCriterion("p_depId <=", value, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidLike(String value) {
            addCriterion("p_depId like", value, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidNotLike(String value) {
            addCriterion("p_depId not like", value, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidIn(List<String> values) {
            addCriterion("p_depId in", values, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidNotIn(List<String> values) {
            addCriterion("p_depId not in", values, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidBetween(String value1, String value2) {
            addCriterion("p_depId between", value1, value2, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDepidNotBetween(String value1, String value2) {
            addCriterion("p_depId not between", value1, value2, "pDepid");
            return (Criteria) this;
        }

        public Criteria andPDateIsNull() {
            addCriterion("P_date is null");
            return (Criteria) this;
        }

        public Criteria andPDateIsNotNull() {
            addCriterion("P_date is not null");
            return (Criteria) this;
        }

        public Criteria andPDateEqualTo(String value) {
            addCriterion("P_date =", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateNotEqualTo(String value) {
            addCriterion("P_date <>", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateGreaterThan(String value) {
            addCriterion("P_date >", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateGreaterThanOrEqualTo(String value) {
            addCriterion("P_date >=", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateLessThan(String value) {
            addCriterion("P_date <", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateLessThanOrEqualTo(String value) {
            addCriterion("P_date <=", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateLike(String value) {
            addCriterion("P_date like", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateNotLike(String value) {
            addCriterion("P_date not like", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateIn(List<String> values) {
            addCriterion("P_date in", values, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateNotIn(List<String> values) {
            addCriterion("P_date not in", values, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateBetween(String value1, String value2) {
            addCriterion("P_date between", value1, value2, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateNotBetween(String value1, String value2) {
            addCriterion("P_date not between", value1, value2, "pDate");
            return (Criteria) this;
        }

        public Criteria andPSignIsNull() {
            addCriterion("p_sign is null");
            return (Criteria) this;
        }

        public Criteria andPSignIsNotNull() {
            addCriterion("p_sign is not null");
            return (Criteria) this;
        }

        public Criteria andPSignEqualTo(Integer value) {
            addCriterion("p_sign =", value, "pSign");
            return (Criteria) this;
        }

        public Criteria andPSignNotEqualTo(Integer value) {
            addCriterion("p_sign <>", value, "pSign");
            return (Criteria) this;
        }

        public Criteria andPSignGreaterThan(Integer value) {
            addCriterion("p_sign >", value, "pSign");
            return (Criteria) this;
        }

        public Criteria andPSignGreaterThanOrEqualTo(Integer value) {
            addCriterion("p_sign >=", value, "pSign");
            return (Criteria) this;
        }

        public Criteria andPSignLessThan(Integer value) {
            addCriterion("p_sign <", value, "pSign");
            return (Criteria) this;
        }

        public Criteria andPSignLessThanOrEqualTo(Integer value) {
            addCriterion("p_sign <=", value, "pSign");
            return (Criteria) this;
        }

        public Criteria andPSignIn(List<Integer> values) {
            addCriterion("p_sign in", values, "pSign");
            return (Criteria) this;
        }

        public Criteria andPSignNotIn(List<Integer> values) {
            addCriterion("p_sign not in", values, "pSign");
            return (Criteria) this;
        }

        public Criteria andPSignBetween(Integer value1, Integer value2) {
            addCriterion("p_sign between", value1, value2, "pSign");
            return (Criteria) this;
        }

        public Criteria andPSignNotBetween(Integer value1, Integer value2) {
            addCriterion("p_sign not between", value1, value2, "pSign");
            return (Criteria) this;
        }

        public Criteria andPDesignIsNull() {
            addCriterion("p_design is null");
            return (Criteria) this;
        }

        public Criteria andPDesignIsNotNull() {
            addCriterion("p_design is not null");
            return (Criteria) this;
        }

        public Criteria andPDesignEqualTo(String value) {
            addCriterion("p_design =", value, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignNotEqualTo(String value) {
            addCriterion("p_design <>", value, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignGreaterThan(String value) {
            addCriterion("p_design >", value, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignGreaterThanOrEqualTo(String value) {
            addCriterion("p_design >=", value, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignLessThan(String value) {
            addCriterion("p_design <", value, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignLessThanOrEqualTo(String value) {
            addCriterion("p_design <=", value, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignLike(String value) {
            addCriterion("p_design like", value, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignNotLike(String value) {
            addCriterion("p_design not like", value, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignIn(List<String> values) {
            addCriterion("p_design in", values, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignNotIn(List<String> values) {
            addCriterion("p_design not in", values, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignBetween(String value1, String value2) {
            addCriterion("p_design between", value1, value2, "pDesign");
            return (Criteria) this;
        }

        public Criteria andPDesignNotBetween(String value1, String value2) {
            addCriterion("p_design not between", value1, value2, "pDesign");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}