Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA3826BD7F
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 08:46:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93A7B8735E;
	Wed, 16 Sep 2020 06:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KHsCXQzzcbvP; Wed, 16 Sep 2020 06:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D29E8700C;
	Wed, 16 Sep 2020 06:46:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CE991BF866
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 49E5486DE7
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fCBb-kAxmDbp for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 06:46:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 30C5486DE5
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 06:46:44 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id s12so5602089wrw.11
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 23:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SduHCxumOV30pv0kJgOz7AcNyZQkbMerAs718ngKRBs=;
 b=kBc3XUzQFlZlYgAWK4mG7We4Qx69LOsW7Zo/Ovj+9dpI2gZj2FKoqwEBA6Il422B/z
 F2N9qCJRyibxJTtREj1DHmbst7kN+o2oZXz0fb6eApVm77+5E+oBT4k7iJjyYGIcGnZl
 zKcJBc1TarxiIezq63sXGbxiqryRHUa5hG0VYW8wYpjfsrqzIOUGowZfjJgdZCfqOD5g
 uB7fn6gV+Ap5FXCQuBZbLaHUIEdKsQmhci1eJVAjXuI45cOy0nI+S3zQDikfWSTnLRK3
 p9AeTtYak1mT9qmHPfxbVTjEL/CV2hHzgKdWKyJL/r/VqRDTrN2xSYCg9cgBaw3EQDtX
 NUIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SduHCxumOV30pv0kJgOz7AcNyZQkbMerAs718ngKRBs=;
 b=IqbuVuqsaZUkO2jOxaFnHRWhFkx3mlMv123b7gUFH5b1pA/O01ft/Jhzkyilipp/4g
 //3a6ZDkiVi/T3ikUtt0XEP+aLt9iiUnY7gGdJudruznUbve50S+g14pP1LyUptD69LX
 gNdeizsVvWyvvksFfkWrKAZF79NcbUCdOPzVUoZoXM1fHQotsjfJypxLYj+uo7zCrW3L
 7JJObL9+skrUW+xKkCV+/TSmD46AAAY0cc9XQpc/Xap9zygr/0Fy3WJgE+a4J5oH0L2E
 uxF2Fr+Zk1lzy7Wx88yXFXCSvCP5ulF6+IFHQg4OPWD1cy9ziaSmgXE4sg0IG9RN5GKk
 ID/Q==
X-Gm-Message-State: AOAM532dVkBf+ufJSeq3SGSOYMUjvm7kbF42isThRNSxCrQyCX+G/pnZ
 W2RcE5Uuznb2rNqiO5+858c=
X-Google-Smtp-Source: ABdhPJx7xFQkvZxPc5SEpIbioJ8uZZ2T6fh3tCrRBUVb2oqHreQHNiOUVf25BLJ07NydX69W9rodqg==
X-Received: by 2002:adf:f508:: with SMTP id q8mr23876724wro.233.1600238802635; 
 Tue, 15 Sep 2020 23:46:42 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-168.178.006.pools.vodafone-ip.de. [178.6.252.168])
 by smtp.gmail.com with ESMTPSA id s67sm3455477wmf.38.2020.09.15.23.46.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 23:46:42 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: clean up blank line style issues
Date: Wed, 16 Sep 2020 08:42:57 +0200
Message-Id: <20200916064257.14902-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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

Add missing and remove unnecessary blank lines to clear the following
checkpatch issues.

WARNING: Missing a blank line after declarations
CHECK: Please use a blank line after function/struct/union/enum declarations
CHECK: Blank lines aren't necessary before a close brace '}'
CHECK: Please don't use multiple blank lines

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c     | 6 +-----
 drivers/staging/rtl8188eu/hal/odm.c               | 1 -
 drivers/staging/rtl8188eu/hal/rf.c                | 1 +
 drivers/staging/rtl8188eu/include/osdep_service.h | 1 +
 drivers/staging/rtl8188eu/include/rtl8188e_xmit.h | 1 +
 drivers/staging/rtl8188eu/include/rtw_recv.h      | 2 ++
 drivers/staging/rtl8188eu/include/wifi.h          | 1 +
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c    | 1 +
 8 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 78a8ac60bf3d..d2d562550eb7 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -371,8 +371,6 @@ void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_cod
 	rtw_secgetmic(&micdata, mic_code);
 }
 
-
-
 /* macros for extraction/creation of unsigned char/unsigned short values  */
 #define RotR1(v16)   ((((v16) >> 1) & 0x7FFF) ^ (((v16) & 1) << 15))
 #define   Lo8(v16)   ((u8)((v16)       & 0x00FF))
@@ -662,7 +660,6 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, struct recv_frame *precvframe)
 	u8	crc[4];
 	struct arc4context mycontext;
 	int			length;
-
 	u8	*pframe, *payload, *iv, *prwskey;
 	union pn48 dot11txpn;
 	struct	sta_info		*stainfo;
@@ -670,7 +667,6 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, struct recv_frame *precvframe)
 	struct	security_priv	*psecuritypriv = &padapter->securitypriv;
 	u32		res = _SUCCESS;
 
-
 	pframe = (unsigned char *)precvframe->pkt->data;
 
 	/* 4 start to decrypt recvframe */
@@ -728,7 +724,6 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, struct recv_frame *precvframe)
 
 /* 3			===== AES related ===== */
 
-
 #define MAX_MSG_SIZE	2048
 /*****************************/
 /******** SBOX Table *********/
@@ -1519,6 +1514,7 @@ const u8 Td4s[256] = {
 	0x17U, 0x2bU, 0x04U, 0x7eU, 0xbaU, 0x77U, 0xd6U, 0x26U,
 	0xe1U, 0x69U, 0x14U, 0x63U, 0x55U, 0x21U, 0x0cU, 0x7dU,
 };
+
 const u8 rcons[] = {
 	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1B, 0x36
 	/* for 128-bit blocks, Rijndael never uses more than 10 rcon values */
diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index 28974808839d..edc278e5744f 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -969,7 +969,6 @@ void ODM_TXPowerTrackingCheck(struct odm_dm_struct *pDM_Odm)
 
 	rtl88eu_dm_txpower_tracking_callback_thermalmeter(Adapter);
 	pDM_Odm->RFCalibrateInfo.TM_Trigger = 0;
-
 }
 
 /* 3============================================================ */
diff --git a/drivers/staging/rtl8188eu/hal/rf.c b/drivers/staging/rtl8188eu/hal/rf.c
index 6702f263c770..aab0f54a75fc 100644
--- a/drivers/staging/rtl8188eu/hal/rf.c
+++ b/drivers/staging/rtl8188eu/hal/rf.c
@@ -138,6 +138,7 @@ static void getpowerbase88e(struct adapter *adapt, u8 *pwr_level_ofdm,
 		     (powerbase1 << 8) | powerbase1;
 	*mcs_base = powerbase1;
 }
+
 static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 				    u8 index, u32 *powerbase0, u32 *powerbase1,
 				    u32 *out_val)
diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
index b44d602e954a..56e937b26407 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -69,6 +69,7 @@ void _rtw_init_queue(struct __queue *pqueue);
 struct rtw_netdev_priv_indicator {
 	void *priv;
 };
+
 struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv);
 
 static inline struct adapter *rtw_netdev_priv(struct net_device *netdev)
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
index 85efa41c8350..04efbc824fb1 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
@@ -94,6 +94,7 @@ enum TXDESC_SC {
 	SC_LOWER = 0x02,
 	SC_DUPLICATE = 0x03
 };
+
 /* OFFSET 20 */
 #define SGI			BIT(6)
 #define USB_TXAGG_NUM_SHT	24
diff --git a/drivers/staging/rtl8188eu/include/rtw_recv.h b/drivers/staging/rtl8188eu/include/rtw_recv.h
index b281b9e7fcea..e20bab41708a 100644
--- a/drivers/staging/rtl8188eu/include/rtw_recv.h
+++ b/drivers/staging/rtl8188eu/include/rtw_recv.h
@@ -62,7 +62,9 @@ struct signal_stat {
 	u32	total_num;		/* num of valid elements */
 	u32	total_val;		/* sum of valid elements */
 };
+
 #define MAX_PATH_NUM_92CS		3
+
 struct phy_info {
 	u8	RxPWDBAll;
 	u8	SignalQuality;	 /*  in 0-100 index. */
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index 217be809b937..118e215dd6b1 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -331,6 +331,7 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 	else
 		return false;
 }
+
 /*-----------------------------------------------------------------------------
 			Below is for the security related definition
 ------------------------------------------------------------------------------*/
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 77ecf4fe8382..d10a078c5b49 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -124,6 +124,7 @@ static char *translate_scan(struct adapter *padapter,
 
 	if (p && ht_ielen > 0) {
 		struct ieee80211_ht_cap *pht_capie;
+
 		ht_cap = true;
 
 		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
