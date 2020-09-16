Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 668D126BC6F
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 08:16:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35C72869EB;
	Wed, 16 Sep 2020 06:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUemLQDD1cSw; Wed, 16 Sep 2020 06:16:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0B0186966;
	Wed, 16 Sep 2020 06:16:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCDAB1BF866
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C96F286972
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tbVd-b-_nUAg for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 06:16:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 533FC86966
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 06:16:40 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id j34so3301127pgi.7
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 23:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1dT6USUgI+BVxgLzxrBEbYVD3b1Ku1J3E+19jaDX+5E=;
 b=dgjNP+nA9fFsDC2moIwX9SCoXpVuPSkuaGZ7Dpppz6lvh9FUfU9uN+iHGA3UHKcwfl
 s4+N1J4IJ3ocl8m7JtOLUUcgwjWWiJznTD3ySBAc1ehzzMo8Ov6NjIRsWpYa1EwnC7Si
 DiHslKhzNpTuUE3U7E2oxYG3aKLEOusa53yMyBALU6TzyGrYNaNQ5o4nk5vYu/0F9Bbk
 0cTLC7mOkQ0QtXiYtoQMbhh6k5k8IYU6+ufBZSeF9liUaLIwHTdkvsS0ZFerB7ujzBhJ
 tfZCkpNFXLEP7R3R4TYDLs/Laz2QSkalfvZQ4XBkwiIdmjJizQd/bkwNceBz3kTNiclc
 RSrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1dT6USUgI+BVxgLzxrBEbYVD3b1Ku1J3E+19jaDX+5E=;
 b=JFEvyz1HEspL+thSyB/GweyVue0+RN1QxYI4/xdx1/MU9WHzo3nvxBaXY6IoA9yo6w
 ZEXAiuvmq0HjrTiLgaPT/yPe82sQXYIoAEYWRhbNJzLgzP9eLk9kwShPEoFeqD7aGSex
 T1+6POe682BLyksYuVe4u/iHZH/Sfir+olUtH/o8pRuZ6JP3pdAIzYSemi+4Vc1Zyg5E
 9tY/xukhe2Mjuo5q0X5iQrcph+pZE56nTsxu4TMdMg/4rJ/9FWE/Sjb5oGEav4lzhHn3
 V2gYmXCqGlQoITR083cX4B2FMLWyt3ymJQEw0z9HnmuZgODznrl4htn8ge6GQPLVR0NK
 WlrA==
X-Gm-Message-State: AOAM532mJN9pMBoCoh7zvg7YiriZDX9s9yIFDslQfrkaTShiG7yuyqU5
 TQKBeeVzE9eIEA6MH5Sz/wQ=
X-Google-Smtp-Source: ABdhPJwoaOsVWATFuXApDnLwzCF8Ig/YmaT+c7SmB10tUQylJcffXShC8o3IqbSjAF06P9a9wTH1Kg==
X-Received: by 2002:a62:178d:0:b029:13e:d13d:a0f8 with SMTP id
 135-20020a62178d0000b029013ed13da0f8mr21362408pfx.20.1600236999945; 
 Tue, 15 Sep 2020 23:16:39 -0700 (PDT)
Received: from localhost.localdomain ([49.207.195.121])
 by smtp.gmail.com with ESMTPSA id 64sm13756489pgi.90.2020.09.15.23.16.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 23:16:39 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: convert tasklets to use new
 tasklet_setup() API
Date: Wed, 16 Sep 2020 11:46:30 +0530
Message-Id: <20200916061630.57717-1-allen.lkml@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Romain Perier <romain.perier@gmail.com>,
 Allen Pais <apais@linux.microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Allen Pais <apais@linux.microsoft.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <apais@linux.microsoft.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 29c29e2e125b..b9ccaad748ea 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -230,9 +230,10 @@ static inline bool pkt_exceeds_tail(struct recv_priv *precvpriv,
 	return false;
 }
 
-static void rtl8723bs_recv_tasklet(unsigned long priv)
+static void rtl8723bs_recv_tasklet(struct tasklet_struct *t)
 {
-	struct adapter *padapter;
+	struct adapter *padapter = from_tasklet(padapter, t,
+						recvpriv.recv_tasklet);
 	struct hal_com_data *p_hal_data;
 	struct recv_priv *precvpriv;
 	struct recv_buf *precvbuf;
@@ -244,7 +245,6 @@ static void rtl8723bs_recv_tasklet(unsigned long priv)
 	_pkt *pkt_copy = NULL;
 	u8 shift_sz = 0, rx_report_sz = 0;
 
-	padapter = (struct adapter *)priv;
 	p_hal_data = GET_HAL_DATA(padapter);
 	precvpriv = &padapter->recvpriv;
 	recv_buf_queue = &precvpriv->recv_buf_pending_queue;
@@ -444,8 +444,7 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 		goto initbuferror;
 
 	/* 3 2. init tasklet */
-	tasklet_init(&precvpriv->recv_tasklet, rtl8723bs_recv_tasklet,
-		     (unsigned long)padapter);
+	tasklet_setup(&precvpriv->recv_tasklet, rtl8723bs_recv_tasklet);
 
 	goto exit;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
