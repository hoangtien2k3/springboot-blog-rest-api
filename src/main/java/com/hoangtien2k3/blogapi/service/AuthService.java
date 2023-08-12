package com.hoangtien2k3.blogapi.service;

import com.hoangtien2k3.blogapi.payload.LoginDto;
import com.hoangtien2k3.blogapi.payload.RegisterDto;

public interface AuthService {
    String login(LoginDto loginDto);

    String register(RegisterDto registerDto);
}
