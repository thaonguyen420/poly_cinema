@extends("admin.layout.index")
@section("admin_content")
<div class="container">
    <div class="row">
    <div class="col-md-12">
					<div class="main__title">
						<h2>Thêm phim</h2>
					</div>
				</div>
				<!-- end main title -->

				<!-- form -->
				<div class="col-md-12">
            
                <form action="{{route('phim.store')}}" class="form" method="post" enctype="multipart/form-data">
					{{csrf_field()}}
					<div class="row">					
							<div class="col-md-12 col-md-7 form__content">
								<div class="row">                              	
									<div class="col-md-12 form-group col-sm-6 col-lg-3">
                                        <label for="time">Thời gian chiếu</label>
										<input id="time" type="text" class="form-control" placeholder="Thời gian" name="time" >
									</div>
									<div class="col-md-12 form-group col-sm-6 col-lg-3">
                                    <label for="date">Ngày chiếu </label>
										<input id="date" type="date" class="form-control" placeholder="Ngày chiếu" name="release_date" >
									</div>
									<div class="col-md-12 form-group col-lg-3">
										<label for="tl">Chọn phim</label>
										<select name="id_tl" class="form-control select2 mg-b-20">
											<option value="0">Chọn phim</option>
												<!-- Lấy các thể loại từ db hiện trong select  -->
											@php
											$kq = DB::select("select movieId, name from movies ");
											foreach ( $kq as $rowTL ){
												echo "<option value='{$rowTL->movieId}'>{$rowTL->name}</option>";
											}	
											@endphp
										</select>
									</div>	
									<div class="col-md-12 form-group col-lg-3">
										<label for="tl">Chọn phòng</label>
										<select name="id_tl" class="form-control select2 mg-b-20">
											<option value="0">Chọn phòng</option>
												<!-- Lấy các thể loại từ db hiện trong select  -->
											@php
											$kq = DB::select("select * from room INNER JOIN theater ON `room`.theaterId=`theater`.theaterId");
											foreach ( $kq as $rowTL ){
												echo "<option value='{$rowTL->roomId}'>{$rowTL->name} - {$rowTL->number}</option>";
											}
											@endphp
										</select>
									</div>	
					
								</div>
								<div class="col-md-12 mt-3">								
									<button type="submit" class="btn btn-primary">Tạo</button>								
								</div>
							</div>							
						
						</div>
					</form>               
				</div>
    </div>
</div>
                @endsection