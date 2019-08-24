//解析显示分页信息
function build_page_info(result) {
    //清空数据
    $("#page_info_area").empty();
    $("#page_info_area").append("当前第" + result.extend.page.pageNum + "页,总共"
        + result.extend.page.pages + "页,共计"
        + result.extend.page.total + "条记录");
    totalRecord = result.extend.page.total;
    currentPage = result.extend.page.pageNum;
}

// 解析并显示分页条信息
function build_page_nav(result) {
    // $("#page_nav_area")
    //清空数据
    $("#page_nav_area").empty();
    var ul = $("<ul></ul>").addClass("pagination");
    //构建元素
    var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
    var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
    if (result.extend.page.hasPreviousPage == false) {
        firstPageLi.addClass("disabled");
        prePageLi.addClass("disabled");
    }else {
        //为元素添加点击翻页事件
        firstPageLi.click(function () {
            searchInfo(1);
        });
        prePageLi.click(function () {
            searchInfo(result.extend.page.pageNum-1);
        });
    }
    var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
    var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
    if (result.extend.page.hasNextPage == false) {
        nextPageLi.addClass("disabled");
        lastPageLi.addClass("disabled");
    }else {
        //为元素添加点击翻页事件
        nextPageLi.click(function () {
            searchInfo(result.extend.page.pageNum+1);
        });
        lastPageLi.click(function () {
            searchInfo(result.extend.page.pages);
        });
    }
    //构造首页和前一页提示按钮
    ul.append(firstPageLi).append(prePageLi);
    $.each(result.extend.page.navigatepageNums,function (index,item) {
        var numLi = $("<li></li>").append($("<a></a>").append(item));
        if (result.extend.page.pageNum == item) {
            numLi.addClass("active");
        }
        numLi.click(function () {
            searchInfo(item);
        });
        ul.append(numLi);
    });
    ul.append(nextPageLi).append(lastPageLi);
    var navEle = $("<nav></nav>").append(ul);
    navEle.appendTo("#page_nav_area");
}