<?php
/**
 * 自定义数据加密
 *
 * @param string $data
 * @param const  $salt
 *
 * @return string
 */
function data_encrypt($data, $salt) {
    return md5($salt . $data);
}