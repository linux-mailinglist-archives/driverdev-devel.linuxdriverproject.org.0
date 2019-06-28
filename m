Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8F5598E7
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 035CB8761E;
	Fri, 28 Jun 2019 10:59:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A6b5JmVwcnrS; Fri, 28 Jun 2019 10:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA042875FE;
	Fri, 28 Jun 2019 10:59:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9113F1BF20B
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5223B85C00
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TazjtXmA4Wy4 for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 26D7B85D8E
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:59:04 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id m4so2442912pgk.0
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TC2RP1oxN+lFFQj38TxIigR0HryA3B6/Nz5IUI6T69Q=;
 b=OXxio1l0dklpLlNDCZ+qea2l28KQ1uIrmCFFR83xT8bY6UqT0CSgyS97MYupH1/eQq
 QuG2ltjfCsgh3dMZCpni5GSRURNWg/7UbqyxZyKq6Ga4fF2sYuTR4B93Wr76f8992CdG
 FqXIBHZ4TQh/Is6hyOX6AtBY2GD+yPeckgNHk9qqU2G/5o+eGZnd7+JkRt8pZ8m75Sjz
 lJQ+bdou+InT4/e8gqOuk+yH8thewAEoHHMyTLmDx/2Enga6MYjMiryng7s3sXuhDMBM
 n3mcztiyjsFcHYb25tMRY+i5/pL/ZJ4QpEMS7oxoZ/dJ+ydzxo20NhJvUUMSk5DdTrzZ
 82XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TC2RP1oxN+lFFQj38TxIigR0HryA3B6/Nz5IUI6T69Q=;
 b=C0zDVFdBVqhv9eyJ+a+yBN39pgs4OTs6jUf2gaoMMMsVM4CF7lNqKbjIH9e+NPXAe1
 AGXejiZ+lbe4RDvqQllB7nrd7jDcF+NMBTyl1nojsPbqD/SysjLWYK70LTjQBVzwKaHy
 mTjJQnz+1tNmfwnmA+iJ5BPgopDG8tT0lWa9ZUGgaXgjxsqB6StE23DrGTj1iK7oQN/H
 eXxfGPOgNcqWVllStuTzUkCZrdnB+WMvzCCF/anRKhhfm+kGtOnjnEPi0ZL1C7swrqZB
 PfiWpTTowuvecw3D8SQL2UsOaXOSyrE4lvwqS6kvVuC/iLQ7QmsSNsR4VFnt9ud/zVnZ
 8r1Q==
X-Gm-Message-State: APjAAAVJgWVAnsjzrqdmfb+Sfap57QcvJqFhh5U5OsmHx054N0Z6UZUK
 VW0wsirbgN/NUmMGb8bB+DkH2hwY
X-Google-Smtp-Source: APXvYqxpAhUKQZ2oHJjXqpr5GCdCgDhec3JJ/kebd25zDPbkvE9FU2X4UhHtZDAtxMHdd/oNKlYc/A==
X-Received: by 2002:a63:5247:: with SMTP id s7mr8335812pgl.29.1561719543756;
 Fri, 28 Jun 2019 03:59:03 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id j14sm1908043pfe.10.2019.06.28.03.59.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 03:59:03 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 07/10] staging: rtl8723bs: Remove rtw_hal_c2h_evt_read()
Date: Fri, 28 Jun 2019 16:28:32 +0530
Message-Id: <20190628105835.6931-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190628105835.6931-1-nishkadg.linux@gmail.com>
References: <20190628105835.6931-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Modify call sites of rtw_hal_c2h_evt_read to call c2h_evt_read_88xx
instead, as rtw_hal_c2h_evt_read does nothing except call
c2h_evt_read_88xx.
Remove function rtw_hal_c2h_evt_read as it is now not necessary.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c     | 2 +-
 drivers/staging/rtl8723bs/hal/hal_intf.c     | 5 -----
 drivers/staging/rtl8723bs/hal/sdio_ops.c     | 2 +-
 drivers/staging/rtl8723bs/include/hal_intf.h | 1 -
 4 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 988e909a5124..55a481f9d441 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1918,7 +1918,7 @@ static void c2h_wk_callback(_workitem *work)
 			c2h_evt = rtw_malloc(16);
 			if (c2h_evt != NULL) {
 				/* This C2H event is not read, read & clear now */
-				if (rtw_hal_c2h_evt_read(adapter, c2h_evt) != _SUCCESS) {
+				if (c2h_evt_read_88xx(adapter, c2h_evt) != _SUCCESS) {
 					kfree(c2h_evt);
 					continue;
 				}
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index 4a4d17b44ba6..acb25978a46c 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -400,11 +400,6 @@ bool rtw_hal_c2h_valid(struct adapter *adapter, u8 *buf)
 	return c2h_evt_valid((struct c2h_evt_hdr_88xx *)buf);
 }
 
-s32 rtw_hal_c2h_evt_read(struct adapter *adapter, u8 *buf)
-{
-	return c2h_evt_read_88xx(adapter, buf);
-}
-
 s32 rtw_hal_c2h_handler(struct adapter *adapter, u8 *c2h_evt)
 {
 	s32 ret = _FAIL;
diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 82e249e7fbb4..301d327d0624 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -1025,7 +1025,7 @@ void sd_int_dpc(struct adapter *adapter)
 		DBG_8192C("%s: C2H Command\n", __func__);
 		c2h_evt = rtw_zmalloc(16);
 		if (c2h_evt) {
-			if (rtw_hal_c2h_evt_read(adapter, (u8 *)c2h_evt) == _SUCCESS) {
+			if (c2h_evt_read_88xx(adapter, (u8 *)c2h_evt) == _SUCCESS) {
 				if (c2h_id_filter_ccx_8723b((u8 *)c2h_evt)) {
 					/* Handle CCX report here */
 					rtw_hal_c2h_handler(adapter, (u8 *)c2h_evt);
diff --git a/drivers/staging/rtl8723bs/include/hal_intf.h b/drivers/staging/rtl8723bs/include/hal_intf.h
index 19ceb4aa753e..3a0c3d079d50 100644
--- a/drivers/staging/rtl8723bs/include/hal_intf.h
+++ b/drivers/staging/rtl8723bs/include/hal_intf.h
@@ -388,7 +388,6 @@ void rtw_hal_notch_filter(struct adapter * adapter, bool enable);
 void rtw_hal_reset_security_engine(struct adapter * adapter);
 
 bool rtw_hal_c2h_valid(struct adapter *adapter, u8 *buf);
-s32 rtw_hal_c2h_evt_read(struct adapter *adapter, u8 *buf);
 s32 rtw_hal_c2h_handler(struct adapter *adapter, u8 *c2h_evt);
 c2h_id_filter rtw_hal_c2h_id_filter_ccx(struct adapter *adapter);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
