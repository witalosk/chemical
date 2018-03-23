<?php
namespace app\model;

use app\dao\UserDao;
/**
* UserMode クラス
* @brief ユーザモデル
*/
final class UserModel
{
    public $id = null;
    public $mailAddress = null;
    public $password = null;
    public $nickName = null;
    public $coin = null;
    public $level = null;
    public $exp = null;
    public $loginTimes = null;
    public $lastLogin = null;

    /**
    * コンストラクタ
    * @param array $array
    * @return \app\model\UserModel
    */
    public function __construct($array = array())
    {
        if(null != $array)
        {
            $this->setProperty($array);
        }
    }

    /**
    * プロパティを配列で指定するメソッド
    * @param array $array
    * @return \app\model\UserModel
    */
    public function setProperty($array)
    {
        $this->id = $array['id'];
        $this->mailAddress = $array['mailAddress'];
        $this->password = $array['password'];
        $this->nickName = $array['nickName'];
        $this->coin = $array['coin'];
        $this->level = $array['level'];
        $this->exp = $array['exp'];
        $this->loginTimes = $array['loginTimes'];
        $this->lastLogin = $array['lastLogin'];

        return $this;
    }

    /**
    * ユーザidからユーザモデルを検索するメソッド
    * @param string $id
    * @return \app\model\UserModel
    */
    public function getModelById($id)
    {
        $dao = UserDao::getDaoFromId($id);
        return (isset($dao[0])) ? $this->setProperty(reset($dao)) : null;
    }

    /**
    * passwordからユーザモデルを検索するメソッド
    * @param string $id
    * @return \app\model\UserModel
    */
    public function getModelByScreenName($id)
    {
        $dao = UserDao::getDaoFromScreenName($id);
        return (isset($dao[0])) ? $this->setProperty(reset($dao)) : null;
    }

    /**
    * DBを更新・DBに保存するメソッド
    * @return bool
    */
    public function save()
    {
        return UserDao::save($this);
    }

    /**
    * ユーザを新規登録する
    *
    * @return bool
    */
    public function register()
    {
        return UserDao::insert($this);
    }
}
