package vn.hiepdev.laptopshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.hiepdev.laptopshop.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    List<User> findByEmail(String email);
}
