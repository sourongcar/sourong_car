package com.sourong.consultant.domain;

import java.io.Serializable;
import java.util.Date;

public class ConsultantVO implements Serializable {
    private Integer consultantid;

    private Integer userid;

    private String username;

    private String userphone;

    private Integer productid;

    private Integer isreply;

    private String replyresult;

    private Date createtime;

    private Date changetime;

    private static final long serialVersionUID = 1L;

    public Integer getConsultantid() {
        return consultantid;
    }

    public void setConsultantid(Integer consultantid) {
        this.consultantid = consultantid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone == null ? null : userphone.trim();
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public Integer getIsreply() {
        return isreply;
    }

    public void setIsreply(Integer isreply) {
        this.isreply = isreply;
    }

    public String getReplyresult() {
        return replyresult;
    }

    public void setReplyresult(String replyresult) {
        this.replyresult = replyresult == null ? null : replyresult.trim();
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
        sb.append(", consultantid=").append(consultantid);
        sb.append(", userid=").append(userid);
        sb.append(", username=").append(username);
        sb.append(", userphone=").append(userphone);
        sb.append(", productid=").append(productid);
        sb.append(", isreply=").append(isreply);
        sb.append(", replyresult=").append(replyresult);
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
        ConsultantVO other = (ConsultantVO) that;
        return (this.getConsultantid() == null ? other.getConsultantid() == null : this.getConsultantid().equals(other.getConsultantid()))
            && (this.getUserid() == null ? other.getUserid() == null : this.getUserid().equals(other.getUserid()))
            && (this.getUsername() == null ? other.getUsername() == null : this.getUsername().equals(other.getUsername()))
            && (this.getUserphone() == null ? other.getUserphone() == null : this.getUserphone().equals(other.getUserphone()))
            && (this.getProductid() == null ? other.getProductid() == null : this.getProductid().equals(other.getProductid()))
            && (this.getIsreply() == null ? other.getIsreply() == null : this.getIsreply().equals(other.getIsreply()))
            && (this.getReplyresult() == null ? other.getReplyresult() == null : this.getReplyresult().equals(other.getReplyresult()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getChangetime() == null ? other.getChangetime() == null : this.getChangetime().equals(other.getChangetime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getConsultantid() == null) ? 0 : getConsultantid().hashCode());
        result = prime * result + ((getUserid() == null) ? 0 : getUserid().hashCode());
        result = prime * result + ((getUsername() == null) ? 0 : getUsername().hashCode());
        result = prime * result + ((getUserphone() == null) ? 0 : getUserphone().hashCode());
        result = prime * result + ((getProductid() == null) ? 0 : getProductid().hashCode());
        result = prime * result + ((getIsreply() == null) ? 0 : getIsreply().hashCode());
        result = prime * result + ((getReplyresult() == null) ? 0 : getReplyresult().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getChangetime() == null) ? 0 : getChangetime().hashCode());
        return result;
    }
}