import 'package:flutter_shopping_app/features/cart/bloc/cart_bloc.dart';
import 'package:flutter_shopping_app/features/home/bloc/home_bloc.dart';
import 'package:flutter_shopping_app/features/home/models/home_product_data_model.dart';
import 'package:flutter/material.dart';

class CartTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final CartBloc cartBloc;

  const CartTileWidget(
      {super.key, required this.productDataModel, required this.cartBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(productDataModel.imageUrl),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productDataModel.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(productDataModel.description),
                ],
              ),
              Column(
                children: [
                  Text(
                    '\$${productDataModel.price}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // const SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // homeBloc.add(HomeProductWishlistButtonClickedEvent(
                          //   clickkedProduct: productDataModel
                          // ));
                        },
                        icon: const Icon(Icons.favorite_border),
                      ),
                      IconButton(
                        onPressed: () {
                          // homeBloc.add(HomeProductCartButtonClickedEvent(
                          //   clickedProduct: productDataModel
                          // ));
                        },
                        icon: const Icon(Icons.shopping_bag_outlined),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
