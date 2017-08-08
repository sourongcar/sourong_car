package com.sourong.configuration.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ConfigurationVOExample implements Serializable {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    private Integer limit;

    private Integer offset;

    public ConfigurationVOExample() {
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

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    public Integer getOffset() {
        return offset;
    }

    protected abstract static class GeneratedCriteria implements Serializable {
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

        public Criteria andConfigurationidIsNull() {
            addCriterion("configurationid is null");
            return (Criteria) this;
        }

        public Criteria andConfigurationidIsNotNull() {
            addCriterion("configurationid is not null");
            return (Criteria) this;
        }

        public Criteria andConfigurationidEqualTo(Integer value) {
            addCriterion("configurationid =", value, "configurationid");
            return (Criteria) this;
        }

        public Criteria andConfigurationidNotEqualTo(Integer value) {
            addCriterion("configurationid <>", value, "configurationid");
            return (Criteria) this;
        }

        public Criteria andConfigurationidGreaterThan(Integer value) {
            addCriterion("configurationid >", value, "configurationid");
            return (Criteria) this;
        }

        public Criteria andConfigurationidGreaterThanOrEqualTo(Integer value) {
            addCriterion("configurationid >=", value, "configurationid");
            return (Criteria) this;
        }

        public Criteria andConfigurationidLessThan(Integer value) {
            addCriterion("configurationid <", value, "configurationid");
            return (Criteria) this;
        }

        public Criteria andConfigurationidLessThanOrEqualTo(Integer value) {
            addCriterion("configurationid <=", value, "configurationid");
            return (Criteria) this;
        }

        public Criteria andConfigurationidIn(List<Integer> values) {
            addCriterion("configurationid in", values, "configurationid");
            return (Criteria) this;
        }

        public Criteria andConfigurationidNotIn(List<Integer> values) {
            addCriterion("configurationid not in", values, "configurationid");
            return (Criteria) this;
        }

        public Criteria andConfigurationidBetween(Integer value1, Integer value2) {
            addCriterion("configurationid between", value1, value2, "configurationid");
            return (Criteria) this;
        }

        public Criteria andConfigurationidNotBetween(Integer value1, Integer value2) {
            addCriterion("configurationid not between", value1, value2, "configurationid");
            return (Criteria) this;
        }

        public Criteria andProductidIsNull() {
            addCriterion("productid is null");
            return (Criteria) this;
        }

        public Criteria andProductidIsNotNull() {
            addCriterion("productid is not null");
            return (Criteria) this;
        }

        public Criteria andProductidEqualTo(Integer value) {
            addCriterion("productid =", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidNotEqualTo(Integer value) {
            addCriterion("productid <>", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidGreaterThan(Integer value) {
            addCriterion("productid >", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidGreaterThanOrEqualTo(Integer value) {
            addCriterion("productid >=", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidLessThan(Integer value) {
            addCriterion("productid <", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidLessThanOrEqualTo(Integer value) {
            addCriterion("productid <=", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidIn(List<Integer> values) {
            addCriterion("productid in", values, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidNotIn(List<Integer> values) {
            addCriterion("productid not in", values, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidBetween(Integer value1, Integer value2) {
            addCriterion("productid between", value1, value2, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidNotBetween(Integer value1, Integer value2) {
            addCriterion("productid not between", value1, value2, "productid");
            return (Criteria) this;
        }

        public Criteria andColorIsNull() {
            addCriterion("color is null");
            return (Criteria) this;
        }

        public Criteria andColorIsNotNull() {
            addCriterion("color is not null");
            return (Criteria) this;
        }

        public Criteria andColorEqualTo(String value) {
            addCriterion("color =", value, "color");
            return (Criteria) this;
        }

        public Criteria andColorNotEqualTo(String value) {
            addCriterion("color <>", value, "color");
            return (Criteria) this;
        }

        public Criteria andColorGreaterThan(String value) {
            addCriterion("color >", value, "color");
            return (Criteria) this;
        }

        public Criteria andColorGreaterThanOrEqualTo(String value) {
            addCriterion("color >=", value, "color");
            return (Criteria) this;
        }

        public Criteria andColorLessThan(String value) {
            addCriterion("color <", value, "color");
            return (Criteria) this;
        }

        public Criteria andColorLessThanOrEqualTo(String value) {
            addCriterion("color <=", value, "color");
            return (Criteria) this;
        }

        public Criteria andColorLike(String value) {
            addCriterion("color like", value, "color");
            return (Criteria) this;
        }

        public Criteria andColorNotLike(String value) {
            addCriterion("color not like", value, "color");
            return (Criteria) this;
        }

        public Criteria andColorIn(List<String> values) {
            addCriterion("color in", values, "color");
            return (Criteria) this;
        }

        public Criteria andColorNotIn(List<String> values) {
            addCriterion("color not in", values, "color");
            return (Criteria) this;
        }

        public Criteria andColorBetween(String value1, String value2) {
            addCriterion("color between", value1, value2, "color");
            return (Criteria) this;
        }

        public Criteria andColorNotBetween(String value1, String value2) {
            addCriterion("color not between", value1, value2, "color");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionIsNull() {
            addCriterion("mainoilconsumption is null");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionIsNotNull() {
            addCriterion("mainoilconsumption is not null");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionEqualTo(String value) {
            addCriterion("mainoilconsumption =", value, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionNotEqualTo(String value) {
            addCriterion("mainoilconsumption <>", value, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionGreaterThan(String value) {
            addCriterion("mainoilconsumption >", value, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionGreaterThanOrEqualTo(String value) {
            addCriterion("mainoilconsumption >=", value, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionLessThan(String value) {
            addCriterion("mainoilconsumption <", value, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionLessThanOrEqualTo(String value) {
            addCriterion("mainoilconsumption <=", value, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionLike(String value) {
            addCriterion("mainoilconsumption like", value, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionNotLike(String value) {
            addCriterion("mainoilconsumption not like", value, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionIn(List<String> values) {
            addCriterion("mainoilconsumption in", values, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionNotIn(List<String> values) {
            addCriterion("mainoilconsumption not in", values, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionBetween(String value1, String value2) {
            addCriterion("mainoilconsumption between", value1, value2, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andMainoilconsumptionNotBetween(String value1, String value2) {
            addCriterion("mainoilconsumption not between", value1, value2, "mainoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionIsNull() {
            addCriterion("comprehensiveoilconsumption is null");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionIsNotNull() {
            addCriterion("comprehensiveoilconsumption is not null");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionEqualTo(String value) {
            addCriterion("comprehensiveoilconsumption =", value, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionNotEqualTo(String value) {
            addCriterion("comprehensiveoilconsumption <>", value, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionGreaterThan(String value) {
            addCriterion("comprehensiveoilconsumption >", value, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionGreaterThanOrEqualTo(String value) {
            addCriterion("comprehensiveoilconsumption >=", value, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionLessThan(String value) {
            addCriterion("comprehensiveoilconsumption <", value, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionLessThanOrEqualTo(String value) {
            addCriterion("comprehensiveoilconsumption <=", value, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionLike(String value) {
            addCriterion("comprehensiveoilconsumption like", value, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionNotLike(String value) {
            addCriterion("comprehensiveoilconsumption not like", value, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionIn(List<String> values) {
            addCriterion("comprehensiveoilconsumption in", values, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionNotIn(List<String> values) {
            addCriterion("comprehensiveoilconsumption not in", values, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionBetween(String value1, String value2) {
            addCriterion("comprehensiveoilconsumption between", value1, value2, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andComprehensiveoilconsumptionNotBetween(String value1, String value2) {
            addCriterion("comprehensiveoilconsumption not between", value1, value2, "comprehensiveoilconsumption");
            return (Criteria) this;
        }

        public Criteria andSizeIsNull() {
            addCriterion("size is null");
            return (Criteria) this;
        }

        public Criteria andSizeIsNotNull() {
            addCriterion("size is not null");
            return (Criteria) this;
        }

        public Criteria andSizeEqualTo(String value) {
            addCriterion("size =", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeNotEqualTo(String value) {
            addCriterion("size <>", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeGreaterThan(String value) {
            addCriterion("size >", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeGreaterThanOrEqualTo(String value) {
            addCriterion("size >=", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeLessThan(String value) {
            addCriterion("size <", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeLessThanOrEqualTo(String value) {
            addCriterion("size <=", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeLike(String value) {
            addCriterion("size like", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeNotLike(String value) {
            addCriterion("size not like", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeIn(List<String> values) {
            addCriterion("size in", values, "size");
            return (Criteria) this;
        }

        public Criteria andSizeNotIn(List<String> values) {
            addCriterion("size not in", values, "size");
            return (Criteria) this;
        }

        public Criteria andSizeBetween(String value1, String value2) {
            addCriterion("size between", value1, value2, "size");
            return (Criteria) this;
        }

        public Criteria andSizeNotBetween(String value1, String value2) {
            addCriterion("size not between", value1, value2, "size");
            return (Criteria) this;
        }

        public Criteria andStructureIsNull() {
            addCriterion("structure is null");
            return (Criteria) this;
        }

        public Criteria andStructureIsNotNull() {
            addCriterion("structure is not null");
            return (Criteria) this;
        }

        public Criteria andStructureEqualTo(String value) {
            addCriterion("structure =", value, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureNotEqualTo(String value) {
            addCriterion("structure <>", value, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureGreaterThan(String value) {
            addCriterion("structure >", value, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureGreaterThanOrEqualTo(String value) {
            addCriterion("structure >=", value, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureLessThan(String value) {
            addCriterion("structure <", value, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureLessThanOrEqualTo(String value) {
            addCriterion("structure <=", value, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureLike(String value) {
            addCriterion("structure like", value, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureNotLike(String value) {
            addCriterion("structure not like", value, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureIn(List<String> values) {
            addCriterion("structure in", values, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureNotIn(List<String> values) {
            addCriterion("structure not in", values, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureBetween(String value1, String value2) {
            addCriterion("structure between", value1, value2, "structure");
            return (Criteria) this;
        }

        public Criteria andStructureNotBetween(String value1, String value2) {
            addCriterion("structure not between", value1, value2, "structure");
            return (Criteria) this;
        }

        public Criteria andWarrantyIsNull() {
            addCriterion("warranty is null");
            return (Criteria) this;
        }

        public Criteria andWarrantyIsNotNull() {
            addCriterion("warranty is not null");
            return (Criteria) this;
        }

        public Criteria andWarrantyEqualTo(String value) {
            addCriterion("warranty =", value, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyNotEqualTo(String value) {
            addCriterion("warranty <>", value, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyGreaterThan(String value) {
            addCriterion("warranty >", value, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyGreaterThanOrEqualTo(String value) {
            addCriterion("warranty >=", value, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyLessThan(String value) {
            addCriterion("warranty <", value, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyLessThanOrEqualTo(String value) {
            addCriterion("warranty <=", value, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyLike(String value) {
            addCriterion("warranty like", value, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyNotLike(String value) {
            addCriterion("warranty not like", value, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyIn(List<String> values) {
            addCriterion("warranty in", values, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyNotIn(List<String> values) {
            addCriterion("warranty not in", values, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyBetween(String value1, String value2) {
            addCriterion("warranty between", value1, value2, "warranty");
            return (Criteria) this;
        }

        public Criteria andWarrantyNotBetween(String value1, String value2) {
            addCriterion("warranty not between", value1, value2, "warranty");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseIsNull() {
            addCriterion("transmissioncase is null");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseIsNotNull() {
            addCriterion("transmissioncase is not null");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseEqualTo(String value) {
            addCriterion("transmissioncase =", value, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseNotEqualTo(String value) {
            addCriterion("transmissioncase <>", value, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseGreaterThan(String value) {
            addCriterion("transmissioncase >", value, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseGreaterThanOrEqualTo(String value) {
            addCriterion("transmissioncase >=", value, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseLessThan(String value) {
            addCriterion("transmissioncase <", value, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseLessThanOrEqualTo(String value) {
            addCriterion("transmissioncase <=", value, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseLike(String value) {
            addCriterion("transmissioncase like", value, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseNotLike(String value) {
            addCriterion("transmissioncase not like", value, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseIn(List<String> values) {
            addCriterion("transmissioncase in", values, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseNotIn(List<String> values) {
            addCriterion("transmissioncase not in", values, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseBetween(String value1, String value2) {
            addCriterion("transmissioncase between", value1, value2, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andTransmissioncaseNotBetween(String value1, String value2) {
            addCriterion("transmissioncase not between", value1, value2, "transmissioncase");
            return (Criteria) this;
        }

        public Criteria andEngineIsNull() {
            addCriterion("engine is null");
            return (Criteria) this;
        }

        public Criteria andEngineIsNotNull() {
            addCriterion("engine is not null");
            return (Criteria) this;
        }

        public Criteria andEngineEqualTo(String value) {
            addCriterion("engine =", value, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineNotEqualTo(String value) {
            addCriterion("engine <>", value, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineGreaterThan(String value) {
            addCriterion("engine >", value, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineGreaterThanOrEqualTo(String value) {
            addCriterion("engine >=", value, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineLessThan(String value) {
            addCriterion("engine <", value, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineLessThanOrEqualTo(String value) {
            addCriterion("engine <=", value, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineLike(String value) {
            addCriterion("engine like", value, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineNotLike(String value) {
            addCriterion("engine not like", value, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineIn(List<String> values) {
            addCriterion("engine in", values, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineNotIn(List<String> values) {
            addCriterion("engine not in", values, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineBetween(String value1, String value2) {
            addCriterion("engine between", value1, value2, "engine");
            return (Criteria) this;
        }

        public Criteria andEngineNotBetween(String value1, String value2) {
            addCriterion("engine not between", value1, value2, "engine");
            return (Criteria) this;
        }

        public Criteria andDriverwayIsNull() {
            addCriterion("driverway is null");
            return (Criteria) this;
        }

        public Criteria andDriverwayIsNotNull() {
            addCriterion("driverway is not null");
            return (Criteria) this;
        }

        public Criteria andDriverwayEqualTo(String value) {
            addCriterion("driverway =", value, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayNotEqualTo(String value) {
            addCriterion("driverway <>", value, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayGreaterThan(String value) {
            addCriterion("driverway >", value, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayGreaterThanOrEqualTo(String value) {
            addCriterion("driverway >=", value, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayLessThan(String value) {
            addCriterion("driverway <", value, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayLessThanOrEqualTo(String value) {
            addCriterion("driverway <=", value, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayLike(String value) {
            addCriterion("driverway like", value, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayNotLike(String value) {
            addCriterion("driverway not like", value, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayIn(List<String> values) {
            addCriterion("driverway in", values, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayNotIn(List<String> values) {
            addCriterion("driverway not in", values, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayBetween(String value1, String value2) {
            addCriterion("driverway between", value1, value2, "driverway");
            return (Criteria) this;
        }

        public Criteria andDriverwayNotBetween(String value1, String value2) {
            addCriterion("driverway not between", value1, value2, "driverway");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNull() {
            addCriterion("createtime is null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNotNull() {
            addCriterion("createtime is not null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeEqualTo(Date value) {
            addCriterion("createtime =", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotEqualTo(Date value) {
            addCriterion("createtime <>", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThan(Date value) {
            addCriterion("createtime >", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("createtime >=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThan(Date value) {
            addCriterion("createtime <", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThanOrEqualTo(Date value) {
            addCriterion("createtime <=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIn(List<Date> values) {
            addCriterion("createtime in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotIn(List<Date> values) {
            addCriterion("createtime not in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeBetween(Date value1, Date value2) {
            addCriterion("createtime between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotBetween(Date value1, Date value2) {
            addCriterion("createtime not between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andChangetimeIsNull() {
            addCriterion("changetime is null");
            return (Criteria) this;
        }

        public Criteria andChangetimeIsNotNull() {
            addCriterion("changetime is not null");
            return (Criteria) this;
        }

        public Criteria andChangetimeEqualTo(Date value) {
            addCriterion("changetime =", value, "changetime");
            return (Criteria) this;
        }

        public Criteria andChangetimeNotEqualTo(Date value) {
            addCriterion("changetime <>", value, "changetime");
            return (Criteria) this;
        }

        public Criteria andChangetimeGreaterThan(Date value) {
            addCriterion("changetime >", value, "changetime");
            return (Criteria) this;
        }

        public Criteria andChangetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("changetime >=", value, "changetime");
            return (Criteria) this;
        }

        public Criteria andChangetimeLessThan(Date value) {
            addCriterion("changetime <", value, "changetime");
            return (Criteria) this;
        }

        public Criteria andChangetimeLessThanOrEqualTo(Date value) {
            addCriterion("changetime <=", value, "changetime");
            return (Criteria) this;
        }

        public Criteria andChangetimeIn(List<Date> values) {
            addCriterion("changetime in", values, "changetime");
            return (Criteria) this;
        }

        public Criteria andChangetimeNotIn(List<Date> values) {
            addCriterion("changetime not in", values, "changetime");
            return (Criteria) this;
        }

        public Criteria andChangetimeBetween(Date value1, Date value2) {
            addCriterion("changetime between", value1, value2, "changetime");
            return (Criteria) this;
        }

        public Criteria andChangetimeNotBetween(Date value1, Date value2) {
            addCriterion("changetime not between", value1, value2, "changetime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria implements Serializable {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion implements Serializable {
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