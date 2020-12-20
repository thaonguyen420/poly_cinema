@extends("admin.layout.index")
@section("admin_content")
<div class="row">
                        <div class="col-12">
                            <div class="card-box table-responsive">
                                <h4 class="m-t-0 header-title">Phim</h4>
                                <table id="datatable-buttons" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Tên </th>
                                            <th>Trailer</th>
                                            <th>Hình </th>                                         
                                            <th>Nội dung</th>
                                            <!-- <th>Thời gian</th>
                                            <th>Ngày công chiếu</th>
                                            <th>Đạo diễn</th>
                                            <th>Diễn viên</th>
                                            <th>Quốc gia</th>
                                            <th>Nhà sản xuất</th>
                                            <th>Ngôn ngữ</th> -->
                                            <th>Tên thể loại</th>
                                            <th>Chỉnh</th>
                                            <th>Xóa</th>
                                        </tr>
                                    </thead>


                                    <tbody>


                                    @foreach($ds as $tt)
                    <tr >
                    <td >                    
                    {{$tt->name}}              
                        </td>
                       
                            <td >
                    <iframe width="200" height="200" src="https://www.youtube.com/embed/{{$tt->trailer}}"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>                                 
                        </td>
                      
                        <td >
                            <img src="{{$tt->row}}" alt="" style="width:200px;height:200px">                       
                        </td>
                        <td >
                            {!!$tt->content!!}
                        </td>
                        <!-- <td>                       
                            {{$tt->time}}
                        </td>
                        <td>                       
                            {{$tt->	release_date}}
                        </td>
                        <td>                       
                            {{$tt->director}}
                        </td>
                        <td>                       
                            {{$tt->actor}}
                        </td>
                        <td>                       
                            {{$tt->nation}}
                        </td>
                        <td>                       
                            {{$tt->producer}}
                        </td>
                        <td>                       
                            {{$tt->language}}
                        </td> -->
                        <td>
                            @php $id_tl = $tt->id_tl; $tl = App\Models\theloai::find($id_tl); if($tl!=null) echo $tl->ten_tl; @endphp
                        </td>
                        <td>
                            <a href="{{route('phim.edit',$tt->movieId)}}"  class="btn btn-primary">
                                    Chỉnh
                                </a>  
                        </td>
                        <td  >                                                 
                                <form action="{{route('phim.destroy',$tt->movieId)}}" method="post">
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
                   