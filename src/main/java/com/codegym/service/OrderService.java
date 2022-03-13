package com.codegym.service;

import com.codegym.dao.IOrderDao;
import com.codegym.dao.OrderDao;
import com.codegym.model.Cart;
import com.codegym.model.OderDetail;
import com.codegym.model.User;

import java.util.List;

public class OrderService implements IOrderService{
    IOrderDao orderDao = new OrderDao();
    @Override
    public List<Cart> findAll() {
        return orderDao.findAll();
    }

    @Override
    public Cart findByID(int id) {
        return orderDao.findByID(id);
    }

    @Override
    public boolean create(Cart cart) {
        return orderDao.create(cart);
    }

    @Override
    public boolean update(int id, Cart cart) {
        return orderDao.update(id,cart);
    }

    @Override
    public boolean delete(int id) {
        return orderDao.delete(id);
    }

    @Override
    public List<User> findAllUserHavingOrder() {
        return orderDao.findAllUserHavingOrder();
    }

    @Override
    public List<OderDetail> findOrderDetailByOrderID(int order_id) {
        return orderDao.findOrderDetailByOrderID(order_id);
    }

    @Override
    public int countOrder() {
        return orderDao.countOrder();
    }

    @Override
    public List<OderDetail> findAllOrderDetails() {
        return orderDao.findAllOrderDetails();
    }

    @Override
    public int totalQuantityOfProduct() {
        return orderDao.totalQuantityOfProduct();
    }

    @Override
    public double totalRevenue() {
        double totalRevenue = 0;
        List<OderDetail> oderDetails = this.findAllOrderDetails();
        for (int i = 0; i < oderDetails.size(); i++) {
            totalRevenue += oderDetails.get(i).getPrice() * oderDetails.get(i).getQuantity();
        }
        return totalRevenue;
    }
}