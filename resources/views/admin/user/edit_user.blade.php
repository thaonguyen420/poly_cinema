@extends("admin.layout.index")
@section("admin_content")
<div class="row">
                        <div class="col-12">
                            <div class="card-box table-responsive">
                                <h4 class="m-t-0 header-title">Chỉnh Quyền Người Dùng</h4>
                                <form action="{{URL::to('/update-user/'.$user->id)}}" method="post">
                                    {{ csrf_field() }}
                                <table id="datatable-buttons" class="table table-striped table-bordered" cellspacing="0" width="100%"
                                >
                                    <thead>
                                        <tr>
                                        <th>Họ Tên</th>
                                      <th>Email</th>
                                      <th>Ngày sinh</th>
                                      <th>Quyền</th>
                                      <th>Cập nhật</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr >
                                      <td>{{$user->name }}</td>
                                      <td>{{$user->email}}</td>
                                      <td>{{$user->born}}</td>
                                      <td>
                                      <select name="power" value="{{$user->power}}" class="form-control input-sm m-bot15">
                                       
                                            <option>user</option>
                                            <option>admin</option>  
                                      </select>
                                      </td>
                                      <td>
                                      <button onclick="return confirm('Bạn có chắc thay đổi quyền user này không?')" type="submit" name="update_user" class="btn btn-success">Cập nhật</button></td>                                                   
                                    </tr>
                            </tbody>  
                                </table>
                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end row -->
                    @endsection
                   