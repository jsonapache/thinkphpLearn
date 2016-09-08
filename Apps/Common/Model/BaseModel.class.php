<?php
namespace Common\Model;

use Think\Model;

class BaseModel extends Model
{
    public function addData($data) {
        foreach ($data as $k => $v) {
            $data[$k] = trim($v);
        }
        $id = $this->add($data);
        return $id;
    }

    public function editData($map,$data) {
        foreach ($data as $k => $v) {
            $data[$k] = trim($v);
        }
        $result = $this->where($map)->save($data);
        return $result;
    }

    public function deleteData($map) {
        if (empty($map)) {
            die('where为空的危险操作');
        }
        $result = $this->where($map)->delete();
        return $result;
    }
}