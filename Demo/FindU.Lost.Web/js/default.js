/************************
    作者：小俊学长
    时间：2013年8月31日
************************/


/* 返回顶部 */
$(document).ready(function () {
    //首先将#back-to-top隐藏
    $("#back-to-top").hide();
    //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失
    $(function () {
        $(window).scroll(function () {
            if ($(window).scrollTop() > 100) {
                $("#back-to-top").fadeIn(500);
                //if ($(document).height() == $(window).scrollTop()+$(window).height()){
                //滚动到最下方    
                //}
            }
            else {
                $("#back-to-top").fadeOut(500);
            }
        });
        //当点击跳转链接后，回到页面顶部位置
        $("#back-to-top").click(function () {
            $('body,html').animate({ scrollTop: 0 }, 1000);
            return false;
        });
    });
});

/* 动态磁贴 */
$(function () {
    bindTileEvent();
});

function bindTileEvent() {
    $(".tile_inside").each(function () {
        $(this).mouseenter(function () {
            $(this).animate({ bottom: "180px" }, 800);
        }).mouseleave(function () {
            $(this).animate({ bottom: "0px" }, 800);
        });
    });
}


/* 上传图片文件 */
// id:文件控件的Id
function uploadImgFile(id) {
    if ($("#" + id).val() == "") {
        alert("没有选择文件");
    } else {
        $("#cutImg").css("display", "block");
        initImgCut();
    }
}

/* 截图 */
function initImgCut() {
    $("#photo").imgAreaSelect({
        selectionColor: "blue",
        fadeSpeed: 200,
        handles: true,
        persistent: true,
        x1: 0,
        y1: 0,
        x2: 200,
        y2: 200,
        minWidth: 200,
        minHeight: 200,
        maxWidth: 200,
        maxHeight: 200,
        selectionOpacity: 0.1,
        onSelectEnd: preview
    });
}

// 截图预览
function preview(img, selection) {
    if (!selection.width || !selection.height)
        return;

    var scaleX = 100 / selection.width;
    var scaleY = 100 / selection.height;

    $('#preview img').css({
        width: Math.round(scaleX * 300),
        marginLeft: -Math.round(scaleX * selection.x1),
        marginTop: -Math.round(scaleY * selection.y1)
    });
}