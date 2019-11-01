$(function () {
    $("#jqGrid").jqGrid({
        url: '../ckstore/list',
        datatype: "json",
        colModel: [			
			{ label: '分店Id', name: 'storeId', width: 50, key: true },
			{ label: '分店名称', name: 'storeName', width: 80 },
			{ label: '手机号码', name: 'phone', width: 80 }, 			
			{ label: '横坐标', name: 'lat', width: 80 }, 			
			{ label: '纵坐标', name: 'lun', width: 80 }, 			
			{ label: '区域', name: 'district', width: 80 }, 			
			{ label: '城市', name: 'city', width: 80 }, 			
			{ label: '微信号码', name: 'wxNickName', width: 80 }, 			
			{ label: '微信id', name: 'wxOpenid', width: 80 }, 			
			{ label: '微信头像', name: 'wxAvatarUrl', width: 80 }, 			
			{ label: '微信号码', name: 'wxNumber', width: 80 }			
        ],
		viewrecords: true,
        height: 400,
        rowNum: 10,
		rowList : [10,30,50],
        rownumbers: true, 
        rownumWidth: 25, 
        autowidth:true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader : {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames : {
            page:"page", 
            rows:"limit", 
            order: "order"
        },
        gridComplete:function(){
        	//隐藏grid底部滚动条
        	$("#jqGrid").closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" }); 
        }
    });
});

var vm = new Vue({
	el:'#rrapp',
	data:{
		
	},
	methods: {
		update: function (event) {
			var storeId = getSelectedRow();
			if(storeId == null){
				return ;
			}
			
			location.href = "ckstore_add.html?storeId="+storeId;
		},
		del: function (event) {
			var storeIds = getSelectedRows();
			if(storeIds == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: "../ckstore/delete",
				    data: JSON.stringify(storeIds),
				    success: function(r){
						if(r.code == 0){
							alert('操作成功', function(index){
								$("#jqGrid").trigger("reloadGrid");
							});
						}else{
							alert(r.msg);
						}
					}
				});
			});
		}
	}
});