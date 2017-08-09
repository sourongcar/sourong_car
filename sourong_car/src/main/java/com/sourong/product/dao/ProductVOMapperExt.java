package com.sourong.product.dao;

import java.util.List;

import com.sourong.product.domain.ProductVO;

public interface ProductVOMapperExt {
    int toggledisplay(int id);
    List<ProductVO> listLooping();
    List<ProductVO> listDisplay(int offset,int limit);
}