package jay.servlet;

import java.io.IOException;
import javax.servlet.http.*;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;


/**
 * Created by IntelliJ IDEA.
 * User: jay
 * Date: 7/9/11
 * Time: 6:38 PM
 * To change this template use File | Settings | File Templates.
 */
public class Login extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
              throws IOException {
        UserService userService = UserServiceFactory.getUserService();
        User user = userService.getCurrentUser();
        if (user != null && userService.isUserLoggedIn()) {
            resp.sendRedirect("/home.jsp");
            //resp.setContentType("text/html");

        } else {
            req.getSession().invalidate();
            resp.sendRedirect(userService.createLoginURL(req.getRequestURI()));
        }
    }
}
