var x = $("tbody tr").length;
var i = 5;
var curPagination = 5;
var tr = $("tbody tr");
var curPosition = 'desc';

$(document).ready(function () {
    showPagination();
});

function changePagination(value) {

    if (value == '' || value == 0 || value == null) {
        i = 10;
        curPagination = 10;
    } else {
        curPagination = value;
        i = value;
    }

    showPagination();

}

function showPagination() {
    var dispPagination = '';
    var tr = $("tbody tr");

    for (var k = 0; k < x; k++) {
        $(tr[k]).hide();
    }

    for (var i = 0; i < curPagination; i++) {
        $(tr[i]).show();
    }

    //display pagination
    var pagination = Math.ceil(x / i);

    for (var j = 1; j <= pagination; j++) {
        dispPagination += "<li class=\"page-item\" ><a class=\"page-link\" href='" + j + "' onclick='return pagination(" + j + ")'>" + j + "</li>";
    }

    $("#pagination").html(dispPagination);
}

function pagination(index) {
    var end, start, tr = $("tbody tr");;
    end = index * i;
    start = end - i;

    console.log(start + " " + end)


    for (var y = 0; y < x; y++) {
        $(tr[y]).hide();
    }

    for (var z = start; z < end; z++) {
        $(tr[z]).show();
    }
    return false;
}


$("thead tr th").click(function () {
    var option = $("thead tr th").index(this);
    var values;
    var arr = [];
    option++;
    var count = 0;
    var first, second;
    var td = $("tbody tr td");

    for (var y = 1; y <= x; y++) {
        second = $("tbody tr:nth-child(" + y + ") td:nth-child(" + option + ")").html();
        arr.push({
            position: y - 1,
            val: second
        });
    }

    //checking whether the column contains the numbers only
    for (var a = 1; a <= x; a++) {
        second = $("tbody tr:nth-child(" + a + ") td:nth-child(" + option + ")").html();
        if (isNaN(second)) count++;
    }

    var tbody = $("tbody tr");
    $("tbody").html("");
    tr = $(tbody);

    if (count != 0) {
        if (curPosition == 'desc') {
            arr.sort(function (a, b) {
                var textA = a.val.toUpperCase();
                var textB = b.val.toUpperCase();
                return (textA < textB) ? -1 : (textA > textB) ? 1 : 0;
            });
            curPosition = 'asc';
        } else {
            arr.sort(function (a, b) {
                var textA = a.val.toUpperCase();
                var textB = b.val.toUpperCase();
                return (textB < textA) ? -1 : (textB > textA) ? 1 : 0;
            });
            curPosition = 'desc';
        }
    } else {
        if (curPosition == 'desc') {
            arr.sort(function (a, b) {
                return a.val - b.val;
            });
            curPosition = 'asc';
        } else {
            arr.sort(function (a, b) {
                return b.val - a.val;
            });
            curPosition = 'desc';
        }
    }

    for (var z = 0; z < tr.length; z++) {
        $("tbody").append($(tr[arr[z].position]));
    }

    for (var y = 0; y < x; y++) {
        $(tr[y]).show();
    }

    showPagination();

});

$("#result a").click(function () {

    if (i < 10) {
        i += 5;
        curPagination = i;
    } else {
        i -= 5;
        curPagination = i;
    }

    if (i < 10) {
        $(this).text('نمایش بیشتر...');
    } else {
        $(this).text('نمایش کمتر ...');
    }

    showPagination();


    return false;
})