
let scanner = new Instascan.Scanner(
    {
        video: document.getElementById('preview')
    }
);
  
scanner.addListener('scan', function(content) {
    document.getElementById("ticket-code").innerHTML = content;
    document.getElementById("ticket-status").innerHTML = " <b class='ticket-deny'> <i class='fas fa-ban'></i> Không Hợp Lệ <i class='fas fa-ban'></i></b>";
    document.getElementById("seat").innerHTML = " ";
    document.getElementById("myAudio").play();
    for (var i = 0; i < obj.length; i++){
        if (obj[i].ticket == content){
            document.getElementById("ticket-code").innerHTML = content;
            document.getElementById("ticket-status").innerHTML = "<b class='ticket-checked'> <i class='fas fa-check'></i> Hợp Lệ <i class='fas fa-check'></i></b>";
            document.getElementById("seat").innerHTML = obj[i].seat;
        }
      }
    
});
Instascan.Camera.getCameras().then(cameras => 
{
    if(cameras.length > 0){
        scanner.start(cameras[0]);
    } else {
        console.error("Không tìm thấy camera !");
    }
});