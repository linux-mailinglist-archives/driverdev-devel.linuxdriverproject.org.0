Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 530342251B5
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 13:43:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1596086919;
	Sun, 19 Jul 2020 11:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B9Be-Eh0csb9; Sun, 19 Jul 2020 11:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06EBC8671A;
	Sun, 19 Jul 2020 11:43:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 071921BF46A
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 035AC87B21
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fL88YKT1ZOdk for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 11:43:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 805F287B20
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 11:43:45 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id l2so22536275wmf.0
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 04:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HVbOi1vQrXP1mK/8athz7XOaGLAKY5Fyn159m+K3wCY=;
 b=PFiPbtvBLUROL05/453a4OZfrle4tDTWLl3jM34hhv6Nv9WS/eJU8Ic2Tl+NwjfRp/
 kFp7brt0LOA9Rp318nObPhnrkvJfSM/+HEJn/KS3RHMmEo/PhErs/pShz4ghLtiwJjbO
 r3kViLDkoafyw7RwjdsU7+Jazpss6/NNW7J8sGs082WAUu5zFyB06BXTmv/5P5zIZ24K
 0yRL1K8cmgN3HOKGhH8JOQ+cdElD4g9ydn5Oz/btadcSOAWrgGwo/W7XyVfpPOy780oC
 iYLar0VYx5FwxdJ3kcgFgDQJVmDRR2uIscErpC5gvdB7YEFvgcnm9HMar8lDfK8j3fXB
 TQ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HVbOi1vQrXP1mK/8athz7XOaGLAKY5Fyn159m+K3wCY=;
 b=g16afWLJNEm8P+AS/6m7SDmd0GWMvTjp3sG1biKk5ZKLuZdgj9SOc8r6QAa17xJrde
 AHZMlZ70XxWe+gFF/HFRF62e0k3wEX71NLGFqZUke8chUvb8PJfxSKqel9+K0t5EGGlp
 zPSV3M8TpTgGDOg8Fx6wi0OiIrBf0q6ywufK7R1KIfV5iR6hKJcHm7aBcef99JnS7sDO
 1vSB5IAu5Jhhed5uCegAWtI1u3Rq3UmML8vBky3aODc/uMGzl/Ar3E+dH7DTbCGOyjPF
 /na1e4uiA2Yx7MmAjZW5aNKhr7k+RFOMz8fxtYmXYpUPGyzb/BksbciWHtmWBkPmCP5R
 iJCQ==
X-Gm-Message-State: AOAM533wPB8W3TPyuulq3j07DiDby5H5GFAJAIaTB6+6l9vihF3muKCx
 mA2LoxnTqXj3b5weF01G+Ds=
X-Google-Smtp-Source: ABdhPJxr5FkUs8q4rmlfBcHSIlIA9zwhcOCgMnU2+lw7dXJ2HCdgnq5HkHlJRo/TV046LWx/VWjeAg==
X-Received: by 2002:a1c:1d93:: with SMTP id d141mr16613389wmd.14.1595159023724; 
 Sun, 19 Jul 2020 04:43:43 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-192.178.006.pools.vodafone-ip.de. [178.6.252.192])
 by smtp.gmail.com with ESMTPSA id 129sm25720101wmd.48.2020.07.19.04.43.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Jul 2020 04:43:43 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: add spaces around operators in header
 files
Date: Sun, 19 Jul 2020 13:40:45 +0200
Message-Id: <20200719114045.13595-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add spaces around operators in the header files to improve readability
and clear checkpatch issues.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../rtl8188eu/include/hal8188e_rate_adaptive.h       |  4 ++--
 drivers/staging/rtl8188eu/include/odm_types.h        |  6 +++---
 drivers/staging/rtl8188eu/include/rtl8188e_hal.h     | 12 ++++++------
 drivers/staging/rtl8188eu/include/rtw_efuse.h        |  2 +-
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h      |  2 +-
 drivers/staging/rtl8188eu/include/rtw_recv.h         |  2 +-
 drivers/staging/rtl8188eu/include/rtw_security.h     | 10 +++++-----
 drivers/staging/rtl8188eu/include/rtw_xmit.h         | 12 ++++++------
 drivers/staging/rtl8188eu/include/wifi.h             |  2 +-
 drivers/staging/rtl8188eu/include/wlan_bssdef.h      |  2 +-
 10 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h b/drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h
index 79c0d2f9961e..646647feae85 100644
--- a/drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h
+++ b/drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h
@@ -28,9 +28,9 @@
 #define GET_TX_RPT2_DESC_PKT_LEN_88E(__pRxStatusDesc)		\
 	LE_BITS_TO_4BYTE(__pRxStatusDesc, 0, 9)
 #define GET_TX_RPT2_DESC_MACID_VALID_1_88E(__pRxStatusDesc)	\
-	LE_BITS_TO_4BYTE(__pRxStatusDesc+16, 0, 32)
+	LE_BITS_TO_4BYTE(__pRxStatusDesc + 16, 0, 32)
 #define GET_TX_RPT2_DESC_MACID_VALID_2_88E(__pRxStatusDesc)	\
-	LE_BITS_TO_4BYTE(__pRxStatusDesc+20, 0, 32)
+	LE_BITS_TO_4BYTE(__pRxStatusDesc + 20, 0, 32)
 
 #define GET_TX_REPORT_TYPE1_RERTY_0(__pAddr)			\
 	LE_BITS_TO_4BYTE(__pAddr, 0, 16)
diff --git a/drivers/staging/rtl8188eu/include/odm_types.h b/drivers/staging/rtl8188eu/include/odm_types.h
index 7255f7afff7a..2b207f09b56b 100644
--- a/drivers/staging/rtl8188eu/include/odm_types.h
+++ b/drivers/staging/rtl8188eu/include/odm_types.h
@@ -15,10 +15,10 @@ enum HAL_STATUS {
 };
 
 #define SET_TX_DESC_ANTSEL_A_88E(__pTxDesc, __Value)			\
-	SET_BITS_TO_LE_4BYTE(__pTxDesc+8, 24, 1, __Value)
+	SET_BITS_TO_LE_4BYTE(__pTxDesc + 8, 24, 1, __Value)
 #define SET_TX_DESC_ANTSEL_B_88E(__pTxDesc, __Value)			\
-	SET_BITS_TO_LE_4BYTE(__pTxDesc+8, 25, 1, __Value)
+	SET_BITS_TO_LE_4BYTE(__pTxDesc + 8, 25, 1, __Value)
 #define SET_TX_DESC_ANTSEL_C_88E(__pTxDesc, __Value)			\
-	SET_BITS_TO_LE_4BYTE(__pTxDesc+28, 29, 1, __Value)
+	SET_BITS_TO_LE_4BYTE(__pTxDesc + 28, 29, 1, __Value)
 
 #endif /*  __ODM_TYPES_H__ */
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
index b1e73503a2c2..6035c12ec578 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
@@ -45,7 +45,7 @@
 #define Rtl8188E_NIC_LPS_LEAVE_FLOW		rtl8188E_leave_lps_flow
 
 #define DRVINFO_SZ	4 /*  unit is 8bytes */
-#define PageNum_128(_Len)	(u32)(((_Len)>>7) + ((_Len) & 0x7F ? 1 : 0))
+#define PageNum_128(_Len)	(u32)(((_Len) >> 7) + ((_Len) & 0x7F ? 1 : 0))
 
 /*  download firmware related data structure */
 #define FW_8188E_SIZE			0x4000 /* 16384,16k */
@@ -54,11 +54,11 @@
 
 #define MAX_PAGE_SIZE			4096	/*  @ page : 4k bytes */
 
-#define IS_FW_HEADER_EXIST(_pFwHdr)				\
-	((le16_to_cpu(_pFwHdr->signature)&0xFFF0) == 0x92C0 ||	\
-	(le16_to_cpu(_pFwHdr->signature)&0xFFF0) == 0x88C0 ||	\
-	(le16_to_cpu(_pFwHdr->signature)&0xFFF0) == 0x2300 ||	\
-	(le16_to_cpu(_pFwHdr->signature)&0xFFF0) == 0x88E0)
+#define IS_FW_HEADER_EXIST(_pFwHdr)				 \
+	((le16_to_cpu(_pFwHdr->signature) & 0xFFF0) == 0x92C0 || \
+	(le16_to_cpu(_pFwHdr->signature) & 0xFFF0) == 0x88C0 ||  \
+	(le16_to_cpu(_pFwHdr->signature) & 0xFFF0) == 0x2300 ||  \
+	(le16_to_cpu(_pFwHdr->signature) & 0xFFF0) == 0x88E0)
 
 #define DRIVER_EARLY_INT_TIME		0x05
 #define BCN_DMA_ATIME_INT_TIME		0x02
diff --git a/drivers/staging/rtl8188eu/include/rtw_efuse.h b/drivers/staging/rtl8188eu/include/rtw_efuse.h
index 7a9c8ff0daa9..5926fc9b5e6b 100644
--- a/drivers/staging/rtl8188eu/include/rtw_efuse.h
+++ b/drivers/staging/rtl8188eu/include/rtw_efuse.h
@@ -44,7 +44,7 @@
 /*	The following is for BT Efuse definition */
 #define		EFUSE_BT_MAX_MAP_LEN		1024
 #define		EFUSE_MAX_BANK			4
-#define		EFUSE_MAX_BT_BANK		(EFUSE_MAX_BANK-1)
+#define		EFUSE_MAX_BT_BANK		(EFUSE_MAX_BANK - 1)
 /*--------------------------Define Parameters-------------------------------*/
 #define		EFUSE_MAX_WORD_UNIT			4
 
diff --git a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
index 404634999e35..06062643c868 100644
--- a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
@@ -84,7 +84,7 @@ struct reportpwrstate_parm {
 	unsigned short rsvd;
 };
 
-#define LPS_DELAY_TIME	1*HZ /*  1 sec */
+#define LPS_DELAY_TIME	1 * HZ /*  1 sec */
 
 #define EXE_PWR_NONE	0x01
 #define EXE_PWR_IPS		0x02
diff --git a/drivers/staging/rtl8188eu/include/rtw_recv.h b/drivers/staging/rtl8188eu/include/rtw_recv.h
index e383cb119e1b..b281b9e7fcea 100644
--- a/drivers/staging/rtl8188eu/include/rtw_recv.h
+++ b/drivers/staging/rtl8188eu/include/rtw_recv.h
@@ -13,7 +13,7 @@
 #define NR_RECVFRAME 256
 
 #define RXFRAME_ALIGN	8
-#define RXFRAME_ALIGN_SZ	(1<<RXFRAME_ALIGN)
+#define RXFRAME_ALIGN_SZ	(1 << RXFRAME_ALIGN)
 
 #define MAX_RXFRAME_CNT	512
 #define MAX_RX_NUMBLKS		(32)
diff --git a/drivers/staging/rtl8188eu/include/rtw_security.h b/drivers/staging/rtl8188eu/include/rtw_security.h
index b6f7f693d33a..2a3c58fbf805 100644
--- a/drivers/staging/rtl8188eu/include/rtw_security.h
+++ b/drivers/staging/rtl8188eu/include/rtw_security.h
@@ -218,8 +218,8 @@ do {									\
 	dot11txpn._byte_.TSC5 = iv[7];					\
 } while (0)
 
-#define ROL32(A, n)	(((A) << (n)) | (((A)>>(32-(n)))  & ((1UL << (n)) - 1)))
-#define ROR32(A, n)	ROL32((A), 32-(n))
+#define ROL32(A, n)	(((A) << (n)) | (((A) >> (32 - (n)))  & ((1UL << (n)) - 1)))
+#define ROR32(A, n)	ROL32((A), 32 - (n))
 
 struct mic_data {
 	u32  K0, K1;         /*  Key */
@@ -275,12 +275,12 @@ static const unsigned long K[64] = {
 
 /* Various logical functions */
 #define RORc(x, y) \
-	(((((unsigned long)(x) & 0xFFFFFFFFUL) >> (unsigned long)((y)&31)) | \
-	 ((unsigned long)(x) << (unsigned long)(32-((y)&31)))) & 0xFFFFFFFFUL)
+	(((((unsigned long)(x) & 0xFFFFFFFFUL) >> (unsigned long)((y) & 31)) | \
+	 ((unsigned long)(x) << (unsigned long)(32 - ((y) & 31)))) & 0xFFFFFFFFUL)
 #define Ch(x, y, z)       (z ^ (x & (y ^ z)))
 #define Maj(x, y, z)      (((x | y) & z) | (x & y))
 #define S(x, n)         RORc((x), (n))
-#define R(x, n)         (((x)&0xFFFFFFFFUL)>>(n))
+#define R(x, n)         (((x) & 0xFFFFFFFFUL) >> (n))
 #define Sigma0(x)       (S(x, 2) ^ S(x, 13) ^ S(x, 22))
 #define Sigma1(x)       (S(x, 6) ^ S(x, 11) ^ S(x, 25))
 #define Gamma0(x)       (S(x, 7) ^ S(x, 18) ^ R(x, 3))
diff --git a/drivers/staging/rtl8188eu/include/rtw_xmit.h b/drivers/staging/rtl8188eu/include/rtw_xmit.h
index 3c03987c81a1..456fd52717f3 100644
--- a/drivers/staging/rtl8188eu/include/rtw_xmit.h
+++ b/drivers/staging/rtl8188eu/include/rtw_xmit.h
@@ -42,8 +42,8 @@ do {\
 	pattrib_iv[0] = dot11txpn._byte_.TSC0;\
 	pattrib_iv[1] = dot11txpn._byte_.TSC1;\
 	pattrib_iv[2] = dot11txpn._byte_.TSC2;\
-	pattrib_iv[3] = ((keyidx & 0x3)<<6);\
-	dot11txpn.val = (dot11txpn.val == 0xffffff) ? 0 : (dot11txpn.val+1);\
+	pattrib_iv[3] = ((keyidx & 0x3) << 6);\
+	dot11txpn.val = (dot11txpn.val == 0xffffff) ? 0 : (dot11txpn.val + 1);\
 } while (0)
 
 #define TKIP_IV(pattrib_iv, dot11txpn, keyidx)\
@@ -51,12 +51,12 @@ do {\
 	pattrib_iv[0] = dot11txpn._byte_.TSC1;\
 	pattrib_iv[1] = (dot11txpn._byte_.TSC1 | 0x20) & 0x7f;\
 	pattrib_iv[2] = dot11txpn._byte_.TSC0;\
-	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3)<<6);\
+	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3) << 6);\
 	pattrib_iv[4] = dot11txpn._byte_.TSC2;\
 	pattrib_iv[5] = dot11txpn._byte_.TSC3;\
 	pattrib_iv[6] = dot11txpn._byte_.TSC4;\
 	pattrib_iv[7] = dot11txpn._byte_.TSC5;\
-	dot11txpn.val = dot11txpn.val == 0xffffffffffffULL ? 0 : (dot11txpn.val+1);\
+	dot11txpn.val = dot11txpn.val == 0xffffffffffffULL ? 0 : (dot11txpn.val + 1);\
 } while (0)
 
 #define AES_IV(pattrib_iv, dot11txpn, keyidx)\
@@ -64,12 +64,12 @@ do {							\
 	pattrib_iv[0] = dot11txpn._byte_.TSC0;		\
 	pattrib_iv[1] = dot11txpn._byte_.TSC1;		\
 	pattrib_iv[2] = 0;				\
-	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3)<<6);	\
+	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3) << 6);	\
 	pattrib_iv[4] = dot11txpn._byte_.TSC2;		\
 	pattrib_iv[5] = dot11txpn._byte_.TSC3;		\
 	pattrib_iv[6] = dot11txpn._byte_.TSC4;		\
 	pattrib_iv[7] = dot11txpn._byte_.TSC5;		\
-	dot11txpn.val = dot11txpn.val == 0xffffffffffffULL ? 0 : (dot11txpn.val+1);\
+	dot11txpn.val = dot11txpn.val == 0xffffffffffffULL ? 0 : (dot11txpn.val + 1);\
 } while (0)
 
 #define HWXMIT_ENTRY	4
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index 791f287a546d..217be809b937 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -35,7 +35,7 @@ enum WIFI_FRAME_TYPE {
 	WIFI_MGT_TYPE  =	(0),
 	WIFI_CTRL_TYPE =	(BIT(2)),
 	WIFI_DATA_TYPE =	(BIT(3)),
-	WIFI_QOS_DATA_TYPE	= (BIT(7)|BIT(3)),	/*  QoS Data */
+	WIFI_QOS_DATA_TYPE	= (BIT(7) | BIT(3)),	/*  QoS Data */
 };
 
 enum WIFI_FRAME_SUBTYPE {
diff --git a/drivers/staging/rtl8188eu/include/wlan_bssdef.h b/drivers/staging/rtl8188eu/include/wlan_bssdef.h
index 1b6435cd5390..2c184ce8746b 100644
--- a/drivers/staging/rtl8188eu/include/wlan_bssdef.h
+++ b/drivers/staging/rtl8188eu/include/wlan_bssdef.h
@@ -146,7 +146,7 @@ enum ndis_802_11_status_type {
 #define MIC_CHECK_TIME	60000000
 
 #ifndef Ndis802_11APMode
-#define Ndis802_11APMode (Ndis802_11InfrastructureMax+1)
+#define Ndis802_11APMode (Ndis802_11InfrastructureMax + 1)
 #endif
 
 struct wlan_phy_info {
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
