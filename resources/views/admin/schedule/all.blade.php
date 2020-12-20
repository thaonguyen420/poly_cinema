@extends("admin.layout.index")
@section("admin_content")
<div class="row">
                        <div class="col-12">
                            <div class="card-box table-responsive">
                                <h4 class="m-t-0 header-title">Suất chiếu</h4>
                                <table id="datatable-buttons" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Id Suất</th>
                                            <th>Ngày chiếu</th>
                                            <th>Thời gian chiếu</th>                                         
                                            <th>Phim </th>
                                            <th>Rạp - Phòng</th>
                                            <th>Soát vé</th>
                                            <th>Chỉnh</th>
                                            <th>Xóa</th>
                                        </tr>
                                    </thead>


                                    <tbody>


                                @foreach($ds as $tt)
                    <tr >
                        <td >                    
                            {{$tt->id_schedule}}              
                        </td>
                       
                        <td >
                            {{$tt->date}}                              
                        </td>
                      
                        <td >
                            {{$tt->time}}                        
                        </td>
                        <td >
                        @php
							$kq = DB::select("select movieId, name from movies where movieID = {$tt->movieId}  ");
								foreach ( $kq as $rowTL ){
			    					echo "{$rowTL->name}";
								}	
						@endphp 
                        </td>
                        <td >
                        @php
							$kq = DB::select("select * from room INNER JOIN theater ON `room`.theaterId=`theater`.theaterId where roomID = {$tt->roomId}  ");
								foreach ( $kq as $rowTL ){
			    					echo "{$rowTL->name} - {$rowTL->number}";
								}	
						@endphp 
                        </td>
                        <td>
                            <a href="/ticket?schedule={{$tt->id_schedule}}"  class="btn btn-primary">
                                Soát vé
                            </a>  
                        </td>
                        <td>
                            <a href="{{route('ticket.edit',$tt->movieId)}}"  class="btn btn-primary">
                                Chỉnh
                            </a>  
                        </td>
                        <td  >                                                 
                            <form action="{{route('ticket.destroy',$tt->movieId)}}" method="post">
                                {{csrf_field()}}
                                {!! method_field('delete') !!}
                                <button onclick="return confirm('Xóa thiệt hông?');" class="btn btn-danger" type="submit">Xóa</button>
                            </form>
                        </td>                                  
                    </tr>
                    @endforeach
            </tbody>  
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- end row -->
                    @endsection
                   