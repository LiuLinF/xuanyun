(function(){
    $.ajax({
        url:"http://127.0.0.1:3000/index",
        type:"get",
        dataType:"json"
    }).then(function(result){
        var p1=result[0],p2=result[1],p3=result[2],p4=result[3],p5=result[4],p6=result[5],p7=result[6],p8=result[7];
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

        var html=`
            <img src="${p3.product_pic}" alt="">
            <div>
                <a href="#">
                    <img class="user_pic" src="${p3.user_pic}" alt="">
                    <span>${p3.name}</span>
                </a>
                <a href="#">${p3.cardPrice}</a>
            </div>
        `
        document.getElementById("p3").innerHTML=html;

        var html=`
            <img src="${p4.product_pic}" alt="">
            <div>
                <a href="#">
                    <img class="user_pic" src="${p4.user_pic}" alt="">
                    <span>${p4.name}</span>
                </a>
                <a href="#">${p4.cardPrice}</a>
            </div>
        `
        document.getElementById("p4").innerHTML=html;

        var html=`
            <img src="${p5.product_pic}" alt="">
            <div>
                <a href="#">
                    <img class="user_pic" src="${p5.user_pic}" alt="">
                    <span>${p5.name}</span>
                </a>
                <a href="#">${p5.cardPrice}</a>
            </div>
        `
        document.getElementById("p5").innerHTML=html;

        var html=`
            <img src="${p6.product_pic}" alt="">
            <div>
                <a href="#">
                    <img class="user_pic" src="${p6.user_pic}" alt="">
                    <span>${p6.name}</span>
                </a>
                <a href="#">${p6.cardPrice}</a>
            </div>
        `
        document.getElementById("p6").innerHTML=html;

        var html=`
            <img src="${p7.product_pic}" alt="">
            <div>
                <a href="#">
                    <img class="user_pic" src="${p7.user_pic}" alt="">
                    <span>${p7.name}</span>
                </a>
                <a href="#">${p7.cardPrice}</a>
            </div>
        `
        document.getElementById("p7").innerHTML=html;

        var html=`
            <img src="${p8.product_pic}" alt="">
            <div>
                <a href="#">
                    <img class="user_pic" src="${p8.user_pic}" alt="">
                    <span>${p8.name}</span>
                </a>
                <a href="#">${p8.cardPrice}</a>
            </div>
        `
        document.getElementById("p8").innerHTML=html;

    })
})()