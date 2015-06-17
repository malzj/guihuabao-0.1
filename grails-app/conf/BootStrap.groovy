
import com.guihuabao.User

class BootStrap {

    def init = { servletContext ->
        def bookUserInstance = User.findByUsername("hexuadmin")
        if(!bookUserInstance){
            bookUserInstance=new User()
            bookUserInstance.username="hexuadmin"
            bookUserInstance.password="hexuadmin"
            bookUserInstance.rid=1
            if(bookUserInstance.save(flush: true)){
                print(1)
            }else (
            print(2)
            )

        }

        def destroy = {

        }



    }
}