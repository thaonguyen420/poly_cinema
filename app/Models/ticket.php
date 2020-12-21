<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ticket extends Model
{
    protected $table='ticket';
    protected $primaryKey='ticketId';
    protected $fillable = [
        'ticketId',
        'ticketCode',
        'sheduleId',
        'adminId',
        'userId',
        'email',
        'seats',
    ];  
}
