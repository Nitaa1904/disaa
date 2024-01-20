/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javatpoint.bean;

/**
 *
 * @author Nita
 */
public class Destinasi {
    private int id;  
    private String nama,tempat,deskripsi; 
     private byte[] gambar;

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getNama() {
            return nama;
        }

        public void setNama(String nama) {
            this.nama = nama;
        }

        public String getTempat() {
            return tempat;
        }

        public void setTempat(String tempat) {
            this.tempat = tempat;
        }

        public String getDeskripsi() {
            return deskripsi;
        }

        public void setDeskripsi(String deskripsi) {
            this.deskripsi = deskripsi;
        }

        public byte[] getGambar() {
            return gambar;
        }

        public void setGambar(byte[] gambar) {
            this.gambar = gambar;
        }
}
