<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">姓名：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="name" class="form-control" type="text" value="${userInstance?.name}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">用户名：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="username" class="form-control" type="text" value="${userInstance?.username}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">城市：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="city" class="form-control" type="text" value="${userInstance?.city}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">电话：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="phone" class="form-control" type="text" value="${userInstance?.phone}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">公司：</label>
    <div class="col-sm-10 col-lg-4">
        %{--<input name="cid"  class="form-control" type="text" value="${userInstance?.cid}">--}%
        <g:select name="cid" from="${com.guihuabao.Company.list()}" optionKey="id" required="" value="" class="many-to-one"/>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">权限：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="rid" class="form-control" type="text" value="${userInstance?.rid}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">地址：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="address" class="form-control" type="text" value="${userInstance?.address}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">创建时间：</label>
    <div class="col-sm-10 col-lg-4">
        <g:datePicker name="dateCreat" precision="day"  value="${userInstance?.dateCreat}"  />
    </div>
</div>