/**
 * Created by roy on 2015/9/9.
 * user model
 *
 */
module.exports = {
  //��ȡ��֯���� [1:����,2:��˾]
  getOrganizationType: function () {
    var type = 1;
    return type;
  },
  //��ȡҵ������
  getBusinessType: function () {
    var type = 1;
    return type;
  },
  //��ȡ�������
  getCombinationType: function () {
    return this.getOrganizationType() + '-' + this.getBusinessType();
  },
  getNavItem: function () {
    var prePath = '/manage/user/';
    var type = this.getBusinessType();
    var items = [
      {id: 'msg', title: '�ҵ���Ϣ', href: prePath + 'msg-list'},
      {id: 'ref', title: '�ҵ��Ƽ�', href: prePath + 'ref'},
      {id: 'gain', title: '�ҵ�����', href: prePath + 'gain'},
      {id: 'set', title: '��������', href: prePath + 'settings'},
      {id: 'info', title: '��������', href: prePath + 'info'},
      {id: 'out', title: '�˳�', href: prePath + 'logout'}
    ];
    if (type) {
      return items;
    }
  }
};