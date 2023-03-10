-- product

-- insert main category
INSERT INTO main_ctgr VALUES(1, '�Ƿ�','assets\common\images\prod_img\admin.png');
INSERT INTO main_ctgr VALUES(2, '�����̽�','assets\common\images\prod_img\admin.png');
INSERT INTO main_ctgr VALUES(3, 'Ȩ����','assets\common\images\prod_img\admin.png');
INSERT INTO main_ctgr VALUES(4, '����','assets\common\images\prod_img\admin.png');


-- insert sub category
-- clothes
INSERT INTO sub_ctgr VALUES(1,'�ĵ�Ƽ',1);
INSERT INTO sub_ctgr VALUES(2,'������',1);
INSERT INTO sub_ctgr VALUES(3,'����Ƽ',1);

-- phone case
INSERT INTO sub_ctgr VALUES(4,'������',2);
INSERT INTO sub_ctgr VALUES(5,'������',2);

-- home deco
INSERT INTO sub_ctgr VALUES(6,'�����',3);
INSERT INTO sub_ctgr VALUES(7,'�ӱ���',3);
INSERT INTO sub_ctgr VALUES(8,'�Һ�',3);

-- photo frame
INSERT INTO sub_ctgr VALUES(9,'��Ƽ� ����',4);
INSERT INTO sub_ctgr VALUES(10,'HD ��Ż����',4);
INSERT INTO sub_ctgr VALUES(11,'����Ÿ��',4);
SELECT * FROM sub_ctgr;

-- colors example
--'RED', '#FF0000'
--'BLUE', '#0000FF'
--'GREEN', '#00FF00'
--'YELLOW', '#FFFF00'
--'PURPLE', '#800080'
--'BLACK', '#000000'
--'WHITE', '#FFFFFF'

-- insert prod
-- clothes
INSERT INTO prods VALUES(p_seq.nextval,'���� ����Ʈ �ĵ�����',29200,'��ư 100%','resources\assets\common\images\prod_img\admin.png',1);            -- 1. ��ǰ ���̺� insert
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'RED', '#FF0000',p_seq.currval );      -- 2. ��ǰ ���� �߰� , p_num ������ currval insert 
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLUE', '#0000FF',p_seq.currval );
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'GREEN', '#00FF00' ,p_seq.currval);

INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'S', p_seq.currval);                    -- 3. ��ǰ ������ �߰�, p_num ������ currval insert
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'M', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'L', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'XL', p_seq.currval);

INSERT INTO prod_size_info VALUES(psi_seq.nextval, '�ѱ���', p_seq.currval);
INSERT INTO prod_size_info VALUES(psi_seq.nextval, '�������', p_seq.currval);
INSERT INTO prod_size_info VALUES(psi_seq.nextval, '�����ѷ�', p_seq.currval);
INSERT INTO prod_size_info VALUES(psi_seq.nextval, '�Ҹű���', p_seq.currval);

INSERT INTO prod_images VALUES(pi_seq.nextval, 'main_image_path'||p_seq.currval,'sub_image_path'|| p_seq.currval, p_seq.currval ); -- 4. ��ǰ �̹��� �߰�

INSERT INTO prods VALUES(p_seq.nextval,'�÷���82������ ��� 3���޸� �ĵ�',27900,'��ư 100%','resources\assets\common\images\prod_img\admin.png',1);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'RED', '#FF0000',p_seq.currval );
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLUE', '#0000FF' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'GREEN', '#00FF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'YELLOW', '#FFFF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'PURPLE', '#800080' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLACK', '#000000' ,p_seq.currval);

INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'S', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'M', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'L', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'XL', p_seq.currval);

INSERT INTO prod_images VALUES(pi_seq.nextval, 'main_image_path'||p_seq.currval,'sub_image_path'|| p_seq.currval, p_seq.currval );

INSERT INTO prods VALUES(p_seq.nextval,'����Ʈ��Ÿ ��� ������',22900,'��ư 100',2);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'RED', '#FF0000',p_seq.currval );
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLUE', '#0000FF' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'GREEN', '#00FF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'YELLOW', '#FFFF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'PURPLE', '#800080' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLACK', '#000000' ,p_seq.currval);

INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'S', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'M', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'L', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'XL', p_seq.currval);

INSERT INTO prod_images VALUES(pi_seq.nextval, 'main_image_path'||p_seq.currval,'sub_image_path'|| p_seq.currval, p_seq.currval );

INSERT INTO prods VALUES(p_seq.nextval,'Ʈ���ÿ��� 1301 ��Ʈ�� Ƽ����',9900, '�� 100% (���� �׷���: ��60%����������40%)','resources\assets\common\images\prod_img\admin.png',3);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'RED', '#FF0000',p_seq.currval );
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLUE', '#0000FF' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'GREEN', '#00FF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'YELLOW', '#FFFF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'PURPLE', '#800080' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLACK', '#000000' ,p_seq.currval);

INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'S', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'M', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'L', p_seq.currval);
INSERT INTO prod_sizes VALUES(ps_seq.nextval, 'XL', p_seq.currval);

INSERT INTO prod_images VALUES(pi_seq.nextval, 'main_image_path'||p_seq.currval,'sub_image_path'|| p_seq.currval, p_seq.currval );

-- phone case
INSERT INTO prods VALUES(p_seq.nextval,'������ 14 �������̽�', 15300,'TPU(�����췹ź)','resources\assets\common\images\prod_img\admin.png',4);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLUE', '#0000FF' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'GREEN', '#00FF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'YELLOW', '#FFFF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'PURPLE', '#800080' ,p_seq.currval);

INSERT INTO prod_sizes VALUES(ps_seq.nextval, '������14', p_seq.currval);

INSERT INTO prod_images VALUES(pi_seq.nextval, 'main_image_path'||p_seq.currval,'sub_image_path'|| p_seq.currval, p_seq.currval );

INSERT INTO prods VALUES(p_seq.nextval,'������ 13 �������̽�', 18900,'�� - ����ī������Ʈ, �� - �Ǹ���','resources\assets\common\images\prod_img\admin.png',4);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLUE', '#0000FF' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'GREEN', '#00FF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'YELLOW', '#FFFF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'PURPLE', '#800080' ,p_seq.currval);

INSERT INTO prod_sizes VALUES(ps_seq.nextval, '������13', p_seq.currval);

INSERT INTO prod_images VALUES(pi_seq.nextval, 'main_image_path'||p_seq.currval,'sub_image_path'|| p_seq.currval, p_seq.currval );


INSERT INTO prods VALUES(p_seq.nextval,'������ Z �ø�4 �ϵ����̽�', 15300, '����ī������Ʈ', 'resources\assets\common\images\prod_img\admin.png',5);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLUE', '#0000FF' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'GREEN', '#00FF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'YELLOW', '#FFFF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'PURPLE', '#800080' ,p_seq.currval);

INSERT INTO prod_sizes VALUES(ps_seq.nextval, '������Z �ø�4', p_seq.currval);

INSERT INTO prod_images VALUES(pi_seq.nextval, 'main_image_path'||p_seq.currval,'sub_image_path'|| p_seq.currval, p_seq.currval );



INSERT INTO prods VALUES(p_seq.nextval,'������ S22 ��Ʈ�� �ϵ����̽�' , 15300, '����ī������Ʈ','resources\assets\common\images\prod_img\admin.png', 5);

INSERT INTO prod_colors VALUES(pc_seq.nextval, 'BLUE', '#0000FF' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'GREEN', '#00FF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'YELLOW', '#FFFF00' ,p_seq.currval);
INSERT INTO prod_colors VALUES(pc_seq.nextval, 'PURPLE', '#800080' ,p_seq.currval);

INSERT INTO prod_sizes VALUES(ps_seq.nextval, '������ S22 ��Ʈ��', p_seq.currval);

INSERT INTO prod_images VALUES(pi_seq.nextval, 'main_image_path'||p_seq.currval,'sub_image_path'|| p_seq.currval, p_seq.currval );



SELECT * FROM prods;
SELECT * FROM prod_colors;
SELECT * FROM prod_sizes;
SELECT * FROM prod_details;
SELECT * FROM prod_images;

-- insert prod details      -- prod details �κ� select ������ insert
INSERT INTO 
prod_details
SELECT 
pd_seq.nextval as pd_num,
p.p_num as p_num,
pc.pc_num as pc_num, 
ps.ps_num as ps_num,
pi.pi_num as pi_num,
10 as p_stock
FROM 
prods p, 
prod_colors pc,
prod_sizes ps,
prod_images pi
WHERE 
p.p_num = pc.p_num
AND p.p_num = ps.p_num
AND p.p_num = pi.p_num;

-- join table main_ctgr, sub_ctgr, prods, prod_colors, prod_sizes, prod_images, prod_details
SELECT 
    mc.m_ctgr_name,
    sc.s_ctgr_name,
    pd.pd_num,
    p.p_num,
    p.p_name,
    pc.pc_name,
    ps.ps_name,
    p.p_price,
    pi.pi_main_path,
    pi.pi_thumb_path
FROM prod_details pd, prods p, sub_ctgr sc, main_ctgr mc, prod_colors pc, prod_sizes ps, prod_images pi
WHERE 
    pd.p_num = p.p_num
    AND p.s_ctgr_num = sc.s_ctgr_num
    AND sc.m_ctgr_num = mc.m_ctgr_num
    AND pd.pc_num = pc.pc_num
    AND pd.ps_num = ps.ps_num
    AND pd.pi_num = pi.pi_num
ORDER BY pd_num;
    
SELECT * FROM 
    prod_details pd
JOIN
    prods p
ON
    pd.p_num = p.p_num
JOIN
    prod_images pi
ON
    pi.pi_num = pd.pi_num
JOIN
    prod_colors pc
ON
    pc.pc_num = pd.pc_num
JOIN
    sub_ctgr sc
ON
    p.s_ctgr_num = sc.s_ctgr_num
JOIN
    main_ctgr mc
ON 
    sc.m_ctgr_num = mc.m_ctgr_num
WHERE
    m_ctgr_name = '�Ƿ�' AND s_ctgr_name = '�ĵ�Ƽ';
    
SELECT * FROM prods p, sub_ctgr sc , main_ctgr mc WHERE p.s_ctgr_num = sc.s_ctgr_num AND sc.m_ctgr_num = mc.m_ctgr_num AND m_ctgr_name = '�Ƿ�' ORDER BY p_num;


-- members

INSERT INTO members VALUES(mem_num_seq.nextval, 'duhaduha@naver.com', 1234, '�Ѻ����', '560204','�̵���','010-2006-5975',null,default);
INSERT INTO member_addresses VALUES(mem_num_seq.currval, default,default,default,default);
UPDATE member_addresses SET mem_zipcode = 12345, mem_addr1 = '��⵵ ������', mem_addr2 = '������ǻ�� 4��', addr_save = '1' WHERE mem_num = 1;

-- insert faq
-- ī�װ� = 0; �ֹ�/����
INSERT INTO faqs VALUES(faq_num_seq.nextval, '��ȸ���� �ֹ��� �����Ѱ���?',
'������ ��ǰ�� 100% �ֹ� �������� ��������Ƿ�,
���� ��Ȯ�� �ǰ� �ݿ��� ���� ȸ���� ��쿡�� �ֹ��Ͻ� �� �ֵ��� �ϰ� �ֽ��ϴ�.

ȸ�������� �����̸�, ������ ȸ���� �ǽø� ���� �̺�Ʈ ����, ����Ʈ ���� �� �پ��� ������ �����˴ϴ�.',0);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '�ֹ� ���� ������ �ñ��մϴ�.',
'����� �������� �����Ǿ� ����, ��۵Ǳ���� ������ ���������� �ּ��� ���ϰ� �ֽ��ϴ�.',0);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '�ֹ� ������ Ȯ���ϰ� �;��.',
'�ֹ� ������ ���������� �Ϸ�Ǹ� �̸��ϰ� ����ó�� �ֹ� �Ϸ� ���ڰ� ���۵˴ϴ�.
���� ���� ������Ʈ [����������] �� [�ֹ����� / �����ȸ] ������ �ֹ������� Ȯ���Ͻ� �� �ֽ��ϴ�.',0);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '�ֹ��ϰ� ��ǰ�� �ޱ���� �󸶳� �ɸ�����?',
'��ǰ���� ���� �Ⱓ�� �ٸ� �� �ִ� �� ���� ��Ź�帳�ϴ�.

���� �Ϸ� �� ������ ����(�ָ� / ������ ����) 3~7�� ���� �ҿ�˴ϴ�.
�뷮 �ֹ� ���� ��� ������ ����(�ָ� / ������ ����) 7~10�� ���� �ҿ�� �� �ֽ��ϴ�.

�ù��� ��ǰ ��� �� ������ ���� 1~2�� �̳� ���� �����մϴ�.
��, ���� �갣 ���� �� �ش� ������ �ù�� ������ ���� �Ⱓ�� �� �� �ҿ�� �� �ֽ��ϴ�.',0);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '�ֹ��� ���� ���´� ��� �� �� �ֳ���?',
'[����������] �� [�ֹ� / �����ȸ] ���� Ȯ�� �����մϴ�.

�ֹ� ���� : �ֹ��� ������ ���Ա�(������) ���·� 7�� �̳� �̰��� �� �ֹ��� �ڵ����� ��ҵ˴ϴ�.
���� �غ� �� : ������ �Ϸ�Ǿ�����, ������ ���� ����� �������Դϴ�.
���� �� : ������ �����մϴ�. �� �ܰ���ʹ� ������ ���� �� ��� ��û�� �Ұ��մϴ�
���� �Ϸ� : ���� �Ϸ��� ��, �˼� �� ������ �����մϴ�.
��� �Ϸ� : �ֹ��Ͻ� ��ǰ�� �ù��� ���޵� ���·� ����� ��ȣ�� ���ڷ� �߼۵˴ϴ�.
��� ���������� �����ȣ ��ȸ�� ���� ��� ��Ȳ�� Ȯ�� �����մϴ�.

���� ���� �� �� ��� ��û �� ��� �Ϸ� ���¿��� ���Բ� ���� �� ���� ���� ���¸� �ȳ��帳�ϴ�.',0);


-- ī�װ� = 1; ���
INSERT INTO faqs VALUES(faq_num_seq.nextval, '��� Ȯ���� ��� �ϳ���?',
'�α��� �� [����������] �� [�ֹ� / ��� ��ȸ] �޴��� ���� �ֹ� ���� Ȯ�� �� ��� ������ �����մϴ�.',1);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '��ǰ ��� �� ��� �Ⱓ�� ��� �ǳ���?',
'�ù��� ��ǰ ��� �� ������ ���� 1~2�� �̳� ���� �����մϴ�.
��, ���� �갣 ���� �� �ش� ������ �ù�� ������ ���� �Ⱓ�� �� �� �ҿ�� �� �ֽ��ϴ�.',1);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '��� �ù��� �߼۵ǳ���?',
'CJ �ù�縦 ���� �߼۵˴ϴ�.
��� �� ���Բ� ����� ��ȣ�� ���ڷ� �ڵ� �߼۵Ǹ�, [CJ �ù� Ȩ������] �� ���� ����� ��ȸ�� �����մϴ�.
https://www.cjlogistics.com/ko/main

��ǥ��ȣ : 1588-1255',1);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '������ ��ۺ�� ���ΰ���?',
'������ ��ۺ�� �ֹ� �� �� 3,000���̸�, �����갣������ �߰����� �߻��մϴ�.',1);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '���� ����� �����Ѱ���?',
'���� �ֹ� ���� ���Ǳ� ���̶�� �����մϴ�.
�߰� �ֹ� �� �ֹ� ��û ���׿� ���� ����� �����ֽðų�, 1:1 ��� �� ī�� �Ǵ� �� ����(1566-9437)�� �����Ͻø�
Ȯ�� �� ���� ����� �����մϴ�.

��, ���� ����� ��� �߰� �ֹ� ���� ���� �Ϸ� ������ �������� �߼۵Ǳ� ������ ������� �ʾ��� �� ������ �������ּ���.

�̹� ��ǰ�� ���Ǿ��ų�, �߰� �ֹ� �� ��û���׿� ������ ���� ����� ��û���� ���� ��� ���� ����� �Ұ��մϴ�.',1);


-- ī�װ� = 2; ���/ȯ��
INSERT INTO faqs VALUES(faq_num_seq.nextval, '�ֹ� ��Ҹ� �ϰ� �;��.',
'[���� �غ� ��] ���±����� �ֹ���Ұ� ����������, ������ ���۵Ǵ� [���� ��] ���Ŀ��� �ֹ� ��Ұ� �Ұ����մϴ�.

���� ������Ʈ�� �ֹ����� �Ǵ� 1:1 ��� �� ī��, ������(1566-9437)�� ���� �ֹ� ��Ұ� �����մϴ�.',2);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '�ֹ��� �κ� ��Ҹ� �ϰ� �ͽ��ϴ�.',
'�ֹ� �Ϸ� �� �ֹ��� �Ϻθ� ����ϴ� ���� �Ұ��մϴ�.',2);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '�ֹ� ��� ������ ��� Ȯ���� �� �ֳ���?',
'�α��� �� [����������] �� ���� �ֹ� ��� ������ Ȯ���Ͻ� �� �ֽ��ϴ�.',2);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '���� �� ��� �� ȯ���� �󸶳� �ɸ�����?',
'���� ����� ���� ȯ�� ó�� �Ⱓ�� �ٸ��ϴ�.

������ �Ա� : ��� ������ ���� ���� ���� ȯ���� �Ϸ�˴ϴ�.
ī�� ���� �� �ǽð� ������ü : PG ���� ������ �ʿ��ϹǷ�, ��� ������ �������� �ָ� /������ ���� 3~7�� ���� �ҿ�� �� �ֽ��ϴ�.',2);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '�Ա��ڸ�� �ٸ� ������ ���·� ȯ�� ���� �� �ֳ���?',
'�ٸ� ���Ƿ��� ȯ���� ������, �ֹ� �� ����ϼ̴� �Ա��ڸ��� ���·θ� ȯ���� �����մϴ�.',2);
INSERT INTO faqs VALUES(faq_num_seq.nextval, 'ȯ�ҹ��� �ݾ��� ���� ����Ʈ�� ������ �� �ֳ���?',
'��. �����մϴ�.

������ �Ա��̳� �ǽð� ��ü�� �����Ͻ� ��� ȯ�ҹ��� �ݾ��� ����Ʈ�� ������ �� �ֽ��ϴ�.
�ſ�ī�� ���� �� �κ� ����� ��쿡�� ������ �������� �����޴� ��� ����Ʈ�� ������ �� �ֽ��ϴ�.
��ü ��� �Ǵ� �κ� ����� ��쿡�� ����Ʈ�� ������ �����մϴ�.',2);


-- ī�װ� = 3; ��ǰ/��ȯ
INSERT INTO faqs VALUES(faq_num_seq.nextval, '�ֹ� ������ ��ǰ�� ��ȯ / ��ǰ�� �� �� �ֳ���?',
'������ �ֹ� ���� ��ǰ�� �� �ֹ��� ���� ���� ���۵Ǵ� ��ǰ���� ���ǸŰ� �Ұ��ϹǷ�, ���ɿ� ���� ��ȯ / ��ǰ�� �Ұ����մϴ�.

��ǰ�� ������ �ִ� ��� ���� �� 7�� �̳��� 1:1 ��� �� ī�� �Ǵ� �� ����(1566-9437)�� ������ �Բ� ���� ��û�� �� �ֽø� CJ �ù�� �ݼ� ������ �����մϴ�.

�ֹ��ϼ̴� ��ǰ�� �ƴ� �ٸ� ��ǰ������ ��ȯ / ��ǰ�� �Ұ��մϴ�.
���� ��ǰ, ���� ������, ������ �������� ������ �� AS�� �����ϸ�, �̶� �߻��Ǵ� ��ۺ�� ���ÿ��� �δ��մϴ�.',3);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '���� ������ �ֹ��� ��ǰ�� ��ȯ / ��ǰ�� �� �� �ֳ���?',
'ȭ��Ʈ ������ ���� ��ǰ�� ���� Ư���� ���ɿ� ���� ��ȯ / ��ǰ�� �Ұ��մϴ�.

���� ����, ��Ź ����, ����, ����, ���� ���� ���� ���� �ִ� ��� ��ȯ / ��ǰ�� �Ұ��մϴ�.

��ǰ ���� �� 7�� �̳��� 1:1 ��� �� ī�� �Ǵ� �� ����(1566-9437)�� ��ȯ �Ǵ� ��ǰ �ǻ縦 �������ּž� �����մϴ�.',3);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '��ǰ ����� ���ΰ���?',
'���� ��ǰ�� �ܼ� ���� ��ȯ / ��ǰ �� �պ� ��ۺ� 5,000���� �ΰ��˴ϴ�.
(��ǰ : �ʵ� ��ۺ� + �ݼ� ��ۺ� / ��ȯ : �ݼ� ��ۺ� + ���ۺ�)

�������� ��쿡�� ��ȯ / ��ǰ �ÿ��� �պ� ��ۺ� �ΰ��˴ϴ�.
��ǰ�� ����, ����� ������ ���� ��ȯ / ��ǰ�� ��ۺ� ������ ���ÿ��� �δ��մϴ�.
CJ �ù谡 �ƴ� Ÿ �ù�縦 ���� �ݼ��� ��� �ù�� ���ҷ� ���� �� �����ּž� �մϴ�.
���Ƿ� ���ҷ� �����ֽ� ���, ���������� ������ �Ұ��ϸ� �ݼ۵� �� �ִ� �� ���� ��Ź�帳�ϴ�.',3);
INSERT INTO faqs VALUES(faq_num_seq.nextval, '��ǰ �ּ����� ��� �ǳ���?',
'���� ��õ�� ���������1�� 75-24 ���̿�������Ÿ�� 10�� (��)�������۷��̼�
������: 1566-9437',3);
INSERT INTO faqs VALUES(faq_num_seq.nextval, 'û�� öȸ �ȳ�',
'����Ȯ���� ������ ���� ������ 7�� �̳����� û���� öȸ�� �� �� �ֽ��ϴ�.

[������ ���]

���� ��ǰ�� ������ �ִ� ���, �Ǹ����� �Ǽ��� ���� ��ȯ, ��ǰ�� �ʿ��� ���
(��ǰ�� �ҷ��� ��� ���� ��ǰ, ���� ������, ������ �������� ��ȯ �� ȯ���� �����մϴ�.)

[�Ұ����� ���]

�ֹ� ���� ��ǰ�� ��� �ٸ� ������ ���ǸŰ� �Ұ����ϱ� ������ �ܼ� �������� ���� û�� öȸ�� �Ұ����մϴ�.
���� ��ǰ�� ��� ���� ����, ��Ź ����, ����, ����, ���� ���� ���� �� ��ǰ�� �Ѽյ� ���
(�ٸ�, ������ Ȯ���ϱ� ���Ͽ� ���� ���� �Ѽ��� ��쿡�� û��öȸ�� �����մϴ�.)
�ð��� ����� ���Ͽ� ���ǸŰ� ����� ������ ��ǰ�� ��ġ�� ������ ������ ���
û�� öȸ�� ������ ��쿡 �ش�Ǿ ���� �����ͷ� ��ȯ / ��ǰ ���� �� 7�� �̳��� ��ǰ�� �����ؾ� �մϴ�.
���� ��ǰ�� �ܼ� ���ɿ� ���� ��ȯ / ��ǰ�� ���Բ��� �ù� ��� ������ �δ��� �ּž� �ϸ�, ��ǰ �ÿ��� CJ �ù踦 �̿����ּž� �մϴ�.
Ÿ �ù踦 �̿��ؼ� �ݼ��Ͻô� ��� �ù�� ���ҷ� �������ּž� �ϸ� ���ҷ� �ݼ��Ͻ� �ù�� ���������� ���� ó������ �ʽ��ϴ�.

�Һ��� ���� ������ ó�� �� ��ǰ ����ó
���� ������: 1566-9437
A/S �� �Һ��� ����: 0502-707-8888',3);
INSERT INTO faqs VALUES(faq_num_seq.nextval, 'ǰ�� ���� ���� �ȳ�',
'�� ��ǰ�� ö���� ǰ�������� ���������� ���� ����Ǿ����� �ܰ�, �԰�, ���� �˻翡�� �հ��� ��ǰ�Դϴ�.
�� ��ǰ�� ������ �����Ű�� ���Ͽ� ��ǰ�� ������ ��� ���ǻ��װ� ��Ź ����� ���� Ȯ�����ֽñ� �ٶ��ϴ�.
�� ��ǰ�� ǰ���� �̻��� ���� ��� �Һ��� ���Ƿ� ���� �ֽñ� �ٶ��ϴ�.
�� ��ǰ�� ǰ���� �̻��� ���� ��� ��ǰ �����Ϸκ��� 7�� �̳� ��ǰ/ȯ�� �����մϴ�.',3);


-- ī�װ� = 4; ��Ÿ

INSERT INTO faqs VALUES(faq_num_seq.nextval, 'ȸ�� ���� �� ��� ������ �ֳ���?',
'������ ȸ�������� �����̸�,
ȸ������ �����ϴ� ��� ���� ����Ʈ, ���� ����, ���ϸ� ����(���� ���� ������, �α� �ִ� ������, ���γ��� �⺻ ��ǰ �� ������ ���ο� �ҽ�) �� �̺�Ʈ ���� �� ȸ������ ��� ���� ������ ���� �پ��� ���񽺸� �����մϴ�.',4);

INSERT INTO faqs VALUES(faq_num_seq.nextval, 'ȸ�� ���Կ� ���� ������ �ֳ���?','������ �������� ��޹�ħ�� ���� �� 14�� �̻� ȸ�� ������ �����մϴ�.',4);

INSERT INTO faqs VALUES(faq_num_seq.nextval, '���� ���̵��� ������ ��ġ�� �;��.','���� ���Ƕ�� �ص� ID(�̸���)���� ������ �νĵǾ� ����(����Ʈ �� �ֹ� ����)�� ������ �Ұ��մϴ�.',4);

INSERT INTO faqs VALUES(faq_num_seq.nextval, 'ȸ�� ������ �����ϰ� �;��.','[����������] �� [ȸ������] �� [���� ���� �����ϱ�] ���� ���� �����մϴ�.',4);

INSERT INTO faqs VALUES(faq_num_seq.nextval, 'ȸ�� ���̵�� ��й�ȣ ������ �����Ѱ���?','���̵�(�̸���)�� ��й�ȣ�� �α��� �� [ȸ�� ���� ����] �� ���� ���� �����մϴ�.',4);

-- ī�װ� = 5; ���۹���

INSERT INTO faqs VALUES(faq_num_seq.nextval, '��ǰ ���� �Ⱓ�� ��� �ǳ���?',
'��ǰ���� ���� �Ⱓ�� �ٸ� �� �ִ� �� ���� ��Ź�帳�ϴ�.

��������� ���� �Ϸ� �� ������ ����(�ָ�/������ ����) 3~7�� ���� �ҿ�˴ϴ�.
�뷮 �ֹ� ���� ��� ������ ����(�ָ�/������ ����) 7~10�� ���� �ҿ�� �� �ֽ��ϴ�.',5);

INSERT INTO faqs VALUES(faq_num_seq.nextval, '1�� �Ǵ� �ҷ��� ���� �����Ѱ���?',
'������ �ֹ� ����(Print-On-Demand) ������� ��� ��ǰ�� 1����� ���� ����Ƽ�� �ҷ� ������ �����մϴ�.',5);

INSERT INTO faqs VALUES(faq_num_seq.nextval, '���� ���� �̹����� ��ǰ ������ �����Ѱ���?',
'��. �����մϴ�.
���� ������ �̹��� ������ �ִٸ� [���Ͻô� ��ǰ Ŭ��] - [�� �̹��� �ֱ�] ? [�� �̹��� ���ε��ϱ�] ���� JPG, PNG, AI ������ ������ ���ε� �� �ֹ� �����ϸ�, �� �� ������ ����� �����ϴ� [�ٹ̱� ������] �� ���� �پ��� �̹����� ������ �����մϴ�.',5);

INSERT INTO faqs VALUES(faq_num_seq.nextval, '�� ���������� � ��ǰ�� ���� �� �ֳ���?',
'�����ε� ������Ƽ�� �پ��� ��ǰ���� �߰��� �����Դϴ�.
�پ��� ��ǰ�� ������ �������� ���� ���� �� �ϳ����� ��ǰ�� ����� ������.',5);

INSERT INTO faqs VALUES(faq_num_seq.nextval, '���ͳݿ� �ִ� �̹����� ������ �� �ֳ���?',
'�̹����� ���۱��� �Ǵ� �����ڰ� �������� �� �� �ִ� �̹������ ����߰ų�, ���۱��� ����� �̹����� ���� ����� �����մϴ�.

�� ���� ��� ���� �������� ���ֵǾ� ���۱ǹ� ���� ���׿� �ǰ� ó������ �� �ֽ��ϴ�.',5);


-- ī�װ� = 6; ��ü����
INSERT INTO faqs VALUES(faq_num_seq.nextval, '���� ���� �ֹ�(��ü ����) �� ��� ������ ������ ��� �ǳ���?',
'������ �ּ� 5����� ������ ����˴ϴ�.

�������� ����
������ ��ǰ(��ǰ�� ����� �÷��� �޶� ����)
������ ������, ������ �μ�ũ��, ������ �μ���ġ, ������ �μ����

��ü���� ������ Ȯ��

https://www.marpple.com/kr/group

��Ÿ �߰� ���� ���� ���Ǵ� 1:1 ���� ī��, ������(1566-9437) �Ǵ� help@marpple.com �� ���� ���� ��Ź�帳�ϴ�.',6);

INSERT INTO faqs VALUES(faq_num_seq.nextval, '��ü ������ ��� ��ǰ�� �ޱ� ���� �󸶳� �ɸ�����?',
'��ǰ���� ���� �Ⱓ�� �ٸ� �� �ִ� �� ���� ��Ź�帳�ϴ�.

�뷮 �ֹ� ���� ��� ������ ����(�ָ� / ������ ����) 5~7�� ���� �ҿ�� �� �ֽ��ϴ�.

�ù��� ��ǰ ��� �� ������ ���� 1~2�� �̳� ���� �����մϴ�.
��, ���� �갣 ���� �� �ش� ������ �ù�� ������ ���� �Ⱓ�� �� �� �ҿ�� �� �ֽ��ϴ�.',6);

INSERT INTO faqs VALUES(faq_num_seq.nextval, '��ü ���� �� �� ��(�� ��)�� ���� �μ��� �� �� �ֳ���?',
'�����մϴ�.
���� �Ϸ� ��, �� ��(�� ��)�� �� ���� �� ���԰� ���� �� �� ��ǰ ���� �����մϴ�.

�ڼ��� ���Ǵ� 1:1 ��� �� ī��, ������(1566-9437) �Ǵ� help@marpple.com�� ���� Ȯ�� ��Ź�帳�ϴ�.',6);

INSERT INTO faqs VALUES(faq_num_seq.nextval, '��ü �ֹ� �� ���� ����� �����Ѱ���?',
'�����մϴ�.

�ֹ� �� ���� ��� ���� ��, �ֹ� �ֽø� Ȯ�� �� ������ ������� �ȳ��帮�� �ֽ��ϴ�.
��, ���� ��� �� �� ��������� 3,000���� ��ۺ� �ΰ��˴ϴ�.

�ڼ��� ���Ǵ� 1:1 ��� �� ī��, ������(1566-9437) �Ǵ� help@marpple.com�� ���� Ȯ�� ��Ź�帳�ϴ�.',6);

INSERT INTO faqs VALUES(faq_num_seq.nextval, '��ü �ֹ� �� ���� ������ �����Ѱ���?',
'���� �� ������ ���� ���� �� �� �ֽ��ϴ�.

�ڼ��� ���Ǵ� 1:1 ��� �� ī��, ������(1566-9437) �Ǵ� help@marpple.com�� ���� Ȯ�� ��Ź�帳�ϴ�.',6);





SELECT * FROM faqs;
DELETE faqs WHERE faq_ctgr = 3;
