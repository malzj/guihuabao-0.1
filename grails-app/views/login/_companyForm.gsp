<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">名称：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="companyname" class="form-control" type="text" value="${companyInstance?.companyname}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">备注：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="remark" class="form-control" type="text" value="${companyInstance?.remark}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">地址：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="address" class="form-control" type="text" value="${companyInstance?.address}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">电话：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="phone" class="form-control" type="text" value="${companyInstance?.phone}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">使用时间：</label>
    <div class="col-sm-10 col-lg-4">
        <g:datePicker name="dateUse" precision="day"  value="${companyInstance?.dateUse}"  />
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">创建时间：</label>
    <div class="col-sm-10 col-lg-4">
        <g:datePicker name="dateCreat" precision="day"  value="${companyInstance?.dateCreat}"  />
    </div>
</div>