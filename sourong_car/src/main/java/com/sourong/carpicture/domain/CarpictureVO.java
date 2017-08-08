package com.sourong.carpicture.domain;

import java.io.Serializable;
import java.util.Date;

public class CarpictureVO implements Serializable {
    private Integer carpictureid;

    private Integer productid;

    private String picture;

    private Integer islooping;

    private Date createtime;

    private Date changetime;

    private static final long serialVersionUID = 1L;

    public Integer getCarpictureid() {
        return carpictureid;
    }

    public void setCarpictureid(Integer carpictureid) {
        this.carpictureid = carpictureid;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    public Integer getIslooping() {
        return islooping;
    }

    public void setIslooping(Integer islooping) {
        this.islooping = islooping;
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
        sb.append(", carpictureid=").append(carpictureid);
        sb.append(", productid=").append(productid);
        sb.append(", picture=").append(picture);
        sb.append(", islooping=").append(islooping);
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
        CarpictureVO other = (CarpictureVO) that;
        return (this.getCarpictureid() == null ? other.getCarpictureid() == null : this.getCarpictureid().equals(other.getCarpictureid()))
            && (this.getProductid() == null ? other.getProductid() == null : this.getProductid().equals(other.getProductid()))
            && (this.getPicture() == null ? other.getPicture() == null : this.getPicture().equals(other.getPicture()))
            && (this.getIslooping() == null ? other.getIslooping() == null : this.getIslooping().equals(other.getIslooping()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getChangetime() == null ? other.getChangetime() == null : this.getChangetime().equals(other.getChangetime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getCarpictureid() == null) ? 0 : getCarpictureid().hashCode());
        result = prime * result + ((getProductid() == null) ? 0 : getProductid().hashCode());
        result = prime * result + ((getPicture() == null) ? 0 : getPicture().hashCode());
        result = prime * result + ((getIslooping() == null) ? 0 : getIslooping().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getChangetime() == null) ? 0 : getChangetime().hashCode());
        return result;
    }
}