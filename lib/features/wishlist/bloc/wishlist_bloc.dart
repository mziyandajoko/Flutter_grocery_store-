import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/data/wishlist_items.dart';
import 'package:grocery_store/features/home/models/home_product_data_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistEvent>((event, emit) {
      on<WishlistinitialEvent>(wishlistinitialEvent);
      on<WishlistRemoveFromWishlistEvent>(wishlistRemoveFromWishlistEvent);
    });
  }

  FutureOr<void> wishlistinitialEvent(
      WishlistinitialEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }

  FutureOr<void> wishlistRemoveFromWishlistEvent(
      WishlistRemoveFromWishlistEvent event, Emitter<WishlistState> emit) {
    wishlistItems.remove(event.productDataModel);
  }
}
