Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E3C2827BA
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 03:18:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 957A787004;
	Sun,  4 Oct 2020 01:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9lgr8zcNrcBx; Sun,  4 Oct 2020 01:18:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D3228700C;
	Sun,  4 Oct 2020 01:18:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BDB91BF5A9
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:17:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2F1EE2010E
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RGWhXjmJRQuM for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 01:17:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 1F63F20002
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 01:17:58 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id e5so4754091ils.10
 for <devel@driverdev.osuosl.org>; Sat, 03 Oct 2020 18:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A7kJEsNSXf0lSc+XygDrQmDFrrDW387XvWyoU/QDenU=;
 b=i8BO+sTrNaA0VdQHECUj+OqYwjYDsUcy49fRA4fpz4C6cZFS9o6A/nwIRH4VlGK5DJ
 0tshW834hKWbkeYkpdn8ahOI/VhlRkdvCci6u7N5lpcQcZoux1st93k9atsQ5Zl4V30+
 PMndkLFGJ4/mUysXSIZzhHPk0makiHkGLe01R5+x8KmCpyPvjAl5EQVCRTdppqh7Ykpu
 W7wlxY8EUe4c6Qm7ntphWhXzgG6ZJ6ZPU2RkXS4DySc8CH9sPUgz7J9kyPYbEahrlwgE
 2qQ/mr4KqfsHwhdCcLq0syioVpBRyYRSmeq+xacRB217tMg+Zs3hNZDm2j54aZzGnbS5
 uhaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A7kJEsNSXf0lSc+XygDrQmDFrrDW387XvWyoU/QDenU=;
 b=IDzKrQwZEZ2n8onV1Wq4dHOc3teLAjOwokFsWT3s49Qy8U5QxKQKPGZOr3amJa1mL9
 3P9ZeAApZmhc3622uJZai9u1cw+BUMwSUGA86PFjimIPXP30+S/KSVUh2bjK2OWqU4jB
 zVo1AH4P5wY3pA3Kfqp/FgqdTfOugcmmpK3yKfby+nbwCgvrPRXj/FAw1FJo/j2iQj+z
 r81VabBvs5W3cBmRW33dnUSdRjjuDFctT26Lp6D6iHeTHMnk6/cz35T4idTxq4trfNO8
 TjDE9IY0OvbkSwDHzLCLShh+brcap6F9PN0jWjZ/Qe3qjx9HejuXlj29DVdaLcdDg2Mt
 DQOQ==
X-Gm-Message-State: AOAM531IzvZiNVxJKGl5FGBguOgKCzOlvrP+ySPHb7QpMq4yAvW2IzVV
 pqr3Ph72nUMrH1HdAtaKVjA=
X-Google-Smtp-Source: ABdhPJw8amOqhhhaYeSAI1wcCE/2hvhoLKmz5DCNCQPUeEcDN38J3IXQHnQbJpteKV+n9MZ9HjIUNA==
X-Received: by 2002:a92:980d:: with SMTP id l13mr2927634ili.244.1601774277438; 
 Sat, 03 Oct 2020 18:17:57 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id t64sm3575194ild.10.2020.10.03.18.17.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 18:17:57 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/8] staging: rtl8723bs: replace RND4 with round_up()
Date: Sat,  3 Oct 2020 20:17:36 -0500
Message-Id: <20201004011743.10750-1-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use round_up instead of define RND4.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c     | 6 +++---
 drivers/staging/rtl8723bs/core/rtw_xmit.c         | 4 ++--
 drivers/staging/rtl8723bs/hal/sdio_ops.c          | 6 +++---
 drivers/staging/rtl8723bs/include/osdep_service.h | 1 -
 4 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 7f74e1d05b3a..159d32ace2bc 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -260,7 +260,7 @@ void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
 				arcfour_encrypt(&mycontext, payload+length, crc, 4);
 
 				pframe += pxmitpriv->frag_len;
-				pframe = (u8 *)RND4((SIZE_PTR)(pframe));
+				pframe = (u8 *)round_up((SIZE_PTR)(pframe), 4);
 			}
 		}
 
@@ -716,7 +716,7 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 					arcfour_encrypt(&mycontext, payload+length, crc, 4);
 
 					pframe += pxmitpriv->frag_len;
-					pframe = (u8 *)RND4((SIZE_PTR)(pframe));
+					pframe = (u8 *)round_up((SIZE_PTR)(pframe), 4);
 				}
 			}
 
@@ -1523,7 +1523,7 @@ u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 
 				aes_cipher(prwskey, pattrib->hdrlen, pframe, length);
 				pframe += pxmitpriv->frag_len;
-				pframe = (u8 *)RND4((SIZE_PTR)(pframe));
+				pframe = (u8 *)round_up((SIZE_PTR)(pframe), 4);
 			}
 		}
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 571353404a95..6ecaff9728fd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -865,7 +865,7 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 			payload = pframe;
 
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
-				payload = (u8 *)RND4((SIZE_PTR)(payload));
+				payload = (u8 *)round_up((SIZE_PTR)(payload), 4);
 				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("===curfragnum =%d, pframe = 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x,!!!\n",
 					curfragnum, *payload, *(payload+1), *(payload+2), *(payload+3), *(payload+4), *(payload+5), *(payload+6), *(payload+7)));
 
@@ -1209,7 +1209,7 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 
 		addr = (SIZE_PTR)(pframe);
 
-		mem_start = (unsigned char *)RND4(addr) + hw_hdr_offset;
+		mem_start = (unsigned char *)round_up(addr, 4) + hw_hdr_offset;
 		memcpy(mem_start, pbuf_start + hw_hdr_offset, pattrib->hdrlen);
 	}
 
diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index b6b4adb5a28a..544d5a093229 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -534,7 +534,7 @@ static s32 _sdio_local_read(
 	if (!mac_pwr_ctrl_on)
 		return _sd_cmd52_read(intfhdl, addr, cnt, buf);
 
-	n = RND4(cnt);
+	n = round_up(cnt, 4);
 	tmpbuf = rtw_malloc(n);
 	if (!tmpbuf)
 		return -1;
@@ -575,7 +575,7 @@ s32 sdio_local_read(
 	)
 		return sd_cmd52_read(intfhdl, addr, cnt, buf);
 
-	n = RND4(cnt);
+	n = round_up(cnt, 4);
 	tmpbuf = rtw_malloc(n);
 	if (!tmpbuf)
 		return -1;
@@ -859,7 +859,7 @@ static struct recv_buf *sd_recv_rxfifo(struct adapter *adapter, u32 size)
 
 	/*  Patch for some SDIO Host 4 bytes issue */
 	/*  ex. RK3188 */
-	readsize = RND4(size);
+	readsize = round_up(size, 4);
 
 	/* 3 1. alloc recvbuf */
 	recv_priv = &adapter->recvpriv;
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index be34e279670b..ea3f4f3c86d2 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -131,7 +131,6 @@ static inline int rtw_bug_check(void *parg1, void *parg2, void *parg3, void *par
 }
 
 #define _RND(sz, r) ((((sz)+((r)-1))/(r))*(r))
-#define RND4(x)	(((x >> 2) + (((x & 3) == 0) ?  0 : 1)) << 2)
 
 static inline u32 _RND4(u32 sz)
 {
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
