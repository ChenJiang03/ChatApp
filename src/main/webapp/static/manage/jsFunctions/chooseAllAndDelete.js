window.addEventListener("load",function (){

    //����ɾ��
    $(".link-del").click(function (){
        //data-xxx data("xxx")
        //ȷ�϶Ի��� ������ȷ�Ϸ���true�����򷵻�false
        if(confirm("�Ƿ�ȷ��ɾ��?")){
            var id=$(this).data("id");
            console.log(id);
            var dataType=$(this).data("type")
            console.log(dataType);
            var path = $(this).data("path")
            $.ajax({
                url:path+"/manage/delete",
                type:"post",
                data:{id:id, dataType:dataType},
                success:function (data){
                    if(data=="success"){
                        $(this).parents("tr").remove();
                    }
                    else if(data=="fail"){
                        alert("������˼��ɾ��ʧ����");
                    }
                }.bind(this)
            });
        }
        return false;  //��ֹa��ǩ��ת����
    });

    //ȫѡ
    $(".allChoose").click(function (){
        $(".check").prop("checked",$(this).prop("checked"))
    })


    // ����ɾ��
    $("#batchDel").click(function (){
        if(!confirm("�Ƿ�ȷ������ɾ��?")){
            return;
        }
        var idArr = new Array();
        var dataType=$(this).data("type")
        console.log(dataType)
        var path = $(this).data("path")
        $(".check:checked").each(function (){
            var id = $(this).data("id");
            idArr.push(id);
            console.log(id);
        })
        if (idArr.length==0){
            alert("��ѡ��Ҫɾ������Ŀ")
        }
        var idStr = idArr.join(",")
        console.log(idStr)

        $.ajax({
            url:path+"/manage/batchDel?dataType="+dataType,
            type: "post",
            data:{ids:idStr},
            async: false,
            success: function (data){
                if(data=="success"){
                    for (var i=0;i<idArr.length;i++) {
                        $("#tr_" + idArr[i]).remove();
                    }
                    location.reload();
                }else if(data=="fail"){
                    alert("����ɾ��ʧ�ܣ�");

                }
            }
        })
    })
})