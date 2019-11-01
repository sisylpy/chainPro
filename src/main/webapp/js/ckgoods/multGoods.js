$(function () {
    $("#jqGrid").jqGrid({
        url: '../ckgoods/typeGoods?type=2',
        datatype: "json",
        colModel: [			
			{ label: 'goodsId', name: 'goodsId', width: 50, key: true },
			{ label: '商品名称', name: 'goodsName', width: 80 }, 			
			{ label: '父级id', name: 'fatherId', width: 80 }, 			
			{ label: '规格', name: 'standardName', width: 80 }, 			
			{ label: '申请规格', name: 'applyStandardName', width: 80 }, 			
			{ label: '"1"指定供货商，“2”多供货商，“3”市场采购', name: 'type', width: 80 }, 			
			{ label: '是否称重', name: 'isWeight', width: 80 },
			{ label: '', name: 'status', width: 80 }			
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