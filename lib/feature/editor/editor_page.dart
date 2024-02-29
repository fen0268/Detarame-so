import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/elevated_button_widget.dart';
import '../../common/textfield_widget.dart';
import '../merchandise/domain/merchandise.dart';
import '../merchandise/presentation/merchandise_page.dart';
import 'text_editing_controller.dart';

class EditorPage extends ConsumerStatefulWidget {
  const EditorPage({super.key});

  static String path = '/editor';

  @override
  EditorPageState createState() => EditorPageState();
}

class EditorPageState extends ConsumerState {
  File? file;
  String? url;

  Future<String?> pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    // 画像がnullの場合戻る
    if (image == null) {
      return null;
    }
    final file = File(image.path);
    final uploadPath =
        'merchandise/${ref.read(nameEnTextEditingController).text}.png';
    final storageRef = FirebaseStorage.instance.ref().child(uploadPath);
    final path = await storageRef.putFile(file);

    setState(() {});
    return path.ref.getDownloadURL();
  }

  Future<void> addMerchandise() async {
    final query = MerchandiseQuery();
    if (url == null) {
      return;
    } else {
      await query.add(
        createMerchandise: CreateMerchandise(
          name: ref.read(nameTextEditingController).text,
          price: int.parse(ref.read(priceTextEditingController).text),
          description: ref.read(descriptionTextEditingController).text,
          nameEn: ref.read(nameEnTextEditingController).text,
          image: url!,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go(MerchandisePage.path);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Editor'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                TextfieldWidget(
                  controller: ref.watch(nameTextEditingController),
                  onChanged: (_) => setState(() {}),
                  hintText: '商品名',
                ),
                TextfieldWidget(
                  controller: ref.watch(priceTextEditingController),
                  onChanged: (_) => setState(() {}),
                  hintText: '価格',
                ),
                TextfieldWidget(
                  controller: ref.watch(stockTextEditingController),
                  onChanged: (_) => setState(() {}),
                  hintText: '在庫',
                ),
                TextfieldWidget(
                  controller: ref.watch(descriptionTextEditingController),
                  onChanged: (_) => setState(() {}),
                  hintText: '説明',
                ),
                TextfieldWidget(
                  controller: ref.watch(nameEnTextEditingController),
                  onChanged: (_) => setState(() {}),
                  hintText: '商品名(英語)',
                ),
                ElevatedButtonWidget(
                  onPressed: () async {
                    url = await pickImage();
                    setState(() {});
                  },
                  child: const Text('画像選択'),
                ),
                file != null
                    ? SizedBox(
                        height: 100,
                        child: Image.file(file!),
                      )
                    : const SizedBox(),
                ElevatedButtonWidget(
                  onPressed: () async {
                    await addMerchandise();
                  },
                  child: const Text('登録'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
