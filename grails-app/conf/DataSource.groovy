dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = ""
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
            url = "jdbc:mysql://127.0.0.1/grails?useUnicode=true&characterEncoding=UTF-8"


        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://127.0.0.1/grails?useUnicode=true&characterEncoding=UTF-8"


        }
    }
}
