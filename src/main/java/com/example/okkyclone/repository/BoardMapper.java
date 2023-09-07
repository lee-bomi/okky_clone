package com.example.okkyclone.repository;

import com.example.okkyclone.Member;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {

    Member selectById(int num);
}
