package cn.juke.admin.service;

import java.util.List;

import cn.juke.bean.Broker;
import cn.juke.util.Page;

public interface BrokerService {
		
	public void create(Broker broker);
	
	public void update(Broker broker);
	
	public void delete(Long id);
	
	public Broker getBroker(Long id);
	
	public List<Broker> search(String name,Page page,Long comid);
	
	public List<Broker> search(Page page,Long comid);
	
	public List<Broker> search(Page page);
	
	public List<Broker> search(String name,Page page);
}