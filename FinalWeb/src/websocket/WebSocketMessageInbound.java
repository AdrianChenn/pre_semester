package websocket;
import java.io.IOException;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;

import net.sf.json.JSONObject;

import org.apache.catalina.websocket.MessageInbound;
import org.apache.catalina.websocket.WsOutbound;

import dao.impl.RecordsDaoImpl;

public class WebSocketMessageInbound extends MessageInbound {

	// ��ǰ���ӵ��û�����
	private final String user;
	private final String me;
	public WebSocketMessageInbound(String user,String me) {
		this.user = user;
		this.me = me;
	}

	public String getUser() {
		return this.user;
	}
	public String getMe(){
		return this.me;
	}

	// �������ӵĴ������¼�
	@Override
	protected void onOpen(WsOutbound outbound) {
		// ���������¼��������ӳ����������
		JSONObject result = new JSONObject();
		result.element("type", "user_join");
		result.element("user", this.user);
		// �����������û����͵�ǰ�û����ߵ���Ϣ
		WebSocketMessageInboundPool.sendMessage(result.toString());

		result = new JSONObject();
		result.element("type", "get_online_user");
		result.element("list", WebSocketMessageInboundPool.getOnlineUser());
		// �����ӳ���ӵ�ǰ�����Ӷ���
		WebSocketMessageInboundPool.addMessageInbound(this);
		// ��ǰ���ӷ��͵�ǰ�����û����б�
		WebSocketMessageInboundPool.sendMessageToUser(this.me,this.user,
				result.toString());
	}

	@Override
	protected void onClose(int status) {
		// �����ر��¼��������ӳ����Ƴ�����
		WebSocketMessageInboundPool.removeMessageInbound(this);
		JSONObject result = new JSONObject();
		result.element("type", "user_leave");
		result.element("user", this.user);
		// �������û����͵�ǰ�û��˳�����Ϣ
		WebSocketMessageInboundPool.sendMessage(result.toString());
	}

	@Override
	protected void onBinaryMessage(ByteBuffer message) throws IOException {
		throw new UnsupportedOperationException("Binary message not supported.");
	}

	// �ͻ��˷�����Ϣ��������ʱ�����¼�
	@Override
	protected void onTextMessage(CharBuffer message) throws IOException {
		// �����������û�������Ϣ
		String msg = message.toString();
		//System.out.println(msg);
		if (msg.contains("::")) {
			//String [] str = msg.split("::");
			//String me = "'"+str[0]+"'";
			//String who ="'"+str[1]+"'";
			//String msgs = str[2];	
			String me = "'"+msg.split("::")[0]+"'";
			String user = "'"+msg.split("::")[1]+"'";
			String mes = msg.split("::")[2];
            WebSocketMessageInboundPool.sendMessageToUser(me,user,mes);
            RecordsDaoImpl.addRecords(me, user, mes);
		} else {
			WebSocketMessageInboundPool.sendMessage(message.toString());
		}
	}


}