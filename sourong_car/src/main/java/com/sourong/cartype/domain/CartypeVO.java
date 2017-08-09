package com.sourong.cartype.domain;

import java.io.Serializable;
import java.util.Date;

public class CartypeVO implements Serializable {
    private Integer cartypeid;

    private Integer brandid;

    private String cartypename;

    private Integer orderby;

    private Date createtime;

    private Date changetime;
    

	private static final long serialVersionUID = 1L;

    public Integer getCartypeid() {
        return cartypeid;
    }

    public void setCartypeid(Integer cartypeid) {
        this.cartypeid = cartypeid;
    }

    public Integer getBrandid() {
        return brandid;
    }

    public void setBrandid(Integer brandid) {
        this.brandid = brandid;
    }

    public String getCartypename() {
        return cartypename;
    }

    public void setCartypename(String cartypename) {
        this.cartypename = cartypename == null ? null : cartypename.trim();
    }

    public Integer getOrderby() {
        return orderby;
    }

    public void setOrderby(Integer orderby) {
        this.orderby = orderby;
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
        sb.append(", cartypeid=").append(cartypeid);
        sb.append(", brandid=").append(brandid);
        sb.append(", cartypename=").append(cartypename);
        sb.append(", orderby=").append(orderby);
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
        CartypeVO other = (CartypeVO) that;
        return (this.getCartypeid() == null ? other.getCartypeid() == null : this.getCartypeid().equals(other.getCartypeid()))
            && (this.getBrandid() == null ? other.getBrandid() == null : this.getBrandid().equals(other.getBrandid()))
            && (this.getCartypename() == null ? other.getCartypename() == null : this.getCartypename().equals(other.getCartypename()))
            && (this.getOrderby() == null ? other.getOrderby() == null : this.getOrderby().equals(other.getOrderby()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getChangetime() == null ? other.getChangetime() == null : this.getChangetime().equals(other.getChangetime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getCartypeid() == null) ? 0 : getCartypeid().hashCode());
        result = prime * result + ((getBrandid() == null) ? 0 : getBrandid().hashCode());
        result = prime * result + ((getCartypename() == null) ? 0 : getCartypename().hashCode());
        result = prime * result + ((getOrderby() == null) ? 0 : getOrderby().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getChangetime() == null) ? 0 : getChangetime().hashCode());
        return result;
    }
}