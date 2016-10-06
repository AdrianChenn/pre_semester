package websocket;
import java.io.IOException;
import java.nio.CharBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import dao.IRecordsDao;
import dao.impl.RecordsDaoImpl;
import domain.Records;

public class WebSocketMessageInboundPool {  
	//private static IRecordsDao recordsAll = (IRecordsDao) new RecordsDaoImpl();  
    //�������ӵ�MAP����  
    private static final Map<String,WebSocketMessageInbound > connections = new HashMap<String,WebSocketMessageInbound>();  
      
    //�����ӳ����������  
    public static void addMessageInbound(WebSocketMessageInbound inbound){  
        //�������  
        System.out.println("user : " + inbound.getUser() + " join..");  
        connections.put(inbound.getUser(), inbound);  
    }  
      
    //��ȡ���е������û�  
    public static Set<String> getOnlineUser(){  
        return connections.keySet();  
    }  
      
    public static void removeMessageInbound(WebSocketMessageInbound inbound){  
        //�Ƴ�����  
        System.out.println("user : " + inbound.getUser() + " exit..");  
        connections.remove(inbound.getUser());  
    }  
    //����  
    public static void sendMessageToUser(String me,String user,String message){ 
    	//RecordsDaoImpl.addRecords(Integer.valueOf(user), message);
        try {  
            //���ض����û���������  
			//System.out.println("The me is "+me);
			//System.out.println("The who is "+user);
			//System.out.println("The msgs is "+message);
        	//System.out.println("send message to me : " + me + " ,message content : " + message);
            System.out.println("send message to user : " + user + " ,message content : " + message);  
            WebSocketMessageInbound inbound = connections.get(user);  
            if(inbound != null){ 
            	//inbound.getWsOutbound().writeTextMessage(CharBuffer.wrap(me));
            	//inbound.getWsOutbound().writeTextMessage(CharBuffer.wrap(message)); 
            	//CharBuffer.wrap���ַ������װ����������
            	//System.out.print(count);
            	inbound.getWsOutbound().writeTextMessage(CharBuffer.wrap(user));
                inbound.getWsOutbound().writeTextMessage(CharBuffer.wrap(message)); 
            	//int count  = RecordsDaoImpl.addRecords(Integer.valueOf(user), message);
                //System.out.print("The user is "+user);
                //System.out.print("The message is "+message);               
            }            
        } catch (IOException e) {  
            e.printStackTrace();  
        } 
    }  
      
    //�����е��û�������Ϣ  
    public static void sendMessage(String message){  
        try {  
            Set<String> keySet = connections.keySet();  
            for (String key : keySet) {  
                WebSocketMessageInbound inbound = connections.get(key);  
                if(inbound != null){  
                    System.out.println("send message to user : " + key + " ,message content : " + message);                     
                    inbound.getWsOutbound().writeTextMessage(CharBuffer.wrap(message));  
                }  
            }  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }

}  