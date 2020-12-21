@extends("admin.layout.index")
@section("admin_content")
<link href="css/style.css" rel="stylesheet">
   <div class="container">
        <div class="row">
                    <div class="col-md-9 px-2">
                        <div class="ticket-wrapper">
                            <div class="booking-bg">
                                <section class="booking-ticket">
                                    <h3 class="booking-title" onclick="sell()">Chọn ghế</h3>
                                    <div class="seat-map-wrapper">
                                        <div class="seat-map">
                                            <ul class="seat-row">
                                                <li class="index">G</li>
                                                <li id="G1" onclick="seat('G1')">1</li>
                                                <li id="G2" onclick="seat('G2')">2</li>
                                                <li id="G3" onclick="seat('G3')">3</li>
                                                <li id="G4" onclick="seat('G4')">4</li>
                                                <li id="G5" onclick="seat('G5')">5</li>
                                                <li id="G6" onclick="seat('G6')">6</li>
                                                <li id="G7" onclick="seat('G7')">7</li>
                                                <li id="G8" onclick="seat('G8')">8</li>
                                                <li id="G9" onclick="seat('G9')">9</li>
                                                <li id="G10" onclick="seat('G10')">10</li>
                                                <li class="index">G</li>
                                            </ul>
                                            <ul class="seat-row">
                                                <li class="index">F</li>
                                                <li id="F1" onclick="seat('F1')">1</li>
                                                <li id="F2" onclick="seat('F2')">2</li>
                                                <li id="F3" onclick="seat('F3')">3</li>
                                                <li id="F4" onclick="seat('F4')">4</li>
                                                <li id="F5" onclick="seat('F5')">5</li>
                                                <li id="F6" onclick="seat('F6')">6</li>
                                                <li id="F7" onclick="seat('F7')">7</li>
                                                <li id="F8" onclick="seat('F8')">8</li>
                                                <li id="F9" onclick="seat('F9')">9</li>
                                                <li id="F10" onclick="seat('F10')">10</li>
                                                <li class="index">F</li>
                                            </ul>
                                            <ul class="seat-row">
                                                <li class="index">E</li>
                                                <li id="E1" onclick="seat('E1')">1</li>
                                                <li id="E2" onclick="seat('E2')">2</li>
                                                <li id="E3" onclick="seat('E3')">3</li>
                                                <li id="E4" onclick="seat('E4')">4</li>
                                                <li id="E5" onclick="seat('E5')">5</li>
                                                <li id="E6" onclick="seat('E6')">6</li>
                                                <li id="E7" onclick="seat('E7')">7</li>
                                                <li id="E8" onclick="seat('E8')">8</li>
                                                <li id="E9" onclick="seat('E9')">9</li>
                                                <li id="E10" onclick="seat('E10')">10</li>
                                                <li class="index">E</li>
                                            </ul>
                                            <ul class="seat-row">
                                                <li class="index">D</li>
                                                <li id="D1" onclick="seat('D1')">1</li>
                                                <li id="D2" onclick="seat('D2')">2</li>
                                                <li id="D3" onclick="seat('D3')">3</li>
                                                <li id="D4" onclick="seat('D4')">4</li>
                                                <li id="D5" onclick="seat('D5')">5</li>
                                                <li id="D6" onclick="seat('D6')">6</li>
                                                <li id="D7" onclick="seat('D7')">7</li>
                                                <li id="D8" onclick="seat('D8')">8</li>
                                                <li id="D9" onclick="seat('D9')">9</li>
                                                <li id="D10" onclick="seat('D10')">10</li>
                                                <li class="index">D</li>
                                            </ul>
                                            <ul class="seat-row">
                                                <li class="index">C</li>
                                                <li id="C1" onclick="seat('C1')">1</li>
                                                <li id="C2" onclick="seat('C2')">2</li>
                                                <li id="C3" onclick="seat('C3')">3</li>
                                                <li id="C4" onclick="seat('C4')">4</li>
                                                <li id="C5" onclick="seat('C5')">5</li>
                                                <li id="C6" onclick="seat('C6')">6</li>
                                                <li id="C7" onclick="seat('C7')">7</li>
                                                <li id="C8" onclick="seat('C8')">8</li>
                                                <li id="C9" onclick="seat('C9')">9</li>
                                                <li id="C10" onclick="seat('C10')">10</li>
                                                <li class="index">C</li>
                                            </ul>
                                            <ul class="seat-row">
                                                <li class="index">B</li>
                                                <li id="B1" onclick="seat('B1')">1</li>
                                                <li id="B2" onclick="seat('B2')">2</li>
                                                <li id="B3" onclick="seat('B3')">3</li>
                                                <li id="B4" onclick="seat('B4')">4</li>
                                                <li id="B5" onclick="seat('B5')">5</li>
                                                <li id="B6" onclick="seat('B6')">6</li>
                                                <li id="B7" onclick="seat('B7')">7</li>
                                                <li id="B8" onclick="seat('B8')">8</li>
                                                <li id="B9" onclick="seat('B9')">9</li>
                                                <li id="B10" onclick="seat('B10')">10</li>
                                                <li class="index">B</li>
                                            </ul>
                                            <ul class="seat-row">
                                                <li class="index">A</li>
                                                <li id="A1" onclick="seat('A1')">1</li>
                                                <li id="A2" onclick="seat('A2')">2</li>
                                                <li id="A3" onclick="seat('A3')">3</li>
                                                <li id="A4" onclick="seat('A4')">4</li>
                                                <li id="A5" onclick="seat('A5')">5</li>
                                                <li id="A6" onclick="seat('A6')">6</li>
                                                <li id="A7" onclick="seat('A7')">7</li>
                                                <li id="A8" onclick="seat('A8')">8</li>
                                                <li id="A9" onclick="seat('A9')">9</li>
                                                <li id="A10" onclick="seat('A10')">10</li>
                                                <li class="index">A</li>
                                            </ul>
                                        </div>
                                        <div class="screen">Màn hình</div>
                                        <div class="seat-cinema row">
                                            <span class="seat-cinema-selected col">
                                                <div></div>
                                                Ghế đang chọn
                                            </span>
                                            <span class="seat-cinema-unavailable col">
                                                <div></div>
                                                Ghế đã bán
                                            </span>
                                            <span class="seat-cinema-normal col">
                                                <div></div>
                                                Có thể chọn
                                            </span>
                                            <span class="seat-cinema-area col">
                                                <div></div>
                                                Không thể chọn
                                            </span>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                        <div class="ticket-wrapper">
                            <div class="booking-bg">
                                <div class="row">
                                    <div class="col-md-12">
                                        <section id="pay-ticket" class="booking-ticket">
                                            <audio id="myAudio">
                                                <source src="audio/tik.mp3" type="audio/mpeg">
                                                Your browser does not support the audio element.
                                            </audio>   
                                            <div class="row justify-content-center">
                                                <div class="scan-zone"></div>
                                                <video id="preview"></video>
                                            </div>
                                            <form class="form-horizontal" style="padding:30px " action="{{route('sell.store')}}" method="post" enctype="multipart/form-data">
                                            @csrf
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">Email</label>
                                                    <div class="col-md-8">
                                                        <input id="email" placeholder="Email"   name="number" required class="login input-booking" value=nguyenltps08795@fpt.edu.vn>
                                                    </div>
                                                    <label class="col-md-4 control-label">Email</label>
                                                    <div class="col-md-8">
                                                        <input id="email" placeholder="Email" type="email" required class="login input-booking" value=nguyenltps08795@fpt.edu.vn>
                                                    </div>
                                                    <label class="col-md-4 control-label">Email</label>
                                                    <div class="col-md-8">
                                                        <input id="email" placeholder="Email" type="email" required class="login input-booking" value=nguyenltps08795@fpt.edu.vn>
                                                    </div>
                                                </div>
                                                <div class=row>
                                                    <div class="col-md-3"><label class="control-label"></label></div>
                                                    <div class="col-md-5">
                                                        <div class="row">
                                                        
                                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                                <button type="submit" class="venobox btn btn-default vbox-item click"> <span>Thanh toán</span> </button>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="pay-notice content-text"></div>
                                                    </div>
                                                </div>
                                            </form>
                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 px-2">
                        <section class="ticket-header" style="top:0px">
                            <div class="ticket-feature">
                                <article class="row">
                                    <div style="text-align:center" class="col-md-12"><img src="images/phim1.jpg">
                                    </div>
                                    <div class="col-md-12">
                                        <div class="ticket-detail">
                                            <h3 class="ticket-title upper-text no-underline">Đỉnh Mù Sương</h3>

                                            <div class="ticket-icon"><span><i class="icon-c18"></i><span class="notice">(*) Phim
                                                                chỉ dành cho khán giả từ 18 tuổi trở lên</span></span>
                                            </div>
                                            <div class="ticket-info">
                                                <p><b>Rạp: &nbsp;</b>Galaxy Nguyễn Du&nbsp; | RAP 4&nbsp;</p>
                                                <p><b>Suất chiếu: &nbsp;</b>18:15&nbsp; | Thứ sáu, 24/07/2020</p>
                                                <p><b>Ghế: &nbsp;<span id="chair"></span> </b></p>
                                            </div>
                                            <div class="ticket-price-total">
                                                <p>Tổng: &nbsp;
                                                    <span> VNĐ</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </section>
                    </div>
        </div>
    </div>
@endsection
<!-- lib -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js" ></script>	
    <!-- script -->
    <script>
    function sell(){
        let sold =["A1","A2"]
        for (j = 0; j < sold.length; j++) {
            document.getElementById(sold[j]).classList.add("unavailable")
        }
        let scanner = new Instascan.Scanner(
    {
        video: document.getElementById('preview')
    }
);
  
scanner.addListener('scan', function(content) {
    document.getElementById("email").value = content;
    document.getElementById("myAudio").play();    
});
Instascan.Camera.getCameras().then(cameras => 
{
    if(cameras.length > 0){
        scanner.start(cameras[0]);
    } else {
        console.error("Không tìm thấy camera !");
    }
});
    }

        var seats = '';
        function seat(seat){
            if(document.getElementById(seat).classList.value == ""){
                document.getElementById(seat).classList.toggle("selected")
                this.seats += seat+",";
                console.log(seats)
            }
            else if(document.getElementById(seat).classList.value == "selected"){
                document.getElementById(seat).classList.toggle("selected")
                this.seats = this.seats.replace(seat+",", "");
            }
            else{
                alert("Ghế không chọn được")
            }
        }    
</script>
    
