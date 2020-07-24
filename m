Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF8722CF5F
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 22:25:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CE1F885DE;
	Fri, 24 Jul 2020 20:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WQZK-QAMXmwj; Fri, 24 Jul 2020 20:25:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14690876E4;
	Fri, 24 Jul 2020 20:25:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F21B71BF342
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 20:25:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E1836875CA
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 20:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8s0QXn9l5X8o for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 20:25:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0CF8A8746D
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 20:25:53 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id b9so5182398plx.6
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 13:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K7UJS4ygh33eCW7nxQsMEsiR5F+Qbliw0FCXznj2R5U=;
 b=jCqM5jmas2FCHw6FyaOyhy+8ZPP0V2mglBljs4SR0yV/9neqZ9NKNldT1txOmz29XG
 IR8Z34OHlZRKA0SACtetw2feaZPgts7Gz/srFsGOMdCMxVmWI74mebW0dYd3fAAZ/ovh
 MhNFIdlF4TI/l/pv84kTegiJGT6DB4VGWdnfep3rkKPzAgoOBMUS2pB8J9BWsWo//Lhl
 MB9xCUvZfy4e3cN2NWqN3dJccuda+/e4PMGaExNg8rZrtGMZLb55TbmtvfJ5no80y6gI
 SoejH5EWGeynvYHtFh+pYlEVX4u8Nm2bbduR5GpnbU2r/Cu1dHUmoyVV22HAlaTRkSvD
 iPwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K7UJS4ygh33eCW7nxQsMEsiR5F+Qbliw0FCXznj2R5U=;
 b=XN4ERxnv40rS40gci4Xp4KiHTPrsqJZBaVcA7moygFgvcB7eDfFpB2jVhkU8zYnlWe
 3vT8Z2YXp5BSavCh8WXRZm/zH9dsK266bTdGjrGPliR6Dy1t7YV8hqohi6gd3GtLNFZp
 tUE1Cx6fh0ivU6UzfMuWshY8xhaOQdiTfyU8NEd4I0TtQRXeafVxSkpMarhBSmAEP73L
 JmygQzjf+iMUU4EG2SJ0g+slUyXH7lh5YgLjIAA5ElnH6gYaO4DURFev7DQ5Zvu78kcn
 ouEuuvlxBhdpNL/Q7NlqojLyeEuPJR1zu/iFJPEmcKeFzu1Wpi938gWV7Fjy19WOdjkw
 YFig==
X-Gm-Message-State: AOAM5317hfy9Nz68RFg9vh0nPYz0RUSCqy+I4RrltL386lbpyltEbFEs
 aG78PfPTfLjtNbJxZcr5p4Q=
X-Google-Smtp-Source: ABdhPJyPaK0FmkX19TnXy98oZXKvWll9K6rh852WnrMd3lFKYALsDa9r6hJKSt52OyYlh8Vyo+x6YA==
X-Received: by 2002:a17:902:bb8a:: with SMTP id
 m10mr9746466pls.248.1595622352157; 
 Fri, 24 Jul 2020 13:25:52 -0700 (PDT)
Received: from localhost.localdomain ([106.51.23.74])
 by smtp.gmail.com with ESMTPSA id w1sm7690546pfq.53.2020.07.24.13.25.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jul 2020 13:25:51 -0700 (PDT)
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
To: 
Subject: [PATCH] Fix coding style issues
Date: Sat, 25 Jul 2020 01:55:19 +0530
Message-Id: <20200724202523.16829-1-anant.thazhemadam@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: Merwin Trever Ferrao <merwintf@gmail.com>, anant.thazhemadam@gmail.com,
 devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Anoop S <anoop.skumar1507@gmail.com>,
 Joe Perches <joe@perches.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Coding style issues found were rectified

Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 92 ++++++++++---------
 1 file changed, 47 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 21f6652dd69f..3111f4a899ee 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -127,8 +127,8 @@ static __le32 getcrc32(u8 *buf, int len)
 }
 
 /*
-	Need to consider the fragment  situation
-*/
+ *	Need to consider the fragment  situation
+ */
 void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
 {
 	int	curfragnum, length;
@@ -429,9 +429,9 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
 	0x2DB6, 0x3C22, 0x1592, 0xC920, 0x8749, 0xAAFF, 0x5078, 0xA57A,
 	0x038F, 0x59F8, 0x0980, 0x1A17, 0x65DA, 0xD731, 0x84C6, 0xD0B8,
 	0x82C3, 0x29B0, 0x5A77, 0x1E11, 0x7BCB, 0xA8FC, 0x6DD6, 0x2C3A,
-  },
+},
 
-  {  /* second half of table is unsigned char-reversed version of first! */
+{  /* second half of table is unsigned char-reversed version of first! */
 	0xA5C6, 0x84F8, 0x99EE, 0x8DF6, 0x0DFF, 0xBDD6, 0xB1DE, 0x5491,
 	0x5060, 0x0302, 0xA9CE, 0x7D56, 0x19E7, 0x62B5, 0xE64D, 0x9AEC,
 	0x458F, 0x9D1F, 0x4089, 0x87FA, 0x15EF, 0xEBB2, 0xC98E, 0x0BFB,
@@ -464,26 +464,26 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
 	0xB62D, 0x223C, 0x9215, 0x20C9, 0x4987, 0xFFAA, 0x7850, 0x7AA5,
 	0x8F03, 0xF859, 0x8009, 0x171A, 0xDA65, 0x31D7, 0xC684, 0xB8D0,
 	0xC382, 0xB029, 0x775A, 0x111E, 0xCB7B, 0xFCA8, 0xD66D, 0x3A2C,
-  }
+}
 };
 
- /*
-**********************************************************************
-* Routine: Phase 1 -- generate P1K, given TA, TK, IV32
-*
-* Inputs:
-*     tk[]      = temporal key			 [128 bits]
-*     ta[]      = transmitter's MAC address	    [ 48 bits]
-*     iv32      = upper 32 bits of IV		  [ 32 bits]
-* Output:
-*     p1k[]     = Phase 1 key			  [ 80 bits]
-*
-* Note:
-*     This function only needs to be called every 2**16 packets,
-*     although in theory it could be called every packet.
-*
-**********************************************************************
-*/
+/*
+ **********************************************************************
+ * Routine: Phase 1 -- generate P1K, given TA, TK, IV32
+ *
+ * Inputs:
+ *     tk[]      = temporal key			 [128 bits]
+ *     ta[]      = transmitter's MAC address	    [ 48 bits]
+ *     iv32      = upper 32 bits of IV		  [ 32 bits]
+ * Output:
+ *     p1k[]     = Phase 1 key			  [ 80 bits]
+ *
+ * Note:
+ *     This function only needs to be called every 2**16 packets,
+ *     although in theory it could be called every packet.
+ *
+ **********************************************************************
+ */
 static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 {
 	int  i;
@@ -507,28 +507,28 @@ static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 }
 
 /*
-**********************************************************************
-* Routine: Phase 2 -- generate RC4KEY, given TK, P1K, IV16
-*
-* Inputs:
-*     tk[]      = Temporal key			 [128 bits]
-*     p1k[]     = Phase 1 output key		   [ 80 bits]
-*     iv16      = low 16 bits of IV counter	    [ 16 bits]
-* Output:
-*     rc4key[]  = the key used to encrypt the packet   [128 bits]
-*
-* Note:
-*     The value {TA, IV32, IV16} for Phase1/Phase2 must be unique
-*     across all packets using the same key TK value. Then, for a
-*     given value of TK[], this TKIP48 construction guarantees that
-*     the final RC4KEY value is unique across all packets.
-*
-* Suggested implementation optimization: if PPK[] is "overlaid"
-*     appropriately on RC4KEY[], there is no need for the final
-*     for loop below that copies the PPK[] result into RC4KEY[].
-*
-**********************************************************************
-*/
+ **********************************************************************
+ * Routine: Phase 2 -- generate RC4KEY, given TK, P1K, IV16
+ *
+ * Inputs:
+ *     tk[]      = Temporal key			 [128 bits]
+ *     p1k[]     = Phase 1 output key		   [ 80 bits]
+ *     iv16      = low 16 bits of IV counter	    [ 16 bits]
+ * Output:
+ *     rc4key[]  = the key used to encrypt the packet   [128 bits]
+ *
+ * Note:
+ *     The value {TA, IV32, IV16} for Phase1/Phase2 must be unique
+ *     across all packets using the same key TK value. Then, for a
+ *     given value of TK[], this TKIP48 construction guarantees that
+ *     the final RC4KEY value is unique across all packets.
+ *
+ * Suggested implementation optimization: if PPK[] is "overlaid"
+ *     appropriately on RC4KEY[], there is no need for the final
+ *     for loop below that copies the PPK[] result into RC4KEY[].
+ *
+ **********************************************************************
+ */
 static void phase2(u8 *rc4key, const u8 *tk, const u16 *p1k, u16 iv16)
 {
 	int  i;
@@ -718,7 +718,9 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				res = _FAIL;
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n",__func__));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
+				 ("%s: stainfo==NULL!!!\n", __func__)
+				);
 			res = _FAIL;
 		}
 	}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
