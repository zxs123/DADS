package zxs.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class ChargesExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ChargesExample() {
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

        public Criteria andIdIsNull() {
            addCriterion("Id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("Id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("Id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("Id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("Id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("Id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("Id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("Id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("Id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("Id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("Id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("Id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andChIdIsNull() {
            addCriterion("ch_Id is null");
            return (Criteria) this;
        }

        public Criteria andChIdIsNotNull() {
            addCriterion("ch_Id is not null");
            return (Criteria) this;
        }

        public Criteria andChIdEqualTo(String value) {
            addCriterion("ch_Id =", value, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdNotEqualTo(String value) {
            addCriterion("ch_Id <>", value, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdGreaterThan(String value) {
            addCriterion("ch_Id >", value, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdGreaterThanOrEqualTo(String value) {
            addCriterion("ch_Id >=", value, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdLessThan(String value) {
            addCriterion("ch_Id <", value, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdLessThanOrEqualTo(String value) {
            addCriterion("ch_Id <=", value, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdLike(String value) {
            addCriterion("ch_Id like", value, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdNotLike(String value) {
            addCriterion("ch_Id not like", value, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdIn(List<String> values) {
            addCriterion("ch_Id in", values, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdNotIn(List<String> values) {
            addCriterion("ch_Id not in", values, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdBetween(String value1, String value2) {
            addCriterion("ch_Id between", value1, value2, "chId");
            return (Criteria) this;
        }

        public Criteria andChIdNotBetween(String value1, String value2) {
            addCriterion("ch_Id not between", value1, value2, "chId");
            return (Criteria) this;
        }

        public Criteria andChMoneyIsNull() {
            addCriterion("ch_money is null");
            return (Criteria) this;
        }

        public Criteria andChMoneyIsNotNull() {
            addCriterion("ch_money is not null");
            return (Criteria) this;
        }

        public Criteria andChMoneyEqualTo(String value) {
            addCriterion("ch_money =", value, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyNotEqualTo(String value) {
            addCriterion("ch_money <>", value, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyGreaterThan(String value) {
            addCriterion("ch_money >", value, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyGreaterThanOrEqualTo(String value) {
            addCriterion("ch_money >=", value, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyLessThan(String value) {
            addCriterion("ch_money <", value, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyLessThanOrEqualTo(String value) {
            addCriterion("ch_money <=", value, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyLike(String value) {
            addCriterion("ch_money like", value, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyNotLike(String value) {
            addCriterion("ch_money not like", value, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyIn(List<String> values) {
            addCriterion("ch_money in", values, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyNotIn(List<String> values) {
            addCriterion("ch_money not in", values, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyBetween(String value1, String value2) {
            addCriterion("ch_money between", value1, value2, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChMoneyNotBetween(String value1, String value2) {
            addCriterion("ch_money not between", value1, value2, "chMoney");
            return (Criteria) this;
        }

        public Criteria andChStateIsNull() {
            addCriterion("ch_state is null");
            return (Criteria) this;
        }

        public Criteria andChStateIsNotNull() {
            addCriterion("ch_state is not null");
            return (Criteria) this;
        }

        public Criteria andChStateEqualTo(String value) {
            addCriterion("ch_state =", value, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateNotEqualTo(String value) {
            addCriterion("ch_state <>", value, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateGreaterThan(String value) {
            addCriterion("ch_state >", value, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateGreaterThanOrEqualTo(String value) {
            addCriterion("ch_state >=", value, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateLessThan(String value) {
            addCriterion("ch_state <", value, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateLessThanOrEqualTo(String value) {
            addCriterion("ch_state <=", value, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateLike(String value) {
            addCriterion("ch_state like", value, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateNotLike(String value) {
            addCriterion("ch_state not like", value, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateIn(List<String> values) {
            addCriterion("ch_state in", values, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateNotIn(List<String> values) {
            addCriterion("ch_state not in", values, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateBetween(String value1, String value2) {
            addCriterion("ch_state between", value1, value2, "chState");
            return (Criteria) this;
        }

        public Criteria andChStateNotBetween(String value1, String value2) {
            addCriterion("ch_state not between", value1, value2, "chState");
            return (Criteria) this;
        }

        public Criteria andChThismoneyIsNull() {
            addCriterion("ch_thismoney is null");
            return (Criteria) this;
        }

        public Criteria andChThismoneyIsNotNull() {
            addCriterion("ch_thismoney is not null");
            return (Criteria) this;
        }

        public Criteria andChThismoneyEqualTo(String value) {
            addCriterion("ch_thismoney =", value, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyNotEqualTo(String value) {
            addCriterion("ch_thismoney <>", value, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyGreaterThan(String value) {
            addCriterion("ch_thismoney >", value, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyGreaterThanOrEqualTo(String value) {
            addCriterion("ch_thismoney >=", value, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyLessThan(String value) {
            addCriterion("ch_thismoney <", value, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyLessThanOrEqualTo(String value) {
            addCriterion("ch_thismoney <=", value, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyLike(String value) {
            addCriterion("ch_thismoney like", value, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyNotLike(String value) {
            addCriterion("ch_thismoney not like", value, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyIn(List<String> values) {
            addCriterion("ch_thismoney in", values, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyNotIn(List<String> values) {
            addCriterion("ch_thismoney not in", values, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyBetween(String value1, String value2) {
            addCriterion("ch_thismoney between", value1, value2, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChThismoneyNotBetween(String value1, String value2) {
            addCriterion("ch_thismoney not between", value1, value2, "chThismoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyIsNull() {
            addCriterion("ch_sumMoney is null");
            return (Criteria) this;
        }

        public Criteria andChSummoneyIsNotNull() {
            addCriterion("ch_sumMoney is not null");
            return (Criteria) this;
        }

        public Criteria andChSummoneyEqualTo(String value) {
            addCriterion("ch_sumMoney =", value, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyNotEqualTo(String value) {
            addCriterion("ch_sumMoney <>", value, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyGreaterThan(String value) {
            addCriterion("ch_sumMoney >", value, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyGreaterThanOrEqualTo(String value) {
            addCriterion("ch_sumMoney >=", value, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyLessThan(String value) {
            addCriterion("ch_sumMoney <", value, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyLessThanOrEqualTo(String value) {
            addCriterion("ch_sumMoney <=", value, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyLike(String value) {
            addCriterion("ch_sumMoney like", value, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyNotLike(String value) {
            addCriterion("ch_sumMoney not like", value, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyIn(List<String> values) {
            addCriterion("ch_sumMoney in", values, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyNotIn(List<String> values) {
            addCriterion("ch_sumMoney not in", values, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyBetween(String value1, String value2) {
            addCriterion("ch_sumMoney between", value1, value2, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChSummoneyNotBetween(String value1, String value2) {
            addCriterion("ch_sumMoney not between", value1, value2, "chSummoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyIsNull() {
            addCriterion("ch_planMoney is null");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyIsNotNull() {
            addCriterion("ch_planMoney is not null");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyEqualTo(String value) {
            addCriterion("ch_planMoney =", value, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyNotEqualTo(String value) {
            addCriterion("ch_planMoney <>", value, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyGreaterThan(String value) {
            addCriterion("ch_planMoney >", value, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyGreaterThanOrEqualTo(String value) {
            addCriterion("ch_planMoney >=", value, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyLessThan(String value) {
            addCriterion("ch_planMoney <", value, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyLessThanOrEqualTo(String value) {
            addCriterion("ch_planMoney <=", value, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyLike(String value) {
            addCriterion("ch_planMoney like", value, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyNotLike(String value) {
            addCriterion("ch_planMoney not like", value, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyIn(List<String> values) {
            addCriterion("ch_planMoney in", values, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyNotIn(List<String> values) {
            addCriterion("ch_planMoney not in", values, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyBetween(String value1, String value2) {
            addCriterion("ch_planMoney between", value1, value2, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChPlanmoneyNotBetween(String value1, String value2) {
            addCriterion("ch_planMoney not between", value1, value2, "chPlanmoney");
            return (Criteria) this;
        }

        public Criteria andChDepidIsNull() {
            addCriterion("ch_depId is null");
            return (Criteria) this;
        }

        public Criteria andChDepidIsNotNull() {
            addCriterion("ch_depId is not null");
            return (Criteria) this;
        }

        public Criteria andChDepidEqualTo(String value) {
            addCriterion("ch_depId =", value, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidNotEqualTo(String value) {
            addCriterion("ch_depId <>", value, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidGreaterThan(String value) {
            addCriterion("ch_depId >", value, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidGreaterThanOrEqualTo(String value) {
            addCriterion("ch_depId >=", value, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidLessThan(String value) {
            addCriterion("ch_depId <", value, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidLessThanOrEqualTo(String value) {
            addCriterion("ch_depId <=", value, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidLike(String value) {
            addCriterion("ch_depId like", value, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidNotLike(String value) {
            addCriterion("ch_depId not like", value, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidIn(List<String> values) {
            addCriterion("ch_depId in", values, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidNotIn(List<String> values) {
            addCriterion("ch_depId not in", values, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidBetween(String value1, String value2) {
            addCriterion("ch_depId between", value1, value2, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDepidNotBetween(String value1, String value2) {
            addCriterion("ch_depId not between", value1, value2, "chDepid");
            return (Criteria) this;
        }

        public Criteria andChDateIsNull() {
            addCriterion("ch_date is null");
            return (Criteria) this;
        }

        public Criteria andChDateIsNotNull() {
            addCriterion("ch_date is not null");
            return (Criteria) this;
        }

        public Criteria andChDateEqualTo(String value) {
            addCriterion("ch_date =", value, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateNotEqualTo(String value) {
            addCriterion("ch_date <>", value, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateGreaterThan(String value) {
            addCriterion("ch_date >", value, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateGreaterThanOrEqualTo(String value) {
            addCriterion("ch_date >=", value, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateLessThan(String value) {
            addCriterion("ch_date <", value, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateLessThanOrEqualTo(String value) {
            addCriterion("ch_date <=", value, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateLike(String value) {
            addCriterion("ch_date like", value, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateNotLike(String value) {
            addCriterion("ch_date not like", value, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateIn(List<String> values) {
            addCriterion("ch_date in", values, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateNotIn(List<String> values) {
            addCriterion("ch_date not in", values, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateBetween(String value1, String value2) {
            addCriterion("ch_date between", value1, value2, "chDate");
            return (Criteria) this;
        }

        public Criteria andChDateNotBetween(String value1, String value2) {
            addCriterion("ch_date not between", value1, value2, "chDate");
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