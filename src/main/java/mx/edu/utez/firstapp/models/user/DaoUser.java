package mx.edu.utez.firstapp.models.user;

import mx.edu.utez.firstapp.models.crud.DaoRepository;

import java.util.List;

public class DaoUser implements DaoRepository<User>{


    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public User findOne(long id) {
        return null;
    }

    @Override
    public boolean save(User object) {
        return false;
    }

    @Override
    public boolean update(User object) {
        return false;
    }

    @Override
    public boolean delete(Long id) {
        return false;
    }
}
