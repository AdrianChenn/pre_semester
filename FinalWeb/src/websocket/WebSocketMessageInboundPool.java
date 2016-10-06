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
    //保存连接的MAP容器  
    private static final Map<String,WebSocketMessageInbound > connections = new HashMap<String,WebSocketMessageInbound>();  
      
    //向连接池中添加连接  
    public static void addMessageInbound(WebSocketMessageInbound inbound){  
        //添加连接  
        System.out.println("user : " + inbound.getUser() + " join..");  
        connections.put(inbound.getUser(), inbound);  
    }  
      
    //获取所有的在线用户  
    public static Set<String> getOnlineUser(){  
        return connections.keySet();  
    }  
      
    public static void removeMessageInbound(WebSocketMessageInbound inbound){  
        //移除连接  
        System.out.println("user : " + inbound.getUser() + " exit..");  
        connections.remove(inbound.getUser());  
    }  
    //单聊  
    public static void sendMessageToUser(String me,String user,String message){ 
    	//RecordsDaoImpl.addRecords(Integer.valueOf(user), message);
        try {  
            //向特定的用户发送数据  
			//System.out.println("The me is "+me);
			//System.out.println("The who is "+user);
			//System.out.println("The msgs is "+message);
        	//System.out.println("send message to me : " + me + " ,message content : " + message);
            System.out.println("send message to user : " + user + " ,message content : " + message);  
            WebSocketMessageInbound inbound = connections.get(user);  
            if(inbound != null){ 
            	//inbound.getWsOutbound().writeTextMessage(CharBuffer.wrap(me));
            	//inbound.getWsOutbound().writeTextMessage(CharBuffer.wrap(message)); 
            	//CharBuffer.wrap将字符数组包装到缓冲区中
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
      
    //向所有的用户发送消息  
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