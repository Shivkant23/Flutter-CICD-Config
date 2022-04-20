import 'package:ci_cd_conf/envirnment.dart';
import 'package:ci_cd_conf/main_common.dart';

main() async{
  await mainCommon(Enviornment.dev);
}