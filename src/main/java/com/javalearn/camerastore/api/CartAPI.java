package com.javalearn.camerastore.api;


import com.javalearn.camerastore.convert.ConvertProduct;
import com.javalearn.camerastore.entity.Customer;
import com.javalearn.camerastore.entity.Order;
import com.javalearn.camerastore.repository.CustomerRepository;
import com.javalearn.camerastore.repository.OrderRepository;
import com.javalearn.camerastore.repository.ProductRepository;
import com.javalearn.camerastore.request.Cart;
import com.javalearn.camerastore.request.ProductRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/")
public class CartAPI {
    @Autowired
    ProductRepository productRepository;



    @Autowired
    ConvertProduct convertProduct;


//    @GetMapping(value = "Cart/{id}")
//    public HashMap<Long, Cart> addCart(@PathVariable long id, HttpSession session) {
//        HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("cartList");
//        System.out.println(cartItems);
//        if (cartItems == null) {
//            cartItems = new HashMap<>();
//        }
//        ProductRequest productRequest = convertProduct.toRequest(productRepository.findOneById(id));
//        if (productRequest != null) {
//            if (cartItems.containsKey(id)) {
//                Cart item = cartItems.get(id);
//                item.setProductRequest(productRequest);
//                item.setQuantity(item.getQuantity() + 1);
//                cartItems.put(id, item);
//            } else {
//                Cart item = new Cart();
//                item.setProductRequest(productRequest);
//                item.setQuantity(1);
//                cartItems.put(id, item);
//                System.out.println( "Mới thêm: " + cartItems);
//            }
//        }
////        System.out.println(cartItems.get(id).getProductRequest().getTensp());
//        session.setAttribute("cartList", cartItems);
//        session.setAttribute("totalPrice", totalPrice(cartItems));
//        session.setAttribute("cartNum", cartItems.size());
//        return cartItems;
//    }


    @GetMapping(value = "Cart/{id}")
    public int addCart(@PathVariable long id, HttpSession session,
                       @RequestParam(value = "num", required = false) Integer num) {
        HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("cartList");
        System.out.println(cartItems);
        if (cartItems == null) {
            cartItems = new HashMap<>();
        }

        if(num != null)
            if (num==0)
                return cartItems.size();

        ProductRequest productRequest = convertProduct.toRequest(productRepository.findOneById(id));
        if (productRequest != null) {
            if (cartItems.containsKey(id)) {
                Cart item = cartItems.get(id);
                item.setProductRequest(productRequest);
                if(num == null)
                {
                    item.setQuantity(item.getQuantity() + 1);
                }
                else {
                    item.setQuantity(item.getQuantity() + num);
                }
                cartItems.put(id, item);
            } else {
                Cart item = new Cart();
                item.setProductRequest(productRequest);
                if(num == null)
                {
                    item.setQuantity(1);
                }
                else {
                    item.setQuantity(num);
                }
                cartItems.put(id, item);
                System.out.println( "Mới thêm: " + cartItems);
            }
        }
//        System.out.println(cartItems.get(id).getProductRequest().getTensp());
        session.setAttribute("cartList", cartItems);
        session.setAttribute("totalPrice", totalPrice(cartItems));
        session.setAttribute("cartNum", cartItems.size());
        return cartItems.size();
    }



    @GetMapping(value = "cartList")
    public List<Cart> getCartList(HttpSession session) {

        HashMap<Long, Cart> list;
        list = (HashMap<Long, Cart>) session.getAttribute("cartList");
        List<Cart> cartList = new ArrayList<>();
        if(list != null) {
            for (Map.Entry<Long, Cart> cart : list.entrySet()) {
                cartList.add(cart.getValue());
            }
        }
        System.out.println(list);
        return cartList;
    }

    @GetMapping(value = "deleteCart/{id}")
    public String deleteCart (@PathVariable long id, HttpSession session){
        HashMap<Long, Cart> list;
        list = (HashMap<Long, Cart>) session.getAttribute("cartList");
        list.remove(id);
        if(list.size() == 0)
        {
            session.setAttribute("cartList", null);
            session.setAttribute("totalPrice", 0);
            session.setAttribute("cartNum", null);
        }
        else {
            session.setAttribute("cartList", list);
            session.setAttribute("totalPrice", totalPrice(list));
            session.setAttribute("cartNum", list.size());
        }

        return "success";
    }


    @GetMapping(value = "updateQuantity/{id}")
    public String updateQuantity(HttpSession session, @RequestParam("quantity")int quantity, @PathVariable long id)
    {
        HashMap<Long, Cart> list = (HashMap<Long, Cart>) session.getAttribute("cartList");
        list.get(id).setQuantity(quantity);
        session.setAttribute("cartList", list);
        return "Success";
    }


    @GetMapping(value = "minusCart/{id}")
    public String minusCart(HttpSession session, @PathVariable long id)
    {
        HashMap<Long, Cart> list = (HashMap<Long, Cart>) session.getAttribute("cartList");
        if(list.get(id).getQuantity() == 1)
        {
            return "fails";
        }
        else {
            list.get(id).setQuantity(list.get(id).getQuantity()-1);
        }
        session.setAttribute("cartList", list);
        session.setAttribute("totalPrice", totalPrice(list));
        session.setAttribute("cartNum", list.size());
        return "Success";
    }

    @GetMapping(value = "plusCart/{id}")
    public String plusCart(HttpSession session, @PathVariable long id)
    {
        HashMap<Long, Cart> list = (HashMap<Long, Cart>) session.getAttribute("cartList");
        list.get(id).setQuantity(list.get(id).getQuantity()+1);
        session.setAttribute("cartList", list);
        session.setAttribute("totalPrice", totalPrice(list));
        session.setAttribute("cartNum", list.size());
        return "Success";
    }




    public double totalPrice(HashMap<Long, Cart> cartItems) {
        double count = 0;
        for (Map.Entry<Long, Cart> list : cartItems.entrySet()) {
            count += list.getValue().getProductRequest().getGia() * list.getValue().getQuantity();
        }
        return count;
    }

}
