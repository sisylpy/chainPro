var inBillId = T.p("inBillId");
var vm = new Vue({
	el:'#rrapp',
	data:{
		title:"新增",
		ckInBill:{}
	},
	created: function() {
		if(inBillId != null){
			this.title = "修改";
			this.getInfo(inBillId)
		}
    },
	methods: {
		getInfo: function(inBillId){
			$.get("../ckinbill/info/"+inBillId, function(r){
                vm.ckInBill = r.ckInBill;
            });
		},
		saveOrUpdate: function (event) {
			var url = vm.ckInBill.inBillId == null ? "../ckinbill/save" : "../ckinbill/update";
			$.ajax({
				type: "POST",
			    url: url,
			    data: JSON.stringify(vm.ckInBill),
			    success: function(r){
			    	if(r.code === 0){
						alert('操作成功', function(index){
							vm.back();
						});
					}else{
						alert(r.msg);
					}
				}
			});
		},
		back: function (event) {
			history.go(-1);
		}
	}
});