<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">企业名称：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="companyname" class="form-control" type="text" value="${companyInstance?.companyname}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">企业简称：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="companyAbbrev" class="form-control" type="text" value="${companyInstance?.companyAbbrev}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">企业联系人：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="contactName" class="form-control" type="text" value="${companyInstance?.contactName}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">联系人性别：</label>
    <div class="col-sm-10 col-lg-4">
        %{--<input name="sex" class="form-control" type="text" value="${companyInstance?.sex}">--}%
        <input name="sex" type="radio" value="男" <g:if test="${companyInstance?.sex=="男"}">checked="checked" </g:if> />男
        <input name="sex" type="radio" value="女" <g:if test="${companyInstance?.sex=="女"}">checked="checked" </g:if> />女
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">职务：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="job" class="form-control" type="text" value="${companyInstance?.job}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">公司电话：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="phone" class="form-control" type="text" value="${companyInstance?.phone}">
    </div>
</div>

<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">移动电话：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="telephone" class="form-control" type="text" value="${companyInstance?.telephone}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">电子邮件：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="email" class="form-control" type="text" value="${companyInstance?.email}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">传真：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="fax" class="form-control" type="text" value="${companyInstance?.fax}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">企业类型：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="companyType" class="form-control" type="text" value="${companyInstance?.companyType}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">企业成立时间：</label>
    <div class="col-sm-10 col-lg-4">
        <g:datePicker name="regtime" precision="day"  value="${companyInstance?.regtime}"  />
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">通信地址：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="address" class="form-control" type="text" value="${companyInstance?.address}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">邮政编码：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="postalcode" class="form-control" type="text" value="${companyInstance?.postalcode}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">网址：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="website" class="form-control" type="text" value="${companyInstance?.website}">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">备注：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="remark" class="form-control" type="text" value="${companyInstance?.remark}">
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
<div class="form-group">
    <label class="col-sm-2 col-sm-2 control-label">公司logo：</label>
    <div class="col-sm-10 col-lg-4">
        <input name="logoimg" class="form-control" type="text" value="${companyInstance?.logoimg}">
    </div>
</div>