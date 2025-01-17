package com.entity.view;

import com.entity.ZhubanfangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 主办方
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-16 14:42:37
 */
@TableName("zhubanfang")
public class ZhubanfangView  extends ZhubanfangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhubanfangView(){
	}
 
 	public ZhubanfangView(ZhubanfangEntity zhubanfangEntity){
 	try {
			BeanUtils.copyProperties(this, zhubanfangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
