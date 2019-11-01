$(function () {
    $("#jqGrid").jqGrid({
        url: '../cksupplier/list',
        datatype: "json",
        colModel: [			
			{ label: 'supplierId', name: 'supplierId', width: 50, key: true, hidden: true },
			{ label: '供货商名称', name: 'supplierName', width: 120 },
			{ label: '业务员', name: 'salesPerson', width: 80 }, 			
			{ label: '业务电话', name: 'salesPhone', width: 80 }, 			
			{ label: '是否有app', name: 'hasApp', width: 80 , formatter:function(value,options,rowData){
					if( value===0 ){
						return '没有';
					}else if(value===1){
						return '有';
					}else {
						return '不确定'
					}
				}},
			{ label: '付款方式', name: 'payMethods', width: 80, formatter:function(value,options,rowData){
					if( value===1 ){
						return '月结';
					}else if(value===2){
						return '现结';
					}else {
						return '不确定'
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
			var supplierId = getSelectedRow();
			if(supplierId == null){
				return ;
			}
			
			location.href = "cksupplier_add.html?supplierId="+supplierId;
		},
		del: function (event) {
			var supplierIds = getSelectedRows();
			if(supplierIds == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: "../cksupplier/delete",
				    data: JSON.stringify(supplierIds),
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