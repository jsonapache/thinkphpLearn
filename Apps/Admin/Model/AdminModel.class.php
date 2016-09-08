<?php
namespace Admin\Model;

use Common\Model\BaseModel;

class AdminModel extends BaseModel
{
    protected $tableName = 'admin';

    protected $_validate = array(
        array('username', 'require', 'This field is required.', self::EXISTS_VALIDATE),
        array('password', 'require', 'This field is required.', self::EXISTS_VALIDATE),
    );
}