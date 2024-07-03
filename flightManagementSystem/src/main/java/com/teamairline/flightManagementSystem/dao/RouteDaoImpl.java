package com.teamairline.flightManagementSystem.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamairline.flightManagementSystem.bean.Route;
import com.teamairline.flightManagementSystem.dao.RouteDao;
import com.teamairline.flightManagementSystem.dao.RouteRepository;



@Repository
public class RouteDaoImpl implements RouteDao {
    @Autowired
    private RouteRepository repository;

    @Override
    public void save(Route route) {
        repository.save(route);
    }

    @Override
    public List<Route> findAllRoutes() {
        return repository.findAll();
    }

    @Override
    public Route findRouteById(Long id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public Route findRouteBySourceAndDestination(String source, String destination) {
        return repository.findRouteBySourceAndDestination(source, destination);
    }

    @Override
    public Long generateRouteId() {
        Long val = repository.findLastRouteId();
        if (val == null) {
            val = 101L;
        } else {
            val = val + 1;
        }
        return val;
    }

    @Override
    public List<Long> findAllRoutesId() {
        return repository.findAllRoutesId();
    }


}
