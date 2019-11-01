$(function () {
	$("#jqGrid").jqGrid('setLabel','0','序号','labelstyle');

	$("#jqGrid").jqGrid(

		{
		
        url: '../ckgoods/typeGoods?type=1',
        datatype: "json",
        colModel: [
			{ label: 'goodsId', name: 'goodsId', width: 50, key: true, hidden: true },
			{ label: '商品名称', name: 'goodsName', width: 120 },
			{ label: '规格', name: 'standardName', width: 80 },
			{ label: '申请规格', name: 'applyStandardName', width: 80 },
			{ label: '是否称重', name: 'isWeight', width: 80, formatter:function(value,options,rowData){
					if( value===1 ){
						return '称重';
					}else {
						return '不称重';
					}
				}  },
			{ label: '商品状态', name: 'status', width: 80, formatter:function(value,options,rowData){
					if( value===1 ){
						return '售卖中';
					}else if(value===2){
						return '断货';
					}else {
						return '停止销售'
					}
				} }
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
			var goodsId = getSelectedRow();
			if(goodsId == null){
				return ;
			}
			
			location.href = "ckgoods_add.html?goodsId="+goodsId;
		},
		del: function (event) {
			var goodsIds = getSelectedRows();
			if(goodsIds == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: "../ckgoods/delete",
				    data: JSON.stringify(goodsIds),
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