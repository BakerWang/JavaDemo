package com.enation.app.ext.component.goodsdiscountticketdetail;

import org.springframework.stereotype.Component;

import com.enation.app.base.core.service.dbsolution.DBSolutionFactory;
import com.enation.framework.component.IComponent;

@Component
public class GoodsDiscountTicketDetailComponent implements IComponent{

	@Override
	public void install() {
		DBSolutionFactory.dbImport("file:com/enation/app/ext/component/goodsdiscountticketdetail/goodsdiscountticketdetail_install.xml", "es_");
		System.out.println("goodsdiscountticketdetail组件已安装");
	}

	@Override
	public void unInstall() {
		DBSolutionFactory.dbImport("file:com/enation/app/ext/component/goodsdiscountticketdetail/goodsdiscountticketdetail_uninstall.xml", "es_");
		System.out.println("goodsdiscountticketdetail组件已卸载");
	}
}
