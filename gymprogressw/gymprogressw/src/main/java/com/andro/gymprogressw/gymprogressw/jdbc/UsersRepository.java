package com.andro.gymprogressw.gymprogressw.jdbc;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.andro.gymprogressw.gymprogressw.models.users;
import com.andro.gymprogressw.gymprogressw.security.SecureUtils;

import static com.andro.gymprogressw.gymprogressw.security.SecureUtils.getSalt;

@Repository
public class UsersRepository {

    private JdbcTemplate plantilla;


    public UsersRepository(JdbcTemplate plantilla){
        this.plantilla=plantilla;
    }

    @Transactional
    public void insertar(users usuario){

        byte[] salt;

        try {
            salt = SecureUtils.getSalt();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }

        plantilla.update(
                "INSERT INTO USERS (NAME, WEIGHT, HEIGHT, PASSWORDD, NICKNAME, AGE, EMAIL, PORPUSE_FK) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
                usuario.getName(),
                usuario.getWeight(),
                usuario.getHeight(),
                SecureUtils.getSecurePassword( usuario.getPassword(),salt),//añadido sha256 con sal
                usuario.getNickname(),
                usuario.getAge(),
                usuario.getEmail(),
                usuario.getPorpuse() // Clave foránea (ID del propósito)
        );

    }

    public void verificar(users usuario){

        plantilla.update(
                "INSERT INTO USERS (NAME, WEIGHT, HEIGHT, PASSWORDD, NICKNAME, AGE, EMAIL, PORPUSE_FK) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
                usuario.getName(),
                usuario.getWeight(),
                usuario.getHeight(),
                usuario.getPassword(),
                usuario.getNickname(),
                usuario.getAge(),
                usuario.getEmail(),
                usuario.getPorpuse() // Clave foránea (ID del propósito)
        );

    }

}
