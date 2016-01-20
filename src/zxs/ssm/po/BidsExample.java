package zxs.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class BidsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BidsExample() {
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

        public Criteria andBidStateIsNull() {
            addCriterion("bid_State is null");
            return (Criteria) this;
        }

        public Criteria andBidStateIsNotNull() {
            addCriterion("bid_State is not null");
            return (Criteria) this;
        }

        public Criteria andBidStateEqualTo(String value) {
            addCriterion("bid_State =", value, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateNotEqualTo(String value) {
            addCriterion("bid_State <>", value, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateGreaterThan(String value) {
            addCriterion("bid_State >", value, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateGreaterThanOrEqualTo(String value) {
            addCriterion("bid_State >=", value, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateLessThan(String value) {
            addCriterion("bid_State <", value, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateLessThanOrEqualTo(String value) {
            addCriterion("bid_State <=", value, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateLike(String value) {
            addCriterion("bid_State like", value, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateNotLike(String value) {
            addCriterion("bid_State not like", value, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateIn(List<String> values) {
            addCriterion("bid_State in", values, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateNotIn(List<String> values) {
            addCriterion("bid_State not in", values, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateBetween(String value1, String value2) {
            addCriterion("bid_State between", value1, value2, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidStateNotBetween(String value1, String value2) {
            addCriterion("bid_State not between", value1, value2, "bidState");
            return (Criteria) this;
        }

        public Criteria andBidTimeIsNull() {
            addCriterion("bid_time is null");
            return (Criteria) this;
        }

        public Criteria andBidTimeIsNotNull() {
            addCriterion("bid_time is not null");
            return (Criteria) this;
        }

        public Criteria andBidTimeEqualTo(String value) {
            addCriterion("bid_time =", value, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeNotEqualTo(String value) {
            addCriterion("bid_time <>", value, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeGreaterThan(String value) {
            addCriterion("bid_time >", value, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeGreaterThanOrEqualTo(String value) {
            addCriterion("bid_time >=", value, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeLessThan(String value) {
            addCriterion("bid_time <", value, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeLessThanOrEqualTo(String value) {
            addCriterion("bid_time <=", value, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeLike(String value) {
            addCriterion("bid_time like", value, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeNotLike(String value) {
            addCriterion("bid_time not like", value, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeIn(List<String> values) {
            addCriterion("bid_time in", values, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeNotIn(List<String> values) {
            addCriterion("bid_time not in", values, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeBetween(String value1, String value2) {
            addCriterion("bid_time between", value1, value2, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidTimeNotBetween(String value1, String value2) {
            addCriterion("bid_time not between", value1, value2, "bidTime");
            return (Criteria) this;
        }

        public Criteria andBidMoneyIsNull() {
            addCriterion("bid_money is null");
            return (Criteria) this;
        }

        public Criteria andBidMoneyIsNotNull() {
            addCriterion("bid_money is not null");
            return (Criteria) this;
        }

        public Criteria andBidMoneyEqualTo(String value) {
            addCriterion("bid_money =", value, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyNotEqualTo(String value) {
            addCriterion("bid_money <>", value, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyGreaterThan(String value) {
            addCriterion("bid_money >", value, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyGreaterThanOrEqualTo(String value) {
            addCriterion("bid_money >=", value, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyLessThan(String value) {
            addCriterion("bid_money <", value, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyLessThanOrEqualTo(String value) {
            addCriterion("bid_money <=", value, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyLike(String value) {
            addCriterion("bid_money like", value, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyNotLike(String value) {
            addCriterion("bid_money not like", value, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyIn(List<String> values) {
            addCriterion("bid_money in", values, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyNotIn(List<String> values) {
            addCriterion("bid_money not in", values, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyBetween(String value1, String value2) {
            addCriterion("bid_money between", value1, value2, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidMoneyNotBetween(String value1, String value2) {
            addCriterion("bid_money not between", value1, value2, "bidMoney");
            return (Criteria) this;
        }

        public Criteria andBidDateIsNull() {
            addCriterion("bid_date is null");
            return (Criteria) this;
        }

        public Criteria andBidDateIsNotNull() {
            addCriterion("bid_date is not null");
            return (Criteria) this;
        }

        public Criteria andBidDateEqualTo(String value) {
            addCriterion("bid_date =", value, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateNotEqualTo(String value) {
            addCriterion("bid_date <>", value, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateGreaterThan(String value) {
            addCriterion("bid_date >", value, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateGreaterThanOrEqualTo(String value) {
            addCriterion("bid_date >=", value, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateLessThan(String value) {
            addCriterion("bid_date <", value, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateLessThanOrEqualTo(String value) {
            addCriterion("bid_date <=", value, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateLike(String value) {
            addCriterion("bid_date like", value, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateNotLike(String value) {
            addCriterion("bid_date not like", value, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateIn(List<String> values) {
            addCriterion("bid_date in", values, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateNotIn(List<String> values) {
            addCriterion("bid_date not in", values, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateBetween(String value1, String value2) {
            addCriterion("bid_date between", value1, value2, "bidDate");
            return (Criteria) this;
        }

        public Criteria andBidDateNotBetween(String value1, String value2) {
            addCriterion("bid_date not between", value1, value2, "bidDate");
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