import 'package:flutter/material.dart';
import 'package:student_list/student.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController classController = TextEditingController();
  List<Student> students = [];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Biểu mẫu ",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "sinh viên",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ID",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: idController,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),

              // Hiển thị tên của sinh viên
              Text(
                "Họ và tên",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),

              // Hiển thị năm sinh của sinh viên
              Text(
                "Năm sinh",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: yearController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              Text(
                "Lớp",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: classController,
                    decoration: InputDecoration(border: InputBorder.none),
                  )),

              // Hiển thị địa chỉ của sinh viên
              Text(
                "Địa chỉ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: addressController,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Lấy giá trị từ các trường nhập liệu
                      String idText = idController.text.trim();
                      int id = idText.isNotEmpty ? int.parse(idText) : 0;
                      String name = nameController.text.trim();
                      String address = addressController.text.trim();
                      String yearBirthText = yearController.text.trim();
                      int yearBirth = yearBirthText.isNotEmpty
                          ? int.parse(yearBirthText)
                          : 0; // Kiểm tra nếu năm sinh không rỗng thì chuyển đổi sang kiểu int
                      String classes = classController.text.trim();

                      // Kiểm tra xem các giá trị đã được nhập vào chưa
                      if (id != 0 &&
                          name.isNotEmpty &&
                          address.isNotEmpty &&
                          yearBirth != 0 &&
                          classes.isNotEmpty) {
                        setState(() {
                          students.add(Student(
                              id: id,
                              name: name,
                              yearBirth: yearBirth,
                              address: address,
                              classes: classes));
                        });

                        // Xóa nội dung của các trường nhập liệu sau khi lưu
                        idController.clear();
                        nameController.clear();
                        addressController.clear();
                        yearController.clear();
                        classController.clear();
                      } else {
                        // Hiển thị thông báo hoặc thực hiện hành động khác nếu người dùng không nhập đầy đủ thông tin
                      }
                    },
                    child: const Text(
                      'Lưu',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Lấy giá trị từ các trường nhập liệu
                      String idText = idController.text.trim();
                      int id = idText.isNotEmpty ? int.parse(idText) : 0;
                      String name = nameController.text.trim();
                      String address = addressController.text.trim();
                      String yearBirthText = yearController.text.trim();
                      int yearBirth = yearBirthText.isNotEmpty
                          ? int.parse(yearBirthText)
                          : 0; // Kiểm tra nếu năm sinh không rỗng thì chuyển đổi sang kiểu int
                      String classes = classController.text.trim();

                      // Kiểm tra xem các giá trị đã được nhập vào chưa
                      if (id != 0 &&
                          name.isNotEmpty &&
                          address.isNotEmpty &&
                          yearBirth != 0 &&
                          classes.isNotEmpty &&
                          selectedIndex != -1) {
                        // Cập nhật thông tin của sinh viên trong danh sách students
                        setState(() {
                          students[selectedIndex].name = name;
                          students[selectedIndex].address = address;
                          students[selectedIndex].yearBirth = yearBirth;
                          students[selectedIndex].classes = classes;
                          selectedIndex =
                              -1; // Đặt lại selectedIndex để chuẩn bị cho lần cập nhật tiếp theo
                        });

                        // Xóa nội dung của các trường nhập liệu sau khi cập nhật
                        idController.clear();
                        nameController.clear();
                        addressController.clear();
                        yearController.clear();
                        classController.clear();
                      } else {
                        // Hiển thị thông báo hoặc thực hiện hành động khác nếu người dùng không nhập đầy đủ thông tin hoặc không chọn sinh viên cần cập nhật
                      }
                    },
                    child: const Text(
                      'Cập nhật',
                      style: TextStyle(
                          color: Color.fromARGB(255, 59, 255, 154),
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              students.isEmpty
                  ? const Text(
                      'No Contact yet..',
                      style: TextStyle(fontSize: 22),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: students.length,
                      itemBuilder: (context, index) => getRow(index),
                    )
            ],
          ),
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
              index % 2 == 0 ? Colors.deepPurpleAccent : Colors.purple,
          foregroundColor: Colors.white,
          child: Text(
            students[index].name[0],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              students[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('ID: ${students[index].id}', style: TextStyle(color: Colors.blue),),
            Text('Năm sinh: ${students[index].yearBirth}', style: TextStyle(color: Colors.orange),),
            Text('Địa chỉ: ${students[index].address}' , style: TextStyle(color: Colors.blue),),
            Text('Lớp: ${students[index].classes}' , style: TextStyle(color: Colors.orange),),
          ],
        ),
        trailing: SizedBox(
          width: 70,
          child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        idController.text = students[index].id.toString();
                        nameController.text = students[index].name;
                        yearController.text =
                            students[index].yearBirth.toString();
                        addressController.text = students[index].address;
                        classController.text = students[index].classes;
                      });
                    },
                    child: const Icon(Icons.edit, color: Colors.blueGrey),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        students.removeAt(index);
                      });
                    },
                    child: const Icon(Icons.delete, color: Colors.red,),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
