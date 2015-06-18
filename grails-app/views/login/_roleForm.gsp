<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">名称：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="rolename" class="form-control" type="text" value="${roleInstance?.rolename}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">备注：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="remark" class="form-control" type="text" value="${roleInstance?.remark}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">创建时间：</label>
    <div class="col-sm-10 col-lg-4">
        <g:datePicker name="dateCreat" precision="day"  value="${roleInstance?.dateCreat}"  />
    </div>
</div>