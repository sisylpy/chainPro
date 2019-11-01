var lineId = T.p("lineId");
var vm = new Vue({
	el:'#rrapp',
	data:{
		title:"新增",
		ckLine:{}
	},
	created: function() {
		if(lineId != null){
			this.title = "修改";
			this.getInfo(lineId)
		}
    },
	methods: {
		getInfo: function(lineId){
			$.get("../ckline/info/"+lineId, function(r){
                vm.ckLine = r.ckLine;
            });
		},
		saveOrUpdate: function (event) {
			var url = vm.ckLine.lineId == null ? "../ckline/save" : "../ckline/update";
			$.ajax({
				type: "POST",
			    url: url,
			    data: JSON.stringify(vm.ckLine),
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