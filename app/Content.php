<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    protected $fillable = ['name', 'surname', 'email', 'password'];
    protected $table = 'users';
}
