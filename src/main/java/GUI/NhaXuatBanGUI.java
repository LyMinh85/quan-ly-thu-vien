/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package GUI;

import BUS.NguoiDocBUS;
import BUS.NhaXuatBanBUS;
import BUS.SachBUS;
import DAO.MyConnection;
import DTO.NguoiDocDTO;
import DTO.NhaXuatBanDTO;
import Helpler.Helpler;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

/**
 * @author pc
 */
public class NhaXuatBanGUI extends javax.swing.JPanel {

    /**
     * Creates new form NguoiDocGUI
     */
    private DefaultTableModel nhaXuatBanModel;

    public NhaXuatBanGUI() {
        initComponents();
        Helpler.centerCell(jTableNguoiDoc);
        setTableItemList();
    }

    public void setTableItemList() {
        nhaXuatBanModel = (DefaultTableModel) jTableNguoiDoc.getModel();
        nhaXuatBanModel.setRowCount(0);
        NhaXuatBanBUS nhaXuatBanBUS = new NhaXuatBanBUS();
        nhaXuatBanBUS.findAll();
        ArrayList<NhaXuatBanDTO> listNhaXuatBan = nhaXuatBanBUS.getListNhaXuatBan();
        listNhaXuatBan.forEach(ele -> {
            nhaXuatBanModel.addRow(new Object[]{
                ele.getId(),
                ele.getTen(),
                ele.getDiaChi(),
                ele.getSdt(),
                ele.getEmail()
            });
        });
    }

    public void setTableItemList(NhaXuatBanBUS nhaXuatBanBUS) {
        nhaXuatBanModel = (DefaultTableModel) jTableNguoiDoc.getModel();
        nhaXuatBanModel.setRowCount(0);
        ArrayList<NhaXuatBanDTO> listNhaXuatBan = nhaXuatBanBUS.getListNhaXuatBan();
        listNhaXuatBan.forEach(ele -> {
            nhaXuatBanModel.addRow(new Object[]{
                ele.getId(),
                ele.getTen(),
                ele.getDiaChi(),
                ele.getSdt(),
                ele.getEmail()
            });
        });
    }

    public void clearAllTextField() {
        txtTen.setText("");
        txtSDT.setText("");
        txtDiaChi.setText("");
        txtEmail.setText("");
    }

    public boolean isEmptyString(String str) {
        return str.equalsIgnoreCase("");
    }

    public boolean checkTextField(String option) {
        String sdt = txtSDT.getText();
        String diaChi = txtDiaChi.getText();
        String hoTen = txtTen.getText();
        String email = txtEmail.getText();
        if (option.equalsIgnoreCase("Sua")) {
            sdt = txtSDT1.getText();
            diaChi = txtDiaChi1.getText();
            hoTen = txtHoTen1.getText();
            email = txtCMND1.getText();
        }
        if (isEmptyString(hoTen)) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập họ tên");
            return false;
        }
        if (isEmptyString(diaChi)) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập địa chỉ");
            return false;
        }
        if (isEmptyString(sdt)) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập SDT");
            return false;
        }
        if (!sdt.matches("[0-9]+")) {
            JOptionPane.showMessageDialog(this, "SDT chi duoc nhap so");
            return false;
        }

        if (isEmptyString(email)) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập Email");
            return false;
        }

        return true;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDialogSua = new javax.swing.JDialog();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        txtSDT1 = new javax.swing.JTextField();
        txtNgaySinh1 = new com.toedter.calendar.JDateChooser();
        txtHoTen1 = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        txtDiaChi1 = new javax.swing.JTextField();
        txtCMND1 = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        btnXacNhanSua = new javax.swing.JButton();
        jLabel12 = new javax.swing.JLabel();
        txtID = new javax.swing.JTextField();
        jDialogTimKiem = new javax.swing.JDialog();
        jLabel13 = new javax.swing.JLabel();
        txtHoTen2 = new javax.swing.JTextField();
        btnXacNhanTim = new javax.swing.JButton();
        jLabel14 = new javax.swing.JLabel();
        ckbQuaHanSuDung = new javax.swing.JCheckBox();
        jLabel15 = new javax.swing.JLabel();
        rbtnCoViPham = new javax.swing.JRadioButton();
        rbtnKhongViPham = new javax.swing.JRadioButton();
        rbtnBiKhoa = new javax.swing.JRadioButton();
        buttonGroupTinhTrang = new javax.swing.ButtonGroup();
        jDialogThem = new javax.swing.JDialog();
        txtTen = new javax.swing.JTextField();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        txtDiaChi = new javax.swing.JTextField();
        jLabel19 = new javax.swing.JLabel();
        txtSDT = new javax.swing.JTextField();
        txtEmail = new javax.swing.JTextField();
        jLabel20 = new javax.swing.JLabel();
        btnXacNhanThem = new javax.swing.JButton();
        String desktopDir = System.getProperty("user.home") + "/Desktop";
        jFileChooserExport = new javax.swing.JFileChooser(desktopDir);
        jFileChooserImport = new javax.swing.JFileChooser(desktopDir);
        jScrollPane1 = new javax.swing.JScrollPane();
        jTableNguoiDoc = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        btnThem = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        filler5 = new javax.swing.Box.Filler(new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 32767));
        filler1 = new javax.swing.Box.Filler(new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 32767));
        btnXoa = new javax.swing.JButton();
        filler4 = new javax.swing.Box.Filler(new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 32767));
        filler3 = new javax.swing.Box.Filler(new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 32767));
        btnHuyTimKiem = new javax.swing.JButton();
        filler2 = new javax.swing.Box.Filler(new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 32767));
        filler6 = new javax.swing.Box.Filler(new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 32767));
        filler7 = new javax.swing.Box.Filler(new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 0), new java.awt.Dimension(10, 32767));

        jDialogSua.setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jDialogSua.setMinimumSize(new java.awt.Dimension(400, 400));

        jLabel7.setText("Họ Tên");

        jLabel8.setText("SDT");

        jLabel9.setText("Ngày sinh");

        jLabel10.setText("Địa chỉ");

        jLabel11.setText("CMND");

        btnXacNhanSua.setText("Sửa");
        btnXacNhanSua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXacNhanSuaActionPerformed(evt);
            }
        });
        jPanel3.add(btnXacNhanSua);

        jLabel12.setText("ID");

        txtID.setEnabled(false);

        javax.swing.GroupLayout jDialogSuaLayout = new javax.swing.GroupLayout(jDialogSua.getContentPane());
        jDialogSua.getContentPane().setLayout(jDialogSuaLayout);
        jDialogSuaLayout.setHorizontalGroup(
            jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jDialogSuaLayout.createSequentialGroup()
                .addGap(43, 43, 43)
                .addGroup(jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel12, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 61, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 61, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jDialogSuaLayout.createSequentialGroup()
                        .addGroup(jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtCMND1)
                            .addComponent(txtDiaChi1)
                            .addComponent(txtNgaySinh1, javax.swing.GroupLayout.DEFAULT_SIZE, 214, Short.MAX_VALUE)
                            .addComponent(txtSDT1, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(txtHoTen1))
                        .addGap(55, 55, 55))
                    .addGroup(jDialogSuaLayout.createSequentialGroup()
                        .addComponent(txtID, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
        );
        jDialogSuaLayout.setVerticalGroup(
            jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDialogSuaLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel12, javax.swing.GroupLayout.PREFERRED_SIZE, 18, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtID, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtHoTen1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel7))
                .addGap(18, 18, 18)
                .addGroup(jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(txtSDT1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel9)
                    .addComponent(txtNgaySinh1, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(23, 23, 23)
                .addGroup(jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtDiaChi1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel10))
                .addGap(18, 18, 18)
                .addGroup(jDialogSuaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtCMND1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel11))
                .addGap(18, 18, 18)
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, 0))
        );

        jDialogTimKiem.setTitle("Tìm kiếm");
        jDialogTimKiem.setMinimumSize(new java.awt.Dimension(400, 400));

        jLabel13.setText("Họ Tên");

        btnXacNhanTim.setText("Tìm");
        btnXacNhanTim.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXacNhanTimActionPerformed(evt);
            }
        });

        jLabel14.setText("Khác");

        ckbQuaHanSuDung.setText("Quá hạn sử dụng");

        jLabel15.setText("Tình trạng");

        buttonGroupTinhTrang.add(rbtnCoViPham);
        rbtnCoViPham.setText("Có vi phạm");

        buttonGroupTinhTrang.add(rbtnKhongViPham);
        rbtnKhongViPham.setText("Không vi phạm");

        buttonGroupTinhTrang.add(rbtnBiKhoa);
        rbtnBiKhoa.setText("Bị khóa");

        javax.swing.GroupLayout jDialogTimKiemLayout = new javax.swing.GroupLayout(jDialogTimKiem.getContentPane());
        jDialogTimKiem.getContentPane().setLayout(jDialogTimKiemLayout);
        jDialogTimKiemLayout.setHorizontalGroup(
            jDialogTimKiemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jDialogTimKiemLayout.createSequentialGroup()
                .addGap(0, 15, Short.MAX_VALUE)
                .addGroup(jDialogTimKiemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jDialogTimKiemLayout.createSequentialGroup()
                        .addGroup(jDialogTimKiemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(jLabel15, javax.swing.GroupLayout.DEFAULT_SIZE, 85, Short.MAX_VALUE)
                            .addComponent(jLabel13, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel14, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addGap(18, 18, 18)
                        .addGroup(jDialogTimKiemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(ckbQuaHanSuDung)
                            .addComponent(txtHoTen2, javax.swing.GroupLayout.PREFERRED_SIZE, 147, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jDialogTimKiemLayout.createSequentialGroup()
                        .addGap(53, 53, 53)
                        .addGroup(jDialogTimKiemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(rbtnKhongViPham, javax.swing.GroupLayout.DEFAULT_SIZE, 148, Short.MAX_VALUE)
                            .addComponent(rbtnCoViPham, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(rbtnBiKhoa, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                .addGap(135, 135, 135))
            .addGroup(jDialogTimKiemLayout.createSequentialGroup()
                .addGap(166, 166, 166)
                .addComponent(btnXacNhanTim)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jDialogTimKiemLayout.setVerticalGroup(
            jDialogTimKiemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDialogTimKiemLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jDialogTimKiemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtHoTen2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel13))
                .addGap(25, 25, 25)
                .addGroup(jDialogTimKiemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel14)
                    .addComponent(ckbQuaHanSuDung))
                .addGap(30, 30, 30)
                .addComponent(jLabel15)
                .addGap(18, 18, 18)
                .addComponent(rbtnKhongViPham, javax.swing.GroupLayout.PREFERRED_SIZE, 29, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(rbtnCoViPham)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(rbtnBiKhoa)
                .addGap(2, 2, 2)
                .addComponent(btnXacNhanTim)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jDialogThem.setTitle("Thêm nhà xuất bản");
        jDialogThem.setMinimumSize(new java.awt.Dimension(400, 300));

        txtTen.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtTenActionPerformed(evt);
            }
        });

        jLabel16.setText("Tên");

        jLabel17.setText("Địa chỉ");

        jLabel19.setText("SDT");

        txtEmail.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtEmailActionPerformed(evt);
            }
        });

        jLabel20.setText("Email");

        btnXacNhanThem.setText("Thêm");
        btnXacNhanThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXacNhanThemActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jDialogThemLayout = new javax.swing.GroupLayout(jDialogThem.getContentPane());
        jDialogThem.getContentPane().setLayout(jDialogThemLayout);
        jDialogThemLayout.setHorizontalGroup(
            jDialogThemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDialogThemLayout.createSequentialGroup()
                .addGap(119, 119, 119)
                .addComponent(btnXacNhanThem, javax.swing.GroupLayout.DEFAULT_SIZE, 145, Short.MAX_VALUE)
                .addGap(136, 136, 136))
            .addGroup(jDialogThemLayout.createSequentialGroup()
                .addGap(24, 24, 24)
                .addGroup(jDialogThemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jDialogThemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jLabel16, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel17, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jLabel19, javax.swing.GroupLayout.PREFERRED_SIZE, 61, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel20, javax.swing.GroupLayout.PREFERRED_SIZE, 61, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jDialogThemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtEmail)
                    .addComponent(txtSDT)
                    .addComponent(txtDiaChi, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txtTen))
                .addContainerGap())
        );
        jDialogThemLayout.setVerticalGroup(
            jDialogThemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jDialogThemLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jDialogThemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtTen, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel16))
                .addGap(18, 18, 18)
                .addGroup(jDialogThemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel17)
                    .addComponent(txtDiaChi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jDialogThemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel19)
                    .addComponent(txtSDT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jDialogThemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel20)
                    .addComponent(txtEmail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 81, Short.MAX_VALUE)
                .addComponent(btnXacNhanThem)
                .addContainerGap())
        );

        setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jTableNguoiDoc.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "Nhà xuất bản", "Địa chỉ", "SĐT", "Email"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jScrollPane1.setViewportView(jTableNguoiDoc);
        if (jTableNguoiDoc.getColumnModel().getColumnCount() > 0) {
            jTableNguoiDoc.getColumnModel().getColumn(0).setMaxWidth(50);
        }
        jTableNguoiDoc.getAccessibleContext().setAccessibleName("");
        jTableNguoiDoc.getAccessibleContext().setAccessibleDescription("");

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setFont(new java.awt.Font("Tahoma", 0, 20)); // NOI18N

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 20)); // NOI18N
        jLabel2.setText("NHÀ XUẤT BẢN");
        jPanel1.add(jLabel2);

        btnThem.setText("THÊM");
        btnThem.setPreferredSize(new java.awt.Dimension(80, 23));
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });
        jPanel4.add(btnThem);

        jPanel2.setLayout(new javax.swing.BoxLayout(jPanel2, javax.swing.BoxLayout.LINE_AXIS));
        jPanel2.add(filler5);
        jPanel2.add(filler1);

        btnXoa.setText("XOÁ");
        btnXoa.setPreferredSize(new java.awt.Dimension(80, 23));
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaActionPerformed(evt);
            }
        });
        jPanel2.add(btnXoa);
        jPanel2.add(filler4);
        jPanel2.add(filler3);

        btnHuyTimKiem.setText("TẢI LẠI");
        btnHuyTimKiem.setPreferredSize(new java.awt.Dimension(80, 23));
        btnHuyTimKiem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnHuyTimKiemActionPerformed(evt);
            }
        });
        jPanel2.add(btnHuyTimKiem);
        jPanel2.add(filler2);
        jPanel2.add(filler6);
        jPanel2.add(filler7);

        jPanel4.add(jPanel2);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, 712, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 577, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    public LocalDate convertToLocalDateViaMilisecond(Date dateToConvert) {
        return Instant.ofEpochMilli(dateToConvert.getTime())
                .atZone(ZoneId.systemDefault())
                .toLocalDate();
    }

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed
        jDialogThem.setVisible(true);
        jDialogThem.setLocationRelativeTo(null);
    }//GEN-LAST:event_btnThemActionPerformed

    private void btnXacNhanSuaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXacNhanSuaActionPerformed
        if (!checkTextField("Sua")) {
            return;
        }
        // Get value in text field
        int id = Integer.parseInt(txtID.getText());
        String sdt = txtSDT1.getText();
        LocalDate ngaySinh = convertToLocalDateViaMilisecond(txtNgaySinh1.getDate());
        String diaChi = txtDiaChi1.getText();
        String hoTen = txtHoTen1.getText();
        String cmnd = txtCMND1.getText();
        NguoiDocBUS nguoiDocBus = new NguoiDocBUS();
        //Get a record with id
        NguoiDocDTO nguoiDocDTO = nguoiDocBus.findOne(id);
        //Change the record columns value
        nguoiDocDTO.setHoTen(hoTen);
        nguoiDocDTO.setCmnd(cmnd);
        nguoiDocDTO.setDiaChi(diaChi);
        nguoiDocDTO.setNgaySinh(ngaySinh);
        nguoiDocDTO.setSdt(sdt);
        //Update record to database
        if (nguoiDocBus.updateOne(nguoiDocDTO)) {
            System.out.println("Sua thanh cong");
        } else {
            System.out.println("Sua that bai");
        }
        setTableItemList();
        clearAllTextField();
        jDialogSua.setVisible(false);
    }//GEN-LAST:event_btnXacNhanSuaActionPerformed

    private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoaActionPerformed
        int selectedRow = jTableNguoiDoc.getSelectedRow();
        if (selectedRow == -1) {
            JOptionPane.showMessageDialog(this, "Vui lòng chọn dòng cần xóa");
            return;
        }
        int id = (int) jTableNguoiDoc.getValueAt(selectedRow, 0);
        // count all sach with idLoaiSach = id
        int countSach = new SachBUS().countSachByIdNhaXuatBan(id);

        // show yes no dialog about "Tác giả: (name) đang có (count) quyển sách trong cơ sở dữ liệu. Bạn có muốn xóa hay không"
        String name = (String) jTableNguoiDoc.getValueAt(selectedRow, 1);
        if (countSach > 0) {
            int dialogResult = JOptionPane.showConfirmDialog(this, "Nhà xuất bản '" + name + "' đang có " + countSach + " quyển sách trong cơ sở dữ liệu.\nBạn có muốn xóa nhà xuất bản \"" + name +  "\" không?", "Xác nhận xóa", JOptionPane.YES_NO_OPTION);
            if (dialogResult == JOptionPane.NO_OPTION) {
                return;
            }
        }
        NhaXuatBanBUS nhaXuatBanBUS = new NhaXuatBanBUS();
        if (!nhaXuatBanBUS.deleteOne(id)) {
            JOptionPane.showMessageDialog(this, "Xóa thất bại");
            return;
        }
        setTableItemList();
    }//GEN-LAST:event_btnXoaActionPerformed

    public String getSelectedButtonText(ButtonGroup buttonGroup) {
        for (Enumeration<AbstractButton> buttons = buttonGroup.getElements(); buttons.hasMoreElements();) {
            AbstractButton button = buttons.nextElement();

            if (button.isSelected()) {
                return button.getText();
            }
        }

        return "";
    }

    private void btnXacNhanTimActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXacNhanTimActionPerformed
        String hoTenTimKiem = txtHoTen2.getText();
        boolean quaHanSuDung = ckbQuaHanSuDung.isSelected();
        String trangThaiText = getSelectedButtonText(buttonGroupTinhTrang);
        int trangThai;
        switch (trangThaiText) {
            case "Không vi phạm" ->
                trangThai = 0;
            case "Có vi phạm" ->
                trangThai = 1;
            case "Bị khóa" ->
                trangThai = 2;
            default ->
                trangThai = -1;
        }
        if (!(!isEmptyString(hoTenTimKiem) || quaHanSuDung || trangThai != -1)) {
            JOptionPane.showMessageDialog(jDialogTimKiem, "Vui lòng ít nhất 1 điều kiện");
            return;
        }

        NhaXuatBanBUS nhaXuatBanBUS = new NhaXuatBanBUS();
//        nhaXuatBanBUS.findMany(hoTenTimKiem, quaHanSuDung, trangThai);
        setTableItemList(nhaXuatBanBUS);
        jDialogTimKiem.setVisible(false);
    }//GEN-LAST:event_btnXacNhanTimActionPerformed

    private void btnHuyTimKiemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnHuyTimKiemActionPerformed
        setTableItemList();
    }//GEN-LAST:event_btnHuyTimKiemActionPerformed

    private void btnXacNhanThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXacNhanThemActionPerformed
        if (!checkTextField("them")) {
            return;
        }
        int id = MyConnection.getLastRecordId(NhaXuatBanDTO.TABLE_NAME) + 1;
        String sdt = txtDiaChi.getText();
        String diaChi = txtSDT.getText();
        String ten = txtTen.getText();
        NhaXuatBanDTO nhaXuatBanDTO = new NhaXuatBanDTO(id, ten, diaChi, sdt, txtEmail.getText());
        NhaXuatBanBUS nhaXuatBanBUS = new NhaXuatBanBUS();
        nhaXuatBanBUS.insertOne(nhaXuatBanDTO);
        setTableItemList();
        clearAllTextField();
        jDialogThem.setVisible(false);
    }//GEN-LAST:event_btnXacNhanThemActionPerformed

    private void txtEmailActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtEmailActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtEmailActionPerformed

    private void txtTenActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtTenActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtTenActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnHuyTimKiem;
    private javax.swing.JButton btnThem;
    private javax.swing.JButton btnXacNhanSua;
    private javax.swing.JButton btnXacNhanThem;
    private javax.swing.JButton btnXacNhanTim;
    private javax.swing.JButton btnXoa;
    private javax.swing.ButtonGroup buttonGroupTinhTrang;
    private javax.swing.JCheckBox ckbQuaHanSuDung;
    private javax.swing.Box.Filler filler1;
    private javax.swing.Box.Filler filler2;
    private javax.swing.Box.Filler filler3;
    private javax.swing.Box.Filler filler4;
    private javax.swing.Box.Filler filler5;
    private javax.swing.Box.Filler filler6;
    private javax.swing.Box.Filler filler7;
    private javax.swing.JDialog jDialogSua;
    private javax.swing.JDialog jDialogThem;
    private javax.swing.JDialog jDialogTimKiem;
    private javax.swing.JFileChooser jFileChooserExport;
    private javax.swing.JFileChooser jFileChooserImport;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTableNguoiDoc;
    private javax.swing.JRadioButton rbtnBiKhoa;
    private javax.swing.JRadioButton rbtnCoViPham;
    private javax.swing.JRadioButton rbtnKhongViPham;
    private javax.swing.JTextField txtCMND1;
    private javax.swing.JTextField txtDiaChi;
    private javax.swing.JTextField txtDiaChi1;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextField txtHoTen1;
    private javax.swing.JTextField txtHoTen2;
    private javax.swing.JTextField txtID;
    private com.toedter.calendar.JDateChooser txtNgaySinh1;
    private javax.swing.JTextField txtSDT;
    private javax.swing.JTextField txtSDT1;
    private javax.swing.JTextField txtTen;
    // End of variables declaration//GEN-END:variables
}
