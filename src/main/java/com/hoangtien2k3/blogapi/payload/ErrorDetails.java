package com.hoangtien2k3.blogapi.payload;

import lombok.Getter;

import java.util.Date;

public record ErrorDetails(Date timestamp, String message, String details) {

}
