package websocket;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.websocket.StreamInbound;
import org.apache.catalina.websocket.WebSocketServlet;
@WebServlet(urlPatterns = {"/WebSocketMessage"})  
public class WebSocketMessageServlet extends WebSocketServlet {
	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	//public static int ONLINE_USER_COUNT = 1;

	public String getUser(HttpServletRequest request) {
		return (String) request.getSession().getAttribute("user");		
	}

	// 跟平常Servlet不同的是，需要实现createWebSocketInbound，在这里初始化自定义的WebSocket连接对象
	@Override
	protected StreamInbound createWebSocketInbound(String subProtocol,
			HttpServletRequest request) {
		String name = request.getParameter("name");
		String me = request.getParameter("me");
		//System.out.println("name is"+name);
		//System.out.println();
		//System.out.println("me is"+me);
        //return new WebSocketMessageInbound(this.getUser(request));
		return new WebSocketMessageInbound(name,me);//me,
	}

}
