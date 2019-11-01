package com.grain.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.grain.entity.SysUserEntity;
import com.grain.utils.ShiroUtils;

/**
 * Controller公共组件
 * 
 */
public abstract class AbstractController {
	protected Logger logger = LoggerFactory.getLogger(getClass());
	
	protected SysUserEntity getUser() {

		return ShiroUtils.getUserEntity();
	}

	protected Long getUserId() {

		Long userId = getUser().getUserId();

		return userId;
	}
}
