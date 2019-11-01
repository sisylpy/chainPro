$(function () {
    $("#jqGrid").jqGrid({
        url: '../ckinbill/list',
        datatype: "json",
        colModel: [			
			{ label: 'inBillId', name: 'inBillId', width: 50, key: true },
			{ label: '入库供货商id', name: 'inSupplierId', width: 80 }, 			
			{ label: '入库时间', name: 'inDatetime', width: 80 }, 			
			{ label: '入库部门id', name: 'inDepId', width: 80 }, 			
			{ label: '入库操作员id', name: 'inUserId', width: 80 }, 			
			{ label: '是否支付', name: 'isPay', width: 80 }, 			
			{ label: '支付方式：“1:现金”，“2, 记账”“3，微信”', name: 'payMode', width: 80 }			
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
			var inBillId = getSelectedRow();
			if(inBillId == null){
				return ;
			}
			
			location.href = "ckinbill_add.html?inBillId="+inBillId;
		},
		del: function (event) {
			var inBillIds = getSelectedRows();
			if(inBillIds == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: "../ckinbill/delete",
				    data: JSON.stringify(inBillIds),
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