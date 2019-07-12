Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 986FF667AD
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 09:20:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 437F387658;
	Fri, 12 Jul 2019 07:20:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGJP3N9QeLb8; Fri, 12 Jul 2019 07:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23D6F87633;
	Fri, 12 Jul 2019 07:20:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECF321BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E786D87633
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pyt2o1P9h6q7 for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 07:20:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3049684E10
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 07:20:21 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id i189so3909539pfg.10
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9sTdxNwMo1ynQqFHL7wEFPYUKPKgtLYWrVI61dL0gV4=;
 b=iqYKjPLs/9W2hx4DzNbiDRl3HNC4JgIj7/lGzull/9QSYKRO1fDNNBTUZn15j95Mr7
 jgyKIYNLgEWo/LaoXQeq+BVFsMdOwNhv9KuHNO4TcVVVrt62bWZj6T/zKHo9GkpY9di0
 R/joh0jKv2U0yh/3+cWD8XP/CbLQPjQOTctNK345Prbi/U8wt26XF9e3WrCy0jlZudNg
 HCvrt/g8sZ/a4PIg16afRzW3VaiEUX0NmdPELpefGTWIkNXiXmhqIV70Qb7iukCExjt+
 IAS45JJYofdJCg7O9x4L1R+BPmvxuABilhNFLiTlW1FY+p/WRzKteXYOV5K9utNPqHYg
 HqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9sTdxNwMo1ynQqFHL7wEFPYUKPKgtLYWrVI61dL0gV4=;
 b=jvwFEz3UAZbPboS9EqhBfw4BVDVHMQ8yCExCgxUo4AowA8oEiz4rJPQIgOk6ee/heT
 0SmGZIbuoZZthVcR91rzzhqr0ZvJYr4tc/kmXPbevMuoqrYoUrx0SGRZnQcA2aJsZelK
 cgVfXMPU3lD3h5iB5wPq5LhJwNtv3LqvO7IaXeWyme2bcJudGB1Lc5l7ubkZ5Q/iwWfo
 hsJGvqwyaYrhljqfK/FD3tq8bd2YM78A64yMevKkfVSWWTkIvYgjXnNB14upy9bughiq
 oxduhIw4Mo6tOGO2UAkd6YCUCgfKvKtnpD4UwJkbe4DTh+T/YmHiZrGNbZSjOCHaClJ3
 uVGw==
X-Gm-Message-State: APjAAAU/z0IPzyuuNi3RqSpkRPP68349NQnOANBXfKOlSwBc4R8gdiyz
 bvhZLxcRTl78QfA4Rthzouz6TMj3
X-Google-Smtp-Source: APXvYqw8sYfogWIfoE1hiFrb1sXh4OzZVSLlzqPs1Ld2jHFzhZRZLmj03XOK4wcCvbFJxP+kU/idAg==
X-Received: by 2002:a63:360d:: with SMTP id d13mr9121876pga.80.1562916020802; 
 Fri, 12 Jul 2019 00:20:20 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id q69sm11202721pjb.0.2019.07.12.00.20.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 00:20:20 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: adham.abozaeid@microchip.com, ajay.kathat@microchip.com,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: wilc1000: Replace function wilc_wlan_cfg_get_val()
Date: Fri, 12 Jul 2019 12:50:09 +0530
Message-Id: <20190712072009.2550-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Include wilc_wlan_cfg.h in wilc_netdev.c to enable it to call functions
in wilc_wlan_cfg.c.
Remove function wilc_wlan_cfg_get_val as all it does is call
wilc_wlan_cfg_get_wid_value in file wilc_wlan_cfg.c.
Rename function wilc_wlan_cfg_get_wid_value to wilc_wlan_cfg_get_val to
maintain compatibility with call sites (including in wilc_netdev.c).
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wilc1000/wilc_netdev.c   | 1 +
 drivers/staging/wilc1000/wilc_wlan.c     | 5 -----
 drivers/staging/wilc1000/wilc_wlan.h     | 2 --
 drivers/staging/wilc1000/wilc_wlan_cfg.c | 4 ++--
 drivers/staging/wilc1000/wilc_wlan_cfg.h | 4 ++--
 5 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_netdev.c b/drivers/staging/wilc1000/wilc_netdev.c
index 565e2b5d0616..8d8b7e4399f7 100644
--- a/drivers/staging/wilc1000/wilc_netdev.c
+++ b/drivers/staging/wilc1000/wilc_netdev.c
@@ -11,6 +11,7 @@
 #include <linux/inetdevice.h>
 
 #include "wilc_wfi_cfgoperations.h"
+#include "wilc_wlan_cfg.h"
 
 #define WILC_MULTICAST_TABLE_SIZE	8
 
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index d46876edcfeb..2cbdbf0090e4 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -1196,11 +1196,6 @@ int wilc_wlan_cfg_get(struct wilc_vif *vif, int start, u16 wid, int commit,
 	return ret_size;
 }
 
-int wilc_wlan_cfg_get_val(struct wilc *wl, u16 wid, u8 *buffer, u32 buffer_size)
-{
-	return wilc_wlan_cfg_get_wid_value(wl, wid, buffer, buffer_size);
-}
-
 int wilc_send_config_pkt(struct wilc_vif *vif, u8 mode, struct wid *wids,
 			 u32 count)
 {
diff --git a/drivers/staging/wilc1000/wilc_wlan.h b/drivers/staging/wilc1000/wilc_wlan.h
index d2eef7b4c3b7..b70014142686 100644
--- a/drivers/staging/wilc1000/wilc_wlan.h
+++ b/drivers/staging/wilc1000/wilc_wlan.h
@@ -291,8 +291,6 @@ int wilc_wlan_cfg_set(struct wilc_vif *vif, int start, u16 wid, u8 *buffer,
 		      u32 buffer_size, int commit, u32 drv_handler);
 int wilc_wlan_cfg_get(struct wilc_vif *vif, int start, u16 wid, int commit,
 		      u32 drv_handler);
-int wilc_wlan_cfg_get_val(struct wilc *wl, u16 wid, u8 *buffer,
-			  u32 buffer_size);
 int wilc_wlan_txq_add_mgmt_pkt(struct net_device *dev, void *priv, u8 *buffer,
 			       u32 buffer_size, void (*func)(void *, int));
 void wilc_chip_sleep_manually(struct wilc *wilc);
diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
index 9dc5de4eb08d..f4144f93e4a9 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
@@ -320,8 +320,8 @@ int wilc_wlan_cfg_get_wid(u8 *frame, u32 offset, u16 id)
 	return 2;
 }
 
-int wilc_wlan_cfg_get_wid_value(struct wilc *wl, u16 wid, u8 *buffer,
-				u32 buffer_size)
+int wilc_wlan_cfg_get_val(struct wilc *wl, u16 wid, u8 *buffer,
+			  u32 buffer_size)
 {
 	u32 type = (wid >> 12) & 0xf;
 	int i, ret = 0;
diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.h b/drivers/staging/wilc1000/wilc_wlan_cfg.h
index e5ca6cea0682..614c5673f232 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.h
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.h
@@ -44,8 +44,8 @@ struct wilc_cfg {
 struct wilc;
 int wilc_wlan_cfg_set_wid(u8 *frame, u32 offset, u16 id, u8 *buf, int size);
 int wilc_wlan_cfg_get_wid(u8 *frame, u32 offset, u16 id);
-int wilc_wlan_cfg_get_wid_value(struct wilc *wl, u16 wid, u8 *buffer,
-				u32 buffer_size);
+int wilc_wlan_cfg_get_val(struct wilc *wl, u16 wid, u8 *buffer,
+			  u32 buffer_size);
 void wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
 			       struct wilc_cfg_rsp *rsp);
 int wilc_wlan_cfg_init(struct wilc *wl);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
