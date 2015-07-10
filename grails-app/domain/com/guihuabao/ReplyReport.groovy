package com.guihuabao

class ReplyReport {
    Integer cid
    Integer puid
    String puname
    Integer bpuid
    String bpuname
    Integer status
    Integer count
    Date dateCreate
    static constraints = {
        cid(nullable: true)
        puid(nullable: true)
        puname(nullable: true)
        bpuid(nullable: true)
        bpuname(nullable: true)
        status(nullable: true)
        count(nullable: true)
        dateCreate(nullable: true)
    }
}
