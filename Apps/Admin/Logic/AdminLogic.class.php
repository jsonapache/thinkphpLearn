<?php
namespace Admin\Logic;

class AdminLogic
{
    protected $admin_model;

    public function __construct() {
        $this->admin_model = M('admin');
    }
    public function login($username, $password, $type = 1) {
        $map = array();
        switch ($type) {
            case 1:
                $map['username'] = $username;
                break;
            case 2:
                $map['email'] = $username;
                break;
            case 3:
                $map['mobile'] = $username;
                break;
            case 4:
                $map['id'] = $username;
                break;
            default:
                return 0; //参数错误
        }
        $user = $this->admin_model->where($map)->find();

        if (is_array($user) && $user['status']) {
            /* 验证用户密码 */
            if(data_encrypt($password, UC_SALT_KEY) === $user['password']){

                //记录用户登录信息
                $data = array(
                    'id' => $user['id'],
                    'username' => $user['username'],
                    'prev_login_time' => $user['admin_login_time'],
                );
                session('user_auth', $data);
                session('user_auth_sign', data_auth_sign($data));

                $this->updateLogin($user['id']); //更新用户登录信息
                return $user['id']; //登录成功，返回用户ID
            } else {
                return -2; //密码错误
            }
        } else {
            return -1; //用户名不存在或被禁用
        }
    }

    protected function updateLogin($uid) {
        $data = array(
            'id' => $uid,
            'admin_login_time' => NOW_TIME,
            'admin_login_num'  => array('exp', 'admin_login_num+1'),
        );
        $this->admin_model->save($data);
    }
}