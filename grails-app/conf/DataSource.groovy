dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"

    dialect = org.hibernate.dialect.MySQL5InnoDBDialect
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {

        dataSource {
            username = "root"
            password = "root"
            dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://127.0.0.1:3306/guihuabao?useUnicode=true&characterEncoding=UTF-8"  //你所创建的DB的名称，至于前面写localhost 和127那种都行，如果不在一个机器上，替换为对应的机器名。
        }
        hibernate {
            show_sql = true
        }
    }
    test {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://127.0.0.1/grails?useUnicode=true&characterEncoding=UTF-8"



        }
    }
    production {
        username = "root"
        password = "123456"
        dbCreate = "update"
        //url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
//                    url = "jdbc:mysql://10.4.26.93:3306/d6d96b4848c964aabbe20a8bf2a4bed3b?autoreconnect=true&useUnicode=true&characterEncoding=UTF-8";
        url = "jdbc:mysql://127.0.0.1:3306/guihuabao?useUnicode=true&amp;characterEncoding=UTF8 "

//                dataSource {
//                    username = "usWLp5KHyMqyd"
//                    password = "pU66e7P50BAKB"
//                    dbCreate = "update"
//                    //url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
////                    url = "jdbc:mysql://10.4.26.93:3306/d6d96b4848c964aabbe20a8bf2a4bed3b?autoreconnect=true&useUnicode=true&characterEncoding=UTF-8";
//                    url = "jdbc:mysql://10.4.26.93:3306/d6d96b4848c964aabbe20a8bf2a4bed3b?useUnicode=true&amp;characterEncoding=UTF8 "
////                    pooled = true
////                    properties {
////                        maxActive = -1
////                        minEvictableIdleTimeMillis=1800000
////                        timeBetweenEvictionRunsMillis=1800000
////                        numTestsPerEvictionRun=3
////                        testOnBorrow=true
////                        testWhileIdle=true
////                        testOnReturn=true
////                        validationQuery="SELECT 1"
////                }
//                }


            }

}
