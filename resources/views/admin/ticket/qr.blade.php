@extends("admin.layout.index")
@section("admin_content")
<div class="row">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@300;400;500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a1c7fb1499.js" crossorigin="anonymous"></script>
    <!-- css -->
    <link rel="stylesheet" href="css/check.css">

    <div class="container qr-wrap">
        <div class="check-title">
            <b>Soát Vé QR</b>
        </div>
        <div class="row justify-content-center">
            <div class="col-12 col-md-3">
            @php
                    $suat= $_GET['schedule'];
                    $kq = DB::select("select * from schedule INNER JOIN movies  ON `schedule`.movieId=`movies`.movieId where id_schedule = {$suat}");
					foreach ( $kq as $rowTL ){
					echo "<img class='img' src='{$rowTL-> row}'>";
				}	
			@endphp
                
            </div>
            <div class="col-12 col-md-9">
                <div>
                    <b class="check-name">@php
                        $suat= $_GET['schedule'];
                        $kq = DB::select("select * from schedule INNER JOIN movies  ON `schedule`.movieId=`movies`.movieId where id_schedule = {$suat}");
								foreach ( $kq as $rowTL ){
			    					echo "{$rowTL-> name}";
								}	
					    @endphp
                    </b>
                    <b class="check-theater"> @php
                        $suat= $_GET['schedule'];
                        $kq = DB::select("select * from schedule INNER JOIN room  ON `schedule`.roomId=`room`.roomId where id_schedule = {$suat}");
								foreach ( $kq as $rowTL ){
			    					echo "{$rowTL-> theaterId}";
								}	
					    @endphp
                    </b>
                    <div class="row justify-content-between">
                        <b class="check-date">
                            @php
                            $suat= $_GET['schedule'];
                            $kq = DB::select("select * from schedule INNER JOIN room  ON `schedule`.roomId=`room`.roomId where id_schedule = {$suat}");
                                    foreach ( $kq as $rowTL ){
                                        echo "{$rowTL-> date}";
                                    }	
                            @endphp
                        </b>
                        <b class="check-room">
                            Rạp @php
                        $suat= $_GET['schedule'];
                        $kq = DB::select("select * from schedule INNER JOIN room  ON `schedule`.roomId=`room`.roomId where id_schedule = {$suat}");
								foreach ( $kq as $rowTL ){
			    					echo "{$rowTL-> number}";
								}	
					    @endphp
                        </b>
                        <b class="check-time">
                            @php
                            $suat= $_GET['schedule'];
                            $kq = DB::select("select * from schedule INNER JOIN room  ON `schedule`.roomId=`room`.roomId where id_schedule = {$suat}");
                                    foreach ( $kq as $rowTL ){
                                        echo "{$rowTL-> time}";
                                    }	
                            @endphp
                        </b>
                    </div>
                    
                </div>
                <div class="row justify-content-center no-gutters">
                    <div class="col-12 col-md-7">
                        <div class="scan-zone"></div>
                        <video id="preview"></video>
                    </div>
                    <div class="col-12 col-md-5">
                        <div class="ticket-wrap">
                            <div class="ticket">
                                <b class="ticket-title">Vé Xem Phim</b>
                                <b class="ticket-status">Tình trạng</b>
                                <div id="ticket-status"></div>
                                <b class="ticket-code">Mã vé: <span id="ticket-code"></span></b>
                                <b class="ticket-seat">Ghế</b>
                                <b class="seat" id="seat">
                                    
                                </b>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <audio id="myAudio">
        <source src="audio/tik.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>   
    <!-- lib -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js" ></script>	
    <!-- script -->
    <script>
        let obj = [
            <?php
                ?>
            {"ticket": "LTNNG23", "seat": "A1"}, 
            {"ticket": "WTHCHBG", "seat": "A2 - A3"}, 
            {"ticket": "WX6F35P", "seat": "F10"}, 
            {"ticket": "WHZZ6NG", "seat": "B1 - B2 - B3 - B4"}
        ];
  
    </script>
    
    <script src="js/checkqr.js"></script>
</div>


