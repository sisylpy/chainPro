$(function () {
    $("#jqGrid").jqGrid({
        url: '../ckline/list',
        datatype: "json",
        colModel: [			
			{ label: 'lineId', name: 'lineId', width: 50, key: true },
			{ label: '线路名称', name: 'lineName', width: 80 }, 			
			{ label: '始发地', name: 'originPoint', width: 80 }			
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
	mounted: {

	},
	methods: {
		update: function (event) {
			var lineId = getSelectedRow();
			if(lineId == null){
				return ;
			}
			
			location.href = "ckline_add.html?lineId="+lineId;
		},
		del: function (event) {
			var lineIds = getSelectedRows();
			if(lineIds == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: "../ckline/delete",
				    data: JSON.stringify(lineIds),
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