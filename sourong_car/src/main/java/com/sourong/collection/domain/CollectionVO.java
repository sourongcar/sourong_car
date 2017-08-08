package com.sourong.collection.domain;

import java.io.Serializable;
import java.util.Date;

public class CollectionVO implements Serializable {
    private Integer collectionid;

    private Integer userid;

    private Integer productid;

    private String marketprice;

    private String sourongprice;

    private String title;

    private Date productiontime;

    private String coverpict;

    private Date createtime;

    private Date changetime;

    private static final long serialVersionUID = 1L;

    public Integer getCollectionid() {
        return collectionid;
    }

    public void setCollectionid(Integer collectionid) {
        this.collectionid = collectionid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public String getMarketprice() {
        return marketprice;
    }

    public void setMarketprice(String marketprice) {
        this.marketprice = marketprice == null ? null : marketprice.trim();
    }

    public String getSourongprice() {
        return sourongprice;
    }

    public void setSourongprice(String sourongprice) {
        this.sourongprice = sourongprice == null ? null : sourongprice.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getProductiontime() {
        return productiontime;
    }

    public void setProductiontime(Date productiontime) {
        this.productiontime = productiontime;
    }

    public String getCoverpict() {
        return coverpict;
    }

    public void setCoverpict(String coverpict) {
        this.coverpict = coverpict == null ? null : coverpict.trim();
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
        sb.append(", collectionid=").append(collectionid);
        sb.append(", userid=").append(userid);
        sb.append(", productid=").append(productid);
        sb.append(", marketprice=").append(marketprice);
        sb.append(", sourongprice=").append(sourongprice);
        sb.append(", title=").append(title);
        sb.append(", productiontime=").append(productiontime);
        sb.append(", coverpict=").append(coverpict);
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
        CollectionVO other = (CollectionVO) that;
        return (this.getCollectionid() == null ? other.getCollectionid() == null : this.getCollectionid().equals(other.getCollectionid()))
            && (this.getUserid() == null ? other.getUserid() == null : this.getUserid().equals(other.getUserid()))
            && (this.getProductid() == null ? other.getProductid() == null : this.getProductid().equals(other.getProductid()))
            && (this.getMarketprice() == null ? other.getMarketprice() == null : this.getMarketprice().equals(other.getMarketprice()))
            && (this.getSourongprice() == null ? other.getSourongprice() == null : this.getSourongprice().equals(other.getSourongprice()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getProductiontime() == null ? other.getProductiontime() == null : this.getProductiontime().equals(other.getProductiontime()))
            && (this.getCoverpict() == null ? other.getCoverpict() == null : this.getCoverpict().equals(other.getCoverpict()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getChangetime() == null ? other.getChangetime() == null : this.getChangetime().equals(other.getChangetime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getCollectionid() == null) ? 0 : getCollectionid().hashCode());
        result = prime * result + ((getUserid() == null) ? 0 : getUserid().hashCode());
        result = prime * result + ((getProductid() == null) ? 0 : getProductid().hashCode());
        result = prime * result + ((getMarketprice() == null) ? 0 : getMarketprice().hashCode());
        result = prime * result + ((getSourongprice() == null) ? 0 : getSourongprice().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getProductiontime() == null) ? 0 : getProductiontime().hashCode());
        result = prime * result + ((getCoverpict() == null) ? 0 : getCoverpict().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getChangetime() == null) ? 0 : getChangetime().hashCode());
        return result;
    }
}