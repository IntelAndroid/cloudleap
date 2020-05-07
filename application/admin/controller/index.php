<?php

namespace app\admin\controller;

use app\admin\model\AdminUser as AdminUserModel;
use app\common\controller\AdminBaseController;

/**
 * 商家后台管理首页
 * User: Administrator
 * Date: 2020/5/6 0006
 * Time: 下午 10:28
 */
class Index extends AdminBaseController
{
    /**
     *后台首页
     * @return mixed
     */
    public function index()
    {
        return $this->fetch();
    }
}