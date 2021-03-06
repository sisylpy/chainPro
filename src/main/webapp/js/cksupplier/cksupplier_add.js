var supplierId = T.p("supplierId");
var vm = new Vue({
	el:'#rrapp',
	data:{
		title:"新增",
		ckSupplier:{}
	},
	created: function() {
		if(supplierId != null){
			this.title = "修改";
			this.getInfo(supplierId)
		}
    },
	methods: {
		getInfo: function(supplierId){
			$.get("../cksupplier/info/"+supplierId, function(r){
                vm.ckSupplier = r.ckSupplier;
            });
		},
		saveOrUpdate: function (event) {
			var url = vm.ckSupplier.supplierId == null ? "../cksupplier/save" : "../cksupplier/update";
			$.ajax({
				type: "POST",
			    url: url,
			    data: JSON.stringify(vm.ckSupplier),
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