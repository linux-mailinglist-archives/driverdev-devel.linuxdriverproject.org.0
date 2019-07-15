Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71567698F1
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 18:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D186487B7D;
	Mon, 15 Jul 2019 16:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VQB8srUHZYa4; Mon, 15 Jul 2019 16:17:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5115F87541;
	Mon, 15 Jul 2019 16:17:28 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8ABBF1BF3BB
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 16:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 87BA685DFF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 16:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pI21HeTb6eNU
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 16:17:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 51E5B84D41
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 16:17:25 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id d17so16185008qtj.8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 09:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+JlnJ7wKjL8mUK+ziar8UXb4NaG9h69U286hWR8WOgo=;
 b=pO7p5CFUlUoawW2piKGdvXpphyoAcxHMe3e95xjCyR2aS18xFVKfGvfiL/jNHB5zRK
 xDXMmwBjgP0YbhUkhyZAl41zANWxUgkLIgAFIZ5QFk9zmoKkbKl73LRb/exRKaI7l6rY
 FG0he4mSCgS1yHtDSouJL1gI67rLy3Zoysqj+yXvdR3BqWJmvB8/A6SojwuDPE7vkjKD
 ZoYAZnth0oiymladdMg4Uipg3RndrnvHcwSl4L2avyB9lF9AOoluOcYoovQDpFQInGHf
 M/0b4yU87dQM7yrJaniHFlrdpmiUMMiuHl+DJxD28pDfQaf9vwRG5hf6LBCmOY0UMjNf
 cLyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+JlnJ7wKjL8mUK+ziar8UXb4NaG9h69U286hWR8WOgo=;
 b=LK1j2KO0GnoziDx9kPGwEHKsVsidc91zFVzWfPXFho2vfjecR5GadrGpykr3/Xs9jr
 Y9LK7qQWzAfDVth31fL+GYUGKMMgnmUvoYkZgLYG9E8T7IFTuJietHBBUgD2y9YZvk1L
 at996SZlOiyOvtZgiK5D/lXmTgeTqe3PBCH5abjIp8NiRcVPJow8c77vxP+i4CxbLd2V
 hux5pREZ5CHCGtK7XvYHlyiKQOmatsU/fvTdHapCgOyAXTP0NtyYyHRehuMZnT9RVL6R
 a/3JSGckm0pupLTe5qfsBGxXwqqnMH619ZJDCEEjVJ4+tev2IGrxpK+GKLdHOS9D3wfx
 CoYA==
X-Gm-Message-State: APjAAAWTE1w6hNaFjVMfeBF3ifeGkEv+Taar/ELtSlQuUKOlOLeU+lcP
 jI9IfEUNZkgIbJfEm8YCTlgrLek649hgjw==
X-Google-Smtp-Source: APXvYqwSDeWUEiRC692BVr067onaDIGHOi/e3cKANxnnGZ6RXE89g/Vr/nN9F1+Qj3v4UkjsWWGryw==
X-Received: by 2002:aed:3363:: with SMTP id u90mr18811362qtd.7.1563207444420; 
 Mon, 15 Jul 2019 09:17:24 -0700 (PDT)
Received: from localhost.localdomain ([181.31.106.136])
 by smtp.gmail.com with ESMTPSA id y42sm12036181qtc.66.2019.07.15.09.17.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 09:17:23 -0700 (PDT)
From: christianluciano.m@gmail.com
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
Subject: [PATCH] staging: rtl8712: rtl871x_xmit.h: Fix alignment code
Date: Mon, 15 Jul 2019 13:16:34 -0300
Message-Id: <20190715161634.8835-1-christianluciano.m@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Christian Luciano Moreno <christianluciano.m@gmail.com>

Align code to match open parenthesis and tabs before statements.

Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.h | 30 +++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index 3bea2e374f13..888c6bb24587 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -41,8 +41,8 @@ do { \
 	pattrib_iv[0] = txpn._byte_.TSC0;\
 	pattrib_iv[1] = txpn._byte_.TSC1;\
 	pattrib_iv[2] = txpn._byte_.TSC2;\
-	pattrib_iv[3] = ((keyidx & 0x3)<<6);\
-	txpn.val = (txpn.val == 0xffffff) ? 0 : (txpn.val+1);\
+	pattrib_iv[3] = ((keyidx & 0x3) << 6);\
+	txpn.val = (txpn.val == 0xffffff) ? 0 : (txpn.val + 1);\
 } while (0)
 
 /* Fixed the Big Endian bug when doing the Tx.
@@ -53,13 +53,13 @@ do { \
 	pattrib_iv[0] = txpn._byte_.TSC1;\
 	pattrib_iv[1] = (txpn._byte_.TSC1 | 0x20) & 0x7f;\
 	pattrib_iv[2] = txpn._byte_.TSC0;\
-	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3)<<6);\
+	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3) << 6);\
 	pattrib_iv[4] = txpn._byte_.TSC2;\
 	pattrib_iv[5] = txpn._byte_.TSC3;\
 	pattrib_iv[6] = txpn._byte_.TSC4;\
 	pattrib_iv[7] = txpn._byte_.TSC5;\
 	txpn.val = txpn.val == 0xffffffffffffULL ? 0 : \
-	(txpn.val+1);\
+	(txpn.val + 1);\
 } while (0)
 
 #define AES_IV(pattrib_iv, txpn, keyidx)\
@@ -67,13 +67,13 @@ do { \
 	pattrib_iv[0] = txpn._byte_.TSC0;\
 	pattrib_iv[1] = txpn._byte_.TSC1;\
 	pattrib_iv[2] = 0;\
-	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3)<<6);\
+	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3) << 6);\
 	pattrib_iv[4] = txpn._byte_.TSC2;\
 	pattrib_iv[5] = txpn._byte_.TSC3;\
 	pattrib_iv[6] = txpn._byte_.TSC4;\
 	pattrib_iv[7] = txpn._byte_.TSC5;\
 	txpn.val = txpn.val == 0xffffffffffffULL ? 0 : \
-	(txpn.val+1);\
+	(txpn.val + 1);\
 } while (0)
 
 struct hw_xmit {
@@ -148,8 +148,8 @@ struct xmit_frame {
 	_pkt *pkt;
 	int frame_tag;
 	struct _adapter *padapter;
-	 u8 *buf_addr;
-	 struct xmit_buf *pxmitbuf;
+	u8 *buf_addr;
+	struct xmit_buf *pxmitbuf;
 	u8 *mem_addr;
 	u16 sz[8];
 	struct urb *pxmit_urb[8];
@@ -182,11 +182,11 @@ struct sta_xmit_priv {
 };
 
 struct	hw_txqueue {
-	/*volatile*/ sint	head;
-	/*volatile*/ sint	tail;
-	/*volatile*/ sint	free_sz;	/*in units of 64 bytes*/
-	/*volatile*/ sint      free_cmdsz;
-	/*volatile*/ sint	 txsz[8];
+	sint	head;		/*volatile*/
+	sint	tail;		/*volatile*/
+	sint	free_sz;	/*volatile*/ /*in units of 64 bytes*/
+	sint    free_cmdsz;	/*volatile*/
+	sint	txsz[8];	/*volatile*/
 	uint	ff_hwaddr;
 	uint	cmd_hwaddr;
 	sint	ac_tag;
@@ -259,7 +259,7 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
 void r8712_free_xmitframe_queue(struct xmit_priv *pxmitpriv,
 				struct  __queue *pframequeue);
 sint r8712_xmit_classifier(struct _adapter *padapter,
-			    struct xmit_frame *pxmitframe);
+			   struct xmit_frame *pxmitframe);
 sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 			      struct xmit_frame *pxmitframe);
 sint _r8712_init_hw_txqueue(struct hw_txqueue *phw_txqueue, u8 ac_tag);
@@ -280,7 +280,7 @@ int r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe);
 void r8712_xmit_bh(void *priv);
 
 void xmitframe_xmitbuf_attach(struct xmit_frame *pxmitframe,
-			struct xmit_buf *pxmitbuf);
+			      struct xmit_buf *pxmitbuf);
 
 #include "rtl8712_xmit.h"
 
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
