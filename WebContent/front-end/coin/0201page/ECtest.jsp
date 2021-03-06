
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>綠界金流串接測試</title>
    <meta name="author" content="hoyo"/>
    <meta name="description" content="綠界金流串接測試,免費工具,API 測試工具"/>

    <link rel="stylesheet" href="/3rdParty/bootstrap/css/bootstrap.min.css"/>
    <script src="/Component_Front/jquery-1.11.3.min.js"></script>

    <!---->
    <link rel="stylesheet" href="/3rdParty/prism.css"/>
    <script src="/3rdParty/prism.js"></script>

    <script src="/3rdParty/php.js"></script>

    <style>
        h2{
            color: rgba(219, 95, 21, 0.86);
            font-size: 24px;
        }
        .col-xs-12{
            margin-top: 8px;
            color: #F73678;
        }
    </style>
    <script>
        var server = '//hoyo.idv.tw';
    </script>
</head>
<body>

<div><br/></div>

<div class="container">

    <pre>
        測試信用卡
        4311-9522-2222-2222
        安全碼  222
        金額上限為 30,000
    </pre>
    
    <div class="row">
        <div class="col-xs-12">
            <label class="col-xs-12">API URL:
                <input type="text" id="API_URL" value="https://payment-stage.ecpay.com.tw" class="form-control"/>
                https://payment.ecpay.com.tw
            </label>
            <label class="col-xs-12">MerchantID:
                <input type="text" id="MerchantID" value="2000132" class="form-control"/>
            </label>
            <label class="col-xs-12">HashKey:
                <input type="text" id="HashKey" value="5294y06JbISpM5x9" class="form-control"/>
            </label>
            <label class="col-xs-12">HashIV:
                <input type="text" id="HashIV" value="v77hoKGq4kWxNNIS" class="form-control"/>
            </label>
        </div>

    </div>

    <hr/>

    <h2>產生訂單</h2>
    <form id="idFormAioCheckOut">
        <div class="row">
            <div class="col-xs-12">
                <label class="col-xs-12">動作 (Action):
                    <input type="text" name="ActionURL" value="/Cashier/AioCheckOut/V5" class="form-control"/>
                </label>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">編號 (MerchantTradeNo):
                    <input type="text" name="MerchantTradeNo" value="hoyo0000001" class="form-control"/>
                </label>
                不可重複使用。英數字大小寫混合
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">時間 (MerchantTradeDate):
                    <input type="text" name="MerchantTradeDate" value="2018/08/04 00:00:00" class="form-control"/>
                </label>
                yyyy/MM/dd HH:mm:ss
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">類型 (PaymentType):
                    <input type="text" name="PaymentType" value="aio" class="form-control"/>
                </label>
                aio
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">金額 (TotalAmount):
                    <input type="text" name="TotalAmount" value="999" class="form-control"/>
                </label>
                請帶整數，不可有小數點 僅限新台幣 金額不可為 0 元 CVS&BARCODE 最低限制為 30 元，最高限制為 20000 元
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">描述 (TradeDesc):
                    <input type="text" name="TradeDesc" value="Desc" class="form-control"/>
                </label>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">名稱 (ItemName):
                    <input type="text" name="ItemName" value="A#B" class="form-control"/>
                </label>
                <div>商品名稱以符號 # 分</div>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">回傳網址 (ReturnURL):
                    <input type="text" name="ReturnURL" value="https://hoyo.idv.tw/?a=Tools/EcPay&b=ReturnURL" class="form-control"/>
                </label>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">回傳網址 (ClientRedirectURL):
                    <input type="text" name="ClientRedirectURL" value="https://hoyo.idv.tw/?a=Tools/EcPay&b=ClientRedirectURL" class="form-control"/>
                </label>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">回傳網址 (ClientBackURL):
                    <input type="text" name="ClientBackURL" value="https://hoyo.idv.tw/?a=Tools/EcPay&b=ClientBackURL" class="form-control"/>
                </label>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">回傳網址 (PaymentInfoURL):
                    <input type="text" name="PaymentInfoURL" value="https://hoyo.idv.tw/?a=Tools/EcPay&b=PaymentInfoURL" class="form-control"/>
                </label>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">回傳網址 (ClientRedirectURL):
                    <input type="text" name="ClientRedirectURL" value="https://hoyo.idv.tw/?a=Tools/EcPay&b=ClientRedirectURL" class="form-control"/>
                </label>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">付款方式 (ChoosePayment):
                    <select name="ChoosePayment" class="form-control">
                        <option value="ALL">ALL</option>
                        <option value="Credit">信用卡</option>
                        <option value="AndroidPay">AndroidPay</option>
                        <option value="WebATM">網路 ATM</option>
                        <option value="ATM">自動櫃員機</option>
                        <option value="CVS">超商代碼</option>
                        <option value="BARCODE">超商條碼</option>
                    </select>
                </label>
                <div>Credit:信用卡及 AndroidPay AndroidPay: AndroidPay  WebATM:網路 ATM ATM:自動櫃員機 CVS:超商代碼 BARCODE:超商條碼 ALL:不指定</div>
            </div>

            <hr/>
            <div class="col-xs-12">
                信用卡分期
            </div>

            <div class="col-xs-12">
                <label class="col-xs-12">刷卡分期期數 (CreditInstallment):
                    <input type="text" name="CreditInstallment" value="12,24" class="form-control"/>
                </label>
                <div>3,6,12,18,24 ex: 3,6</div>
            </div>

        </div>
        <button type="button" onclick="submitAioCheckOut()" class="btn btn-default">查詢</button>
    </form>
    <div id="idReturnAioCheckOut"></div>

    <script>
        function submitAioCheckOut(){
            $('#idReturnAioCheckOut').html('');

            $.ajax({
                url: server + '?a=Tools/EcPay&b=AioCheckOut',
                type: 'post',
                async: false,
                data: $('#idFormAioCheckOut').serialize() +'&API_URL='+ $('#API_URL').val() +'&MerchantID='+ $('#MerchantID').val() +'&HashKey='+ $('#HashKey').val() +'&HashIV='+ $('#HashIV').val(),
                success: function(J){
                    var Json = JSON.parse(J);
                    $('#idReturnAioCheckOut').html( Json['Data'] );
                    $('#__ecpayForm').attr('target', '_blank').submit();
//                    document.getElementById("__ecpayForm");
                }
            })
        }
    </script>

    <hr/>

    <h2>查詢訂單</h2>
    <form id="idFormQueryTradeInfo">
        <div class="row">
            <div class="col-xs-12">
                <label class="col-xs-12">動作 (Action):
                    <input type="text" name="ActionURL" value="/Cashier/QueryTradeInfo/V5" class="form-control"/>
                </label>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">編號 (MerchantTradeNo):
                    <input type="text" name="MerchantTradeNo" value="oikidA0000001" class="form-control"/>
                </label>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">UnixTimeStamp (TimeStamp):
                    <input type="text" id="idTimeStamp" name="TimeStamp" value="" class="form-control"/>
                </label>
            </div>
            <div class="col-xs-12">
                <label class="col-xs-12">回傳網址 (ReturnURL):
                    <input type="text" name="ReturnURL" value="http://tn.sly-ha.com.tw/demo/kidabc_X/ECPay.php" class="form-control"/>
                </label>
            </div>
        </div>
        <button type="button" onclick="submitQueryTradeInfo()" class="btn btn-default">查詢</button>
    </form>
    <div id="idReturnQueryTradeInfo"></div>

    <script>
        function submitQueryTradeInfo(){
            
            //
            const dateTime = Date.now();
            const timestamp = Math.floor(dateTime / 1000);
            $('#idTimeStamp').val(timestamp);
            
            $('#idReturnQueryTradeInfo').html('');

            $.ajax({
                url: '../../api/?a=ecpay/QueryTradeInfo',
                type: 'post',
                async: false,
                data: $('#idFormQueryTradeInfo').serialize() +'&API_URL='+ $('#API_URL').val() +'&MerchantID='+ $('#MerchantID').val() +'&HashKey='+ $('#HashKey').val() +'&HashIV='+ $('#HashIV').val(),
                success: function(J){
                    var Json = JSON.parse(J);
                    $('#idReturnQueryTradeInfo').html( Json['Data'] );
                    $('#__ecpayForm').attr('target', '_blank').submit();
//                    document.getElementById("__ecpayForm");
                }
            })
        }
    </script>

    <hr/>

</div>



<div style="margin: 36px 0;"><br/></div>

</body>
</html>
