-- product tables

-- ���� ī�װ� ���̺�
CREATE TABLE main_ctgr (
    m_ctgr_num NUMBER(2) CONSTRAINT m_ctgr_pk PRIMARY KEY,
    m_ctgr_name VARCHAR2(100),
    m_ctgr_icon_path VARCHAR2(500)
);

-- ���� ī�װ� ���̺�
CREATE TABLE sub_ctgr (
    s_ctgr_num NUMBER(2) CONSTRAINT s_ctgr_pk PRIMARY KEY,
    s_ctgr_name VARCHAR2(100),
    m_ctgr_num NUMBER(2) CONSTRAINT sc_m_ctgr_fk REFERENCES main_ctgr(m_ctgr_num)
);

select * from main_ctgr;
select * from sub_ctgr;
alter table main_ctgr add m_ctgr_icon_path VARCHAR2(500);
alter table sub_ctgr drop column s_ctgr_icon_path;
select prods.* from prods;
select * from prods inner join (select * from main_ctgr inner join sub_ctgr using(m_ctgr_num)) using(s_ctgr_num) where m_ctgr_num =1;



-- ��ǰ ���̺�
CREATE TABLE prods(
    p_num NUMBER(10) CONSTRAINT p_num_pk PRIMARY KEY, -- ��ǰ��ȣ
    p_name VARCHAR2(255),                             -- ��ǰ ��
    p_price NUMBER(10),                               -- ����
    p_material VARCHAR2(255),                         -- ����
    p_info_img_path VARCHAR2(255),                    -- �󼼼��� �̹���
    s_ctgr_num NUMBER(2) CONSTRAINT p_sc_fk REFERENCES sub_ctgr(s_ctgr_num)
);


-- ��ǰ ���� ���̺�
CREATE TABLE prod_colors (
    pc_num NUMBER(10) CONSTRAINT pc_num_pk PRIMARY KEY,
    pc_name VARCHAR2(255),
    pc_code VARCHAR2(255),
    p_num NUMBER(10) CONSTRAINT pc_p_num REFERENCES prods(p_num)
);

-- ��ǰ ������ ���̺�
CREATE TABLE prod_sizes (
    ps_num NUMBER(5) CONSTRAINT ps_num_pk PRIMARY KEY,
    ps_name VARCHAR2(255),
    p_num NUMBER(10) CONSTRAINT ps_p_num REFERENCES prods(p_num)
);

-- ��ǰ ������ ���� ��� ���̺�
CREATE TABLE prod_size_info(
    psi_num NUMBER(10) CONSTRAINT psi_num_pk PRIMARY KEY,
    psi_list_name VARCHAR2(255),
    p_num NUMBER(10) CONSTRAINT psi_p_num_fk REFERENCES prods(p_num)
);

-- ��ǰ �̹��� ���̺�
CREATE TABLE prod_images (
    pi_num NUMBER(10) CONSTRAINT pi_num_pk PRIMARY KEY,
    pi_main_path VARCHAR2(2000),
    pi_thumb_path VARCHAR2(2000),
    p_num NUMBER(10) CONSTRAINT pi_p_num REFERENCES prods(p_num)
);

-- ��ǰ �� ���̺�
CREATE TABLE prod_details (
    pd_num NUMBER(10) CONSTRAINT pd_num_pk PRIMARY KEY,
    p_num NUMBER(10) CONSTRAINT pd_p_num_fk REFERENCES prods(p_num),
    pc_num NUMBER(10) CONSTRAINT pd_pc_num_fk REFERENCES prod_colors(pc_num),
    ps_num NUMBER(5) CONSTRAINT pd_ps_num_fk REFERENCES prod_sizes(ps_num), 
    pi_num NUMBER(10) CONSTRAINT pd_pi_num_fk REFERENCES prod_images(pi_num),
    pd_stock NUMBER(10)
);

-- ��ǰ ������ ���� ��
CREATE TABLE prod_size_info_details(
    psid_num NUMBER(10) CONSTRAINT psid_num_pk PRIMARY KEY,
    psi_num NUMBER(10) CONSTRAINT psid_psi_num_fk REFERENCES prod_size_info(psi_num),
    ps_num NUMBER(10) CONSTRAINT psid_ps_num_fk REFERENCES prod_sizes(ps_num),
    p_num NUMBER(10) CONSTRAINT psid_p_num_fk REFERENCES prods(p_num),
    psid_list_item VARCHAR(50)
);

-- ��ǰ �� ��ȣ ������
CREATE SEQUENCE pd_seq
    INCREMENT BY 1;
-- ��ǰ ��ȣ ������
CREATE SEQUENCE p_seq
    INCREMENT BY 1;
-- ��ǰ ���� ��ȣ ������
CREATE SEQUENCE pc_seq
    INCREMENT BY 1;
-- ��ǰ ������ ��ȣ ������
CREATE SEQUENCE ps_seq
    INCREMENT BY 1;
-- ��ǰ �̹��� ������
CREATE SEQUENCE pi_seq
    INCREMENT BY 1;
-- ��ǰ ������ ���� �� ������
CREATE SEQUENCE psid_seq
    INCREMENT BY 1;
-- ��ǰ ������ ���� ���
CREATE SEQUENCE psi_seq
    INCREMENT BY 1;
    

-- ȸ�� ���̺�

CREATE TABLE members (
    mem_num NUMBER(10) CONSTRAINT m_m_num_pk PRIMARY KEY,
    mem_email VARCHAR2(50),
    mem_pw  VARCHAR2(30),
    mem_nick VARCHAR2(30),
    mem_birth VARCHAR2(6),
    mem_name  VARCHAR2(30),
    mem_phone  VARCHAR2(13),
    mem_note VARCHAR2(1000),
    mem_regdate DATE default sysdate
);

-- ȸ�� �ּ� ���̺�
CREATE TABLE member_addresses (
    mem_num NUMBER(10) CONSTRAINT m_adr_m_num_pk PRIMARY KEY,
    mem_zipcode NUMBER(5),
    mem_addr1 VARCHAR2(2000),
    mem_addr2 VARCHAR2(2000),
    addr_save CHAR(1) default 0
);

-- ȸ����ȣ ������
CREATE SEQUENCE mem_num_seq
    INCREMENT BY 1;

-- ���� ��� ���̺�
CREATE TABLE payments (
    payment_num NUMBER(2) CONSTRAINT pay_pay_num_pk PRIMARY KEY,
    payment_name VARCHAR2(30)
);

-- ������� ��ȣ ������
CREATE SEQUENCE payment_num_seq
    INCREMENT BY 1;

-- ȸ�� Ŀ���͸���¡ ���̺�
CREATE TABLE member_cstms (
    mem_cstm_num NUMBER(10) CONSTRAINT mc_mc_num_pk PRIMARY KEY,
    mem_num NUMBER(10) CONSTRAINT mc_m_num_fk REFERENCES members(mem_num),
    mem_cstm_path VARCHAR2(2000)
);

-- ȸ�� Ŀ���͸���¡ ��ȣ ������
CREATE SEQUENCE mem_cstm_num_seq
    INCREMENT BY 1;

-- �ֹ� ���̺�
CREATE TABLE orders (
    ord_num NUMBER(10) CONSTRAINT o_o_num_pk PRIMARY KEY,
    mem_num NUMBER(10) CONSTRAINT o_m_num_fk REFERENCES members(mem_num),
    ord_date DATE default sysdate,
    ord_zipcode NUMBER(5),
    ord_addr1 VARCHAR2(2000),
    ord_addr2 VARCHAR2(2000),
    receiver_name  VARCHAR2(30),
    receiver_phone VARCHAR2(13),
    total_amount NUMBER(10),
    ord_status VARCHAR2(30) default '���������',
    ord_request VARCHAR2(2000),
    payment_num NUMBER(2) CONSTRAINT o_payment_num_fk REFERENCES payments(payment_num)
);

-- �ֹ���ȣ ������
CREATE SEQUENCE ord_num_seq
    INCREMENT BY 1;


-- �ֹ� �� ���̺�
CREATE TABLE order_details (
    od_num NUMBER(10) CONSTRAINT od_od_num_pk PRIMARY KEY,
    ord_num NUMBER(10) CONSTRAINT od_ord_num_fk REFERENCES orders(ord_num),
    pd_num NUMBER(10) CONSTRAINT od_pd_num_fk REFERENCES prod_details(pd_num),
    mem_cstm_num NUMBER(10) CONSTRAINT od_mem_cstm_num_fk REFERENCES member_cstms(mem_cstm_num),
    od_quantity NUMBER(10),
    od_amount NUMBER(10)
);
-- �ֹ� �� ��ȣ ������
CREATE SEQUENCE od_num_seq
    INCREMENT BY 1;

-- ��ٱ��� ���̺�
CREATE TABLE carts (
    cart_num NUMBER(10) CONSTRAINT cart_cart_num_pk PRIMARY KEY,
    mem_num NUMBER(10) CONSTRAINT cart_mem_num_fk REFERENCES members(mem_num),
    pd_num NUMBER(10) CONSTRAINT cart_pd_num_fk REFERENCES prod_details(pd_num),
    mem_cstm_num NUMBER(10) CONSTRAINT cart_m_cstm_num_fk REFERENCES member_cstms(mem_cstm_num),
    cart_quantity NUMBER(10),
    cart_amount NUMBER(10)
);

-- ��ٱ��� ��ȣ ������
CREATE SEQUENCE cart_num_seq
    INCREMENT BY 1;


-- �����ϴ� ���� ���̺�
CREATE TABLE faqs (
    faq_num NUMBER(10) CONSTRAINT faq_num_pk PRIMARY KEY,
    faq_title VARCHAR2(500),
    faq_content VARCHAR2(3000),
    faq_ctgr NUMBER(1)
);

-- ���� ��ȣ ������
CREATE SEQUENCE faq_num_seq
    INCREMENT BY 1;
    
-- ���� �Խ��� ���̺�
CREATE TABLE contact(
    contact_num NUMBER(10) CONSTRAINT cont_cont_num_pk PRIMARY KEY,
    mem_num NUMBER(10) CONSTRAINT cont_mem_num_fk REFERENCES members(mem_num),
    contact_ctgr NUMBER(1),
    contact_title VARCHAR2(500),
    contact_content VARCHAR2(3000),
    contact_image_path VARCHAR2(500),
    contact_regdate DATE,
    admin_reply VARCHAR2(3000)
);

CREATE SEQUENCE contact_num_seq
    INCREMENT BY 1;


-- ���� ���̺�
CREATE TABLE reviews (
    review_num NUMBER(10) CONSTRAINT rev_num_pk PRIMARY KEY,
    p_num NUMBER(10) CONSTRAINT rev_p_num_fk REFERENCES prods,
    mem_num NUMBER(10) CONSTRAINT rev_m_num_fk REFERENCES members(mem_num),
    review_content VARCHAR2(2000),
    review_image_path VARCHAR2(500),
    review_star NUMBER(1),
    review_regdate DATE
);

CREATE SEQUENCE review_num_seq    INCREMENT BY 1;



DROP TABLE faqs;
DROP TABLE member_addresses;
DROP TABLE members;
DROP TABLE prod_colors;
DROP TABLE prod_details;
DROP TABLE prod_sizes;
DROP TABLE prods;    
DROP TABLE prod_images;