import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rezaqi_ecommerce/controller/home/home_controller.dart';
import 'package:rezaqi_ecommerce/data/model/items_model.dart';
import 'package:rezaqi_ecommerce/links.dart';

class CustomItemsMore extends GetView<HomeControllerImp> {
  const CustomItemsMore({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
      child: Container(
          height: 200,
          margin: const EdgeInsets.only(left: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      width: 30,
                    ),
                itemCount: controller.items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) => ItemsMore(
                    itemsModel: ItemsModel.fromJson(controller.items[i]))),
          )),
    );
  }
}

class ItemsMore extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsMore({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 20,
                    spreadRadius: 10,
                    blurStyle: BlurStyle.inner,
                    offset: Offset(0, 10))
              ],
              color: const Color.fromARGB(255, 7, 200, 210),
              borderRadius: BorderRadius.circular(20)),
          width: 170,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.network(
                  "${AppLinks.imageItem}/${itemsModel.itemsImage}",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.white.withOpacity(0),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${itemsModel.itemsName}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${itemsModel.itemsPrice}",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 22, 250, 186),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
