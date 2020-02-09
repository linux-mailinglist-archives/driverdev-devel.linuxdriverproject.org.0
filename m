Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE98156B9D
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Feb 2020 17:56:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA7C585C19;
	Sun,  9 Feb 2020 16:56:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xT+BQy6YEC8g; Sun,  9 Feb 2020 16:56:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43CD2857C2;
	Sun,  9 Feb 2020 16:56:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 517971BF3EB
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 16:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4D69820334
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 16:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J4kZB1IlFhMC for <devel@linuxdriverproject.org>;
 Sun,  9 Feb 2020 16:56:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E53F20012
 for <devel@driverdev.osuosl.org>; Sun,  9 Feb 2020 16:56:46 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id t14so1817603plr.8
 for <devel@driverdev.osuosl.org>; Sun, 09 Feb 2020 08:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bYXiQhC5n5u/ihEX7aKChFXEwfa9YarVLF2hhJhV42c=;
 b=uanZS5YpnfBmwJUJ+r7OgAIA+Wsd5XvpvXQfwihhP7Ttal4Tm5IkYeuk+IiGByv6eF
 /zKEGckzC10V04/gVbf0PsNBDMzyde4Q6MwMdvWd1vaYsLaBTd4gNI45Q6ge6Frucrd7
 rGzwmt9IptGJ8d8hCEX4iHW1wB5sqLu6Xdp4ebKFpfeGRsw9kNaffQOcG/Va3CIoZW4/
 x2MaSGngOv26K/HKqPbqmmpjonL2S465KBSlVsL/znwNp0PfRfN1GiOA4OLcGzLtM8aG
 HjAKy1H5Z0mYFcRt4T9D+Pc7k1GC8Q/wM0FNCu20O1m9qf/WSWCzcgB8kf3CRmHjpzhY
 wVCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bYXiQhC5n5u/ihEX7aKChFXEwfa9YarVLF2hhJhV42c=;
 b=qOGoOB0eiI9GJT8N+EXOPl0gAJIiMY22j+Sol+lXOf4+ix0meMddpj31u+go0WHYaw
 XuEZBiIfB5Juhzu8cakPDQkwD/hl6E97YpoELFkhGylqkMAX8BsvDQuoxVlD8B4kgvMf
 1ynH+ZKXR/TLyQDEpREuRHBiTaRo7ThludVhshDws9qIoslf2ju3RBA/LzgJl7bk76KM
 qIFvMa6EGOeP0Uaf6BqvJC+ftnkHyIk4GukTWuyzC92riVnzr03/AkiUwRlMQein+QcE
 pskwHGT++rz1IJKNENq9gaqXSz9VADbdZpTkpsli5jY9fhK+DIic+4v0OnIXEC/3gf0i
 ZZXw==
X-Gm-Message-State: APjAAAXZUonP/LNHuJrQjb456vn5k5BkYS2t6NDN0oSRogLpVDQp0ZtV
 FcuKtZIcL0pX/jwxl+KB9G0=
X-Google-Smtp-Source: APXvYqyTLAgUBwo4RbJ29MJo22d4RDu1W7S/60tnhf9FFhVXSEX981uJZSEVQ790JyDQrCTveCttwQ==
X-Received: by 2002:a17:90b:243:: with SMTP id
 fz3mr16500653pjb.29.1581267406107; 
 Sun, 09 Feb 2020 08:56:46 -0800 (PST)
Received: from localhost.localdomain ([157.44.204.164])
 by smtp.googlemail.com with ESMTPSA id c184sm9785000pfa.39.2020.02.09.08.56.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 08:56:45 -0800 (PST)
From: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: qlge: remove spaces at the start of a line
Date: Sun,  9 Feb 2020 22:26:19 +0530
Message-Id: <20200209165619.18643-1-ymdatta.work@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <ymdatta.work@gmail.com>
References: <ymdatta.work@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, ymdatta.work@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes "WARNING: please, no spaces at the start of a
line" by checkpatch.pl.

Signed-off-by: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index ef8037d0b52e..86b9b7314a40 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -52,16 +52,16 @@ MODULE_LICENSE("GPL");
 MODULE_VERSION(DRV_VERSION);
 
 static const u32 default_msg =
-    NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
+	NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
 /* NETIF_MSG_TIMER |	*/
-    NETIF_MSG_IFDOWN |
-    NETIF_MSG_IFUP |
-    NETIF_MSG_RX_ERR |
-    NETIF_MSG_TX_ERR |
+	NETIF_MSG_IFDOWN |
+	NETIF_MSG_IFUP |
+	NETIF_MSG_RX_ERR |
+	NETIF_MSG_TX_ERR |
 /*  NETIF_MSG_TX_QUEUED | */
 /*  NETIF_MSG_INTR | NETIF_MSG_TX_DONE | NETIF_MSG_RX_STATUS | */
 /* NETIF_MSG_PKTDATA | */
-    NETIF_MSG_HW | NETIF_MSG_WOL | 0;
+	NETIF_MSG_HW | NETIF_MSG_WOL | 0;
 
 static int debug = -1;	/* defaults above */
 module_param(debug, int, 0664);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
