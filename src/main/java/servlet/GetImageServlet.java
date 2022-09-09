package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet(urlPatterns = "/getImage")
public class GetImageServlet extends HttpServlet {
    public static final String IMAGE_PATH="C:\\Users\\User\\IdeaProjects\\MyLibrary\\projectImages\\";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String profilePic = req.getParameter("profilePic");
        String filePath=IMAGE_PATH+profilePic;
        File imageFile=new File(filePath);
        if (imageFile.exists()){
            try (FileInputStream inputStream=new FileInputStream(imageFile)){
                resp.setContentType("image/jpeg");
                resp.setContentLength((int)imageFile.length());
                OutputStream outputStream=resp.getOutputStream();
                byte[]buffer=new byte[4096];
                int bitesRead=-1;
                while ((bitesRead= inputStream.read(buffer))!=-1){
                    outputStream.write(buffer,0,bitesRead);
                }
            }catch (IOException e){
                e.printStackTrace();
            }
        }
    }
}
