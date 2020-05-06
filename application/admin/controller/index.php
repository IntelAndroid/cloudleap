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
class Index extends AdminBaseController{

    public function index(){
dump(AdminUserModel::get(['admin_user_id'=>1]));
    }
}