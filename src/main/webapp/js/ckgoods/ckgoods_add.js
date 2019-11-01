var goodsId = T.p("goodsId");
var vm = new Vue({
	el:'#rrapp',
	data:{
		title:"新增",
		ckGoods:{},
		type: 1
	},
	created: function() {
		if(goodsId != null){
			this.title = "修改";
			this.getInfo(goodsId);
		}
    },
	methods: {

		getInfo: function(goodsId){
			$.get("../ckgoods/info/"+goodsId, function(r){
                vm.ckGoods = r.ckGoods;
				$('#goodsStatus option[value= "'+vm.ckGoods.status+'"]').attr("selected", true);   //设置Select的Text值为jQuery的项选中
				$('#goodsStatus option[value= "'+vm.ckGoods.isWeight+'"]').attr("selected", true);   //设置Select的Text值为jQuery的项选中

			});
		},
		saveOrUpdate: function (event) {
			console.log("saveOrUpdate api ")
			console.log(event);
			var url = vm.ckGoods.goodsId == null ? "../ckgoods/save" : "../ckgoods/update";
			vm.ckGoods['type'] = 3;
			$.ajax({
				type: "POST",
			    url: url,
			    data: JSON.stringify(vm.ckGoods),
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