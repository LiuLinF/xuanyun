(function(){
    ajax({
        url:"http://127.0.0.1:3000/index",
        type:"get",
        dataType:"json"
    }).then(function(result){
        var p1=result[0];
        var p2=result[1];
        var html=`
            <img src="${p1.product_pic}" alt="">
            <div>
                <a href="#">
                    <img class="user_pic" src="${p1.user_pic}" alt="">
                    <span>${p1.name}</span>
                </a>
                <a href="#">${p1.cardPrice}</a>
            </div>
        `
        document.getElementById("p1").innerHTML=html;

        var html=`
            <img src="${p2.product_pic}" alt="">
            <div>
                <a href="#">
                    <img class="user_pic" src="${p2.user_pic}" alt="">
                    <span>${p2.name}</span>
                </a>
                <a href="#">${p2.cardPrice}</a>
            </div>
        `
        document.getElementById("p2").innerHTML=html;
    })
})()