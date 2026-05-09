// class DeviceStorage {
//   static const _boxName = 'brainstake_admin_device_storage_box';
//   static const _id = 'brainstake_admin_device_storage';
//   static const _userName = 'brainstake_admin_user_name';
//   static const _password = 'brainstake_admin_password';

//   late Box _box;

//   DeviceStorage();

//   Future<void> init() async {
//     try {
//       _box = await Hive.openBox(_boxName);
//     } catch (e) {
//       await Hive.deleteBoxFromDisk(_boxName);
//       await init();
//     }
//   }

//   Future<void> setAppFirstLaunch({required bool isAppFirstLaunch}) async {
//     try {
//       await _box.put(_id, isAppFirstLaunch);
//     } catch (e) {
//       throw CacheException(message: e.toString());
//     }
//   }

//   bool isAppFirstLaunch() {
//     try {
//       return _box.get(_id, defaultValue: true);
//     } catch (e) {
//       throw (CacheException(message: e.toString()));
//     }
//   }

//   Future<void> setRememberMe({
//     required String userName,
//     required String password,
//   }) async {
//     try {
//       await _box.put(_userName, userName);
//       await _box.put(_password, password);
//     } catch (e) {
//       throw CacheException(message: e.toString());
//     }
//   }

//   List<String> isFetchRememberMe() {
//     try {
//       final userName = _box.get(_userName, defaultValue: '');
//       final password = _box.get(_password, defaultValue: '');
//       return [userName, password];
//     } catch (e) {
//       throw (CacheException(message: e.toString()));
//     }
//   }
// }
