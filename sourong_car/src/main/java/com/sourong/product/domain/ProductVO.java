package com.sourong.product.domain;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class ProductVO implements Serializable {
    private Integer productid;

    private Integer configurationid;
    @Length(max=25)
    @NotEmpty
    private String brandname;
    @Length(max=25)
    @NotEmpty
    private String cartype;
    @Length(max=10)
    @NotEmpty
    private String marketprice;
    @Length(max=10)
    @NotEmpty
    private String sourongprice;

    private String coverpic;
    @Length(max=128)
    @NotEmpty
    private String picintroduction;
    @Max(1)
    @Min(0)
    @NotNull
    private Integer isdisplay;
    @Length(max=36)
    @NotEmpty
    private String title;
    @Max(2)
    @Min(0)
    @NotNull
    private Integer hit;

    private Date createtime;

    private Date changetime;

    private static final long serialVersionUID = 1L;

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public Integer getConfigurationid() {
        return configurationid;
    }

    public void setConfigurationid(Integer configurationid) {
        this.configurationid = configurationid;
    }

    public String getBrandname() {
        return brandname;
    }

    public void setBrandname(String brandname) {
        this.brandname = brandname == null ? null : brandname.trim();
    }

    public String getCartype() {
        return cartype;
    }

    public void setCartype(String cartype) {
        this.cartype = cartype == null ? null : cartype.trim();
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

    public String getCoverpic() {
        return coverpic;
    }

    public void setCoverpic(String coverpic) {
        this.coverpic = coverpic == null ? null : coverpic.trim();
    }

    public String getPicintroduction() {
        return picintroduction;
    }

    public void setPicintroduction(String picintroduction) {
        this.picintroduction = picintroduction == null ? null : picintroduction.trim();
    }

    public Integer getIsdisplay() {
        return isdisplay;
    }

    public void setIsdisplay(Integer isdisplay) {
        this.isdisplay = isdisplay;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getHit() {
        return hit;
    }

    public void setHit(Integer hit) {
        this.hit = hit;
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
        sb.append(", productid=").append(productid);
        sb.append(", configurationid=").append(configurationid);
        sb.append(", brandname=").append(brandname);
        sb.append(", cartype=").append(cartype);
        sb.append(", marketprice=").append(marketprice);
        sb.append(", sourongprice=").append(sourongprice);
        sb.append(", coverpic=").append(coverpic);
        sb.append(", picintroduction=").append(picintroduction);
        sb.append(", isdisplay=").append(isdisplay);
        sb.append(", title=").append(title);
        sb.append(", hit=").append(hit);
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
        ProductVO other = (ProductVO) that;
        return (this.getProductid() == null ? other.getProductid() == null : this.getProductid().equals(other.getProductid()))
            && (this.getConfigurationid() == null ? other.getConfigurationid() == null : this.getConfigurationid().equals(other.getConfigurationid()))
            && (this.getBrandname() == null ? other.getBrandname() == null : this.getBrandname().equals(other.getBrandname()))
            && (this.getCartype() == null ? other.getCartype() == null : this.getCartype().equals(other.getCartype()))
            && (this.getMarketprice() == null ? other.getMarketprice() == null : this.getMarketprice().equals(other.getMarketprice()))
            && (this.getSourongprice() == null ? other.getSourongprice() == null : this.getSourongprice().equals(other.getSourongprice()))
            && (this.getCoverpic() == null ? other.getCoverpic() == null : this.getCoverpic().equals(other.getCoverpic()))
            && (this.getPicintroduction() == null ? other.getPicintroduction() == null : this.getPicintroduction().equals(other.getPicintroduction()))
            && (this.getIsdisplay() == null ? other.getIsdisplay() == null : this.getIsdisplay().equals(other.getIsdisplay()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getHit() == null ? other.getHit() == null : this.getHit().equals(other.getHit()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getChangetime() == null ? other.getChangetime() == null : this.getChangetime().equals(other.getChangetime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getProductid() == null) ? 0 : getProductid().hashCode());
        result = prime * result + ((getConfigurationid() == null) ? 0 : getConfigurationid().hashCode());
        result = prime * result + ((getBrandname() == null) ? 0 : getBrandname().hashCode());
        result = prime * result + ((getCartype() == null) ? 0 : getCartype().hashCode());
        result = prime * result + ((getMarketprice() == null) ? 0 : getMarketprice().hashCode());
        result = prime * result + ((getSourongprice() == null) ? 0 : getSourongprice().hashCode());
        result = prime * result + ((getCoverpic() == null) ? 0 : getCoverpic().hashCode());
        result = prime * result + ((getPicintroduction() == null) ? 0 : getPicintroduction().hashCode());
        result = prime * result + ((getIsdisplay() == null) ? 0 : getIsdisplay().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getHit() == null) ? 0 : getHit().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getChangetime() == null) ? 0 : getChangetime().hashCode());
        return result;
    }
}