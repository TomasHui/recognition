package com.zhouwj.recognition.service;

import com.zhouwj.recognition.mapper.CarinfMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarInfoService {
@Autowired
private CarinfMapper carinfMapper;
public Object searchNum(String carnum){
   return carinfMapper.deleteCarInfo(carnum);
}
}
