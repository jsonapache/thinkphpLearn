<?php
namespace Admin\Model;

use Think\Model;

class AdminModel extends Model
{
    protected $tableName = 'admin';

    protected $_validate = array(
        array('username', 'require', 'This field is required.', self::EXISTS_VALIDATE),
        array('password', 'require', 'This field is required.', self::EXISTS_VALIDATE),
    );
}