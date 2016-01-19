package zxs.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class ContractsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ContractsExample() {
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

        public Criteria andCIdIsNull() {
            addCriterion("c_id is null");
            return (Criteria) this;
        }

        public Criteria andCIdIsNotNull() {
            addCriterion("c_id is not null");
            return (Criteria) this;
        }

        public Criteria andCIdEqualTo(String value) {
            addCriterion("c_id =", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotEqualTo(String value) {
            addCriterion("c_id <>", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdGreaterThan(String value) {
            addCriterion("c_id >", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdGreaterThanOrEqualTo(String value) {
            addCriterion("c_id >=", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdLessThan(String value) {
            addCriterion("c_id <", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdLessThanOrEqualTo(String value) {
            addCriterion("c_id <=", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdLike(String value) {
            addCriterion("c_id like", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotLike(String value) {
            addCriterion("c_id not like", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdIn(List<String> values) {
            addCriterion("c_id in", values, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotIn(List<String> values) {
            addCriterion("c_id not in", values, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdBetween(String value1, String value2) {
            addCriterion("c_id between", value1, value2, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotBetween(String value1, String value2) {
            addCriterion("c_id not between", value1, value2, "cId");
            return (Criteria) this;
        }

        public Criteria andBidIdIsNull() {
            addCriterion("bid_id is null");
            return (Criteria) this;
        }

        public Criteria andBidIdIsNotNull() {
            addCriterion("bid_id is not null");
            return (Criteria) this;
        }

        public Criteria andBidIdEqualTo(String value) {
            addCriterion("bid_id =", value, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdNotEqualTo(String value) {
            addCriterion("bid_id <>", value, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdGreaterThan(String value) {
            addCriterion("bid_id >", value, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdGreaterThanOrEqualTo(String value) {
            addCriterion("bid_id >=", value, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdLessThan(String value) {
            addCriterion("bid_id <", value, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdLessThanOrEqualTo(String value) {
            addCriterion("bid_id <=", value, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdLike(String value) {
            addCriterion("bid_id like", value, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdNotLike(String value) {
            addCriterion("bid_id not like", value, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdIn(List<String> values) {
            addCriterion("bid_id in", values, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdNotIn(List<String> values) {
            addCriterion("bid_id not in", values, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdBetween(String value1, String value2) {
            addCriterion("bid_id between", value1, value2, "bidId");
            return (Criteria) this;
        }

        public Criteria andBidIdNotBetween(String value1, String value2) {
            addCriterion("bid_id not between", value1, value2, "bidId");
            return (Criteria) this;
        }

        public Criteria andCNameIsNull() {
            addCriterion("c_name is null");
            return (Criteria) this;
        }

        public Criteria andCNameIsNotNull() {
            addCriterion("c_name is not null");
            return (Criteria) this;
        }

        public Criteria andCNameEqualTo(String value) {
            addCriterion("c_name =", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameNotEqualTo(String value) {
            addCriterion("c_name <>", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameGreaterThan(String value) {
            addCriterion("c_name >", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameGreaterThanOrEqualTo(String value) {
            addCriterion("c_name >=", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameLessThan(String value) {
            addCriterion("c_name <", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameLessThanOrEqualTo(String value) {
            addCriterion("c_name <=", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameLike(String value) {
            addCriterion("c_name like", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameNotLike(String value) {
            addCriterion("c_name not like", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameIn(List<String> values) {
            addCriterion("c_name in", values, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameNotIn(List<String> values) {
            addCriterion("c_name not in", values, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameBetween(String value1, String value2) {
            addCriterion("c_name between", value1, value2, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameNotBetween(String value1, String value2) {
            addCriterion("c_name not between", value1, value2, "cName");
            return (Criteria) this;
        }

        public Criteria andCMoneyIsNull() {
            addCriterion("c_money is null");
            return (Criteria) this;
        }

        public Criteria andCMoneyIsNotNull() {
            addCriterion("c_money is not null");
            return (Criteria) this;
        }

        public Criteria andCMoneyEqualTo(String value) {
            addCriterion("c_money =", value, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyNotEqualTo(String value) {
            addCriterion("c_money <>", value, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyGreaterThan(String value) {
            addCriterion("c_money >", value, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyGreaterThanOrEqualTo(String value) {
            addCriterion("c_money >=", value, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyLessThan(String value) {
            addCriterion("c_money <", value, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyLessThanOrEqualTo(String value) {
            addCriterion("c_money <=", value, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyLike(String value) {
            addCriterion("c_money like", value, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyNotLike(String value) {
            addCriterion("c_money not like", value, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyIn(List<String> values) {
            addCriterion("c_money in", values, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyNotIn(List<String> values) {
            addCriterion("c_money not in", values, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyBetween(String value1, String value2) {
            addCriterion("c_money between", value1, value2, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCMoneyNotBetween(String value1, String value2) {
            addCriterion("c_money not between", value1, value2, "cMoney");
            return (Criteria) this;
        }

        public Criteria andCSigntimeIsNull() {
            addCriterion("c_signTime is null");
            return (Criteria) this;
        }

        public Criteria andCSigntimeIsNotNull() {
            addCriterion("c_signTime is not null");
            return (Criteria) this;
        }

        public Criteria andCSigntimeEqualTo(String value) {
            addCriterion("c_signTime =", value, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeNotEqualTo(String value) {
            addCriterion("c_signTime <>", value, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeGreaterThan(String value) {
            addCriterion("c_signTime >", value, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeGreaterThanOrEqualTo(String value) {
            addCriterion("c_signTime >=", value, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeLessThan(String value) {
            addCriterion("c_signTime <", value, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeLessThanOrEqualTo(String value) {
            addCriterion("c_signTime <=", value, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeLike(String value) {
            addCriterion("c_signTime like", value, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeNotLike(String value) {
            addCriterion("c_signTime not like", value, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeIn(List<String> values) {
            addCriterion("c_signTime in", values, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeNotIn(List<String> values) {
            addCriterion("c_signTime not in", values, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeBetween(String value1, String value2) {
            addCriterion("c_signTime between", value1, value2, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCSigntimeNotBetween(String value1, String value2) {
            addCriterion("c_signTime not between", value1, value2, "cSigntime");
            return (Criteria) this;
        }

        public Criteria andCDateIsNull() {
            addCriterion("c_date is null");
            return (Criteria) this;
        }

        public Criteria andCDateIsNotNull() {
            addCriterion("c_date is not null");
            return (Criteria) this;
        }

        public Criteria andCDateEqualTo(String value) {
            addCriterion("c_date =", value, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateNotEqualTo(String value) {
            addCriterion("c_date <>", value, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateGreaterThan(String value) {
            addCriterion("c_date >", value, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateGreaterThanOrEqualTo(String value) {
            addCriterion("c_date >=", value, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateLessThan(String value) {
            addCriterion("c_date <", value, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateLessThanOrEqualTo(String value) {
            addCriterion("c_date <=", value, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateLike(String value) {
            addCriterion("c_date like", value, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateNotLike(String value) {
            addCriterion("c_date not like", value, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateIn(List<String> values) {
            addCriterion("c_date in", values, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateNotIn(List<String> values) {
            addCriterion("c_date not in", values, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateBetween(String value1, String value2) {
            addCriterion("c_date between", value1, value2, "cDate");
            return (Criteria) this;
        }

        public Criteria andCDateNotBetween(String value1, String value2) {
            addCriterion("c_date not between", value1, value2, "cDate");
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