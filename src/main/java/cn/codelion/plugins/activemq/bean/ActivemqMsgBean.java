/**
 * @fileName:  ActivemqMsgBean.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu[www.codelion.cn]
 * @CreateDate:  2018年3月28日 下午12:22:55
 */ 
package cn.codelion.plugins.activemq.bean; 

/** 
 * @author  QiaoYu[www.codelion.cn]
 */
public class ActivemqMsgBean {
	private String id;
	private String type;
	private String users;
	private String url;
	private String msg;
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUsers() {
		return users;
	}
	public void setUsers(String users) {
		this.users = users;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
}
