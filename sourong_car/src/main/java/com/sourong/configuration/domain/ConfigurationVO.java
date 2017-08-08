package com.sourong.configuration.domain;

import java.io.Serializable;
import java.util.Date;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class ConfigurationVO implements Serializable {
    private Integer configurationid;

    private Integer productid;
    
    @Length(max=10)
    @NotEmpty
    private String color;
    @Length(max=36)
    @NotEmpty
    private String mainoilconsumption;

    @Length(max=36)
    @NotEmpty
    private String comprehensiveoilconsumption;

    @Length(max=36)
    @NotEmpty
    private String size;

    @Length(max=36)
    @NotEmpty
    private String structure;

    @Length(max=36)
    @NotEmpty
    private String warranty;

    @Length(max=36)
    @NotEmpty
    private String transmissioncase;

    @Length(max=36)
    @NotEmpty
    private String engine;

    @Length(max=36)
    @NotEmpty
    private String driverway;

    private Date createtime;

    private Date changetime;

    private static final long serialVersionUID = 1L;

    public Integer getConfigurationid() {
        return configurationid;
    }

    public void setConfigurationid(Integer configurationid) {
        this.configurationid = configurationid;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color == null ? null : color.trim();
    }

    public String getMainoilconsumption() {
        return mainoilconsumption;
    }

    public void setMainoilconsumption(String mainoilconsumption) {
        this.mainoilconsumption = mainoilconsumption == null ? null : mainoilconsumption.trim();
    }

    public String getComprehensiveoilconsumption() {
        return comprehensiveoilconsumption;
    }

    public void setComprehensiveoilconsumption(String comprehensiveoilconsumption) {
        this.comprehensiveoilconsumption = comprehensiveoilconsumption == null ? null : comprehensiveoilconsumption.trim();
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size == null ? null : size.trim();
    }

    public String getStructure() {
        return structure;
    }

    public void setStructure(String structure) {
        this.structure = structure == null ? null : structure.trim();
    }

    public String getWarranty() {
        return warranty;
    }

    public void setWarranty(String warranty) {
        this.warranty = warranty == null ? null : warranty.trim();
    }

    public String getTransmissioncase() {
        return transmissioncase;
    }

    public void setTransmissioncase(String transmissioncase) {
        this.transmissioncase = transmissioncase == null ? null : transmissioncase.trim();
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine == null ? null : engine.trim();
    }

    public String getDriverway() {
        return driverway;
    }

    public void setDriverway(String driverway) {
        this.driverway = driverway == null ? null : driverway.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getChangetime() {
        return changetime;
    }

    public void setChangetime(Date changetime) {
        this.changetime = changetime;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", configurationid=").append(configurationid);
        sb.append(", productid=").append(productid);
        sb.append(", color=").append(color);
        sb.append(", mainoilconsumption=").append(mainoilconsumption);
        sb.append(", comprehensiveoilconsumption=").append(comprehensiveoilconsumption);
        sb.append(", size=").append(size);
        sb.append(", structure=").append(structure);
        sb.append(", warranty=").append(warranty);
        sb.append(", transmissioncase=").append(transmissioncase);
        sb.append(", engine=").append(engine);
        sb.append(", driverway=").append(driverway);
        sb.append(", createtime=").append(createtime);
        sb.append(", changetime=").append(changetime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        ConfigurationVO other = (ConfigurationVO) that;
        return (this.getConfigurationid() == null ? other.getConfigurationid() == null : this.getConfigurationid().equals(other.getConfigurationid()))
            && (this.getProductid() == null ? other.getProductid() == null : this.getProductid().equals(other.getProductid()))
            && (this.getColor() == null ? other.getColor() == null : this.getColor().equals(other.getColor()))
            && (this.getMainoilconsumption() == null ? other.getMainoilconsumption() == null : this.getMainoilconsumption().equals(other.getMainoilconsumption()))
            && (this.getComprehensiveoilconsumption() == null ? other.getComprehensiveoilconsumption() == null : this.getComprehensiveoilconsumption().equals(other.getComprehensiveoilconsumption()))
            && (this.getSize() == null ? other.getSize() == null : this.getSize().equals(other.getSize()))
            && (this.getStructure() == null ? other.getStructure() == null : this.getStructure().equals(other.getStructure()))
            && (this.getWarranty() == null ? other.getWarranty() == null : this.getWarranty().equals(other.getWarranty()))
            && (this.getTransmissioncase() == null ? other.getTransmissioncase() == null : this.getTransmissioncase().equals(other.getTransmissioncase()))
            && (this.getEngine() == null ? other.getEngine() == null : this.getEngine().equals(other.getEngine()))
            && (this.getDriverway() == null ? other.getDriverway() == null : this.getDriverway().equals(other.getDriverway()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getChangetime() == null ? other.getChangetime() == null : this.getChangetime().equals(other.getChangetime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getConfigurationid() == null) ? 0 : getConfigurationid().hashCode());
        result = prime * result + ((getProductid() == null) ? 0 : getProductid().hashCode());
        result = prime * result + ((getColor() == null) ? 0 : getColor().hashCode());
        result = prime * result + ((getMainoilconsumption() == null) ? 0 : getMainoilconsumption().hashCode());
        result = prime * result + ((getComprehensiveoilconsumption() == null) ? 0 : getComprehensiveoilconsumption().hashCode());
        result = prime * result + ((getSize() == null) ? 0 : getSize().hashCode());
        result = prime * result + ((getStructure() == null) ? 0 : getStructure().hashCode());
        result = prime * result + ((getWarranty() == null) ? 0 : getWarranty().hashCode());
        result = prime * result + ((getTransmissioncase() == null) ? 0 : getTransmissioncase().hashCode());
        result = prime * result + ((getEngine() == null) ? 0 : getEngine().hashCode());
        result = prime * result + ((getDriverway() == null) ? 0 : getDriverway().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getChangetime() == null) ? 0 : getChangetime().hashCode());
        return result;
    }
}