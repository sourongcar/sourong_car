package com.sourong.company.domain;

import java.io.Serializable;
import java.util.Date;

public class CompanyVO implements Serializable {
    private Integer companyid;

    private String companyname;

    private String companylogo;

    private String servicetime;

    private String companyphone;

    private String companyqr;

    private String companyadress;

    private Date createtime;

    private Date changetime;

    private static final long serialVersionUID = 1L;

    public Integer getCompanyid() {
        return companyid;
    }

    public void setCompanyid(Integer companyid) {
        this.companyid = companyid;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public String getCompanylogo() {
        return companylogo;
    }

    public void setCompanylogo(String companylogo) {
        this.companylogo = companylogo == null ? null : companylogo.trim();
    }

    public String getServicetime() {
        return servicetime;
    }

    public void setServicetime(String servicetime) {
        this.servicetime = servicetime == null ? null : servicetime.trim();
    }

    public String getCompanyphone() {
        return companyphone;
    }

    public void setCompanyphone(String companyphone) {
        this.companyphone = companyphone == null ? null : companyphone.trim();
    }

    public String getCompanyqr() {
        return companyqr;
    }

    public void setCompanyqr(String companyqr) {
        this.companyqr = companyqr == null ? null : companyqr.trim();
    }

    public String getCompanyadress() {
        return companyadress;
    }

    public void setCompanyadress(String companyadress) {
        this.companyadress = companyadress == null ? null : companyadress.trim();
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
        sb.append(", companyid=").append(companyid);
        sb.append(", companyname=").append(companyname);
        sb.append(", companylogo=").append(companylogo);
        sb.append(", servicetime=").append(servicetime);
        sb.append(", companyphone=").append(companyphone);
        sb.append(", companyqr=").append(companyqr);
        sb.append(", companyadress=").append(companyadress);
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
        CompanyVO other = (CompanyVO) that;
        return (this.getCompanyid() == null ? other.getCompanyid() == null : this.getCompanyid().equals(other.getCompanyid()))
            && (this.getCompanyname() == null ? other.getCompanyname() == null : this.getCompanyname().equals(other.getCompanyname()))
            && (this.getCompanylogo() == null ? other.getCompanylogo() == null : this.getCompanylogo().equals(other.getCompanylogo()))
            && (this.getServicetime() == null ? other.getServicetime() == null : this.getServicetime().equals(other.getServicetime()))
            && (this.getCompanyphone() == null ? other.getCompanyphone() == null : this.getCompanyphone().equals(other.getCompanyphone()))
            && (this.getCompanyqr() == null ? other.getCompanyqr() == null : this.getCompanyqr().equals(other.getCompanyqr()))
            && (this.getCompanyadress() == null ? other.getCompanyadress() == null : this.getCompanyadress().equals(other.getCompanyadress()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getChangetime() == null ? other.getChangetime() == null : this.getChangetime().equals(other.getChangetime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getCompanyid() == null) ? 0 : getCompanyid().hashCode());
        result = prime * result + ((getCompanyname() == null) ? 0 : getCompanyname().hashCode());
        result = prime * result + ((getCompanylogo() == null) ? 0 : getCompanylogo().hashCode());
        result = prime * result + ((getServicetime() == null) ? 0 : getServicetime().hashCode());
        result = prime * result + ((getCompanyphone() == null) ? 0 : getCompanyphone().hashCode());
        result = prime * result + ((getCompanyqr() == null) ? 0 : getCompanyqr().hashCode());
        result = prime * result + ((getCompanyadress() == null) ? 0 : getCompanyadress().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getChangetime() == null) ? 0 : getChangetime().hashCode());
        return result;
    }
}