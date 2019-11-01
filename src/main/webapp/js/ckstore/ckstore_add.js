var storeId = T.p("storeId");
var vm = new Vue({
	el:'#rrapp',
	data:{
		title:"新增",
		ckStore:{}
	},
	created: function() {
		if(storeId != null){
			this.title = "修改";
			this.getInfo(storeId)
		}
    },
	methods: {
		getInfo: function(storeId){
			$.get("../ckstore/info/"+storeId, function(r){
                vm.ckStore = r.ckStore;
            });
		},
		saveOrUpdate: function (event) {
			var url = vm.ckStore.storeId == null ? "../ckstore/save" : "../ckstore/update";
			$.ajax({
				type: "POST",
			    url: url,
			    data: JSON.stringify(vm.ckStore),
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