Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 801286C1EC
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jul 2019 22:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4E4A82270C;
	Wed, 17 Jul 2019 20:12:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OrvYwF5mBCMR; Wed, 17 Jul 2019 20:12:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B318226F5;
	Wed, 17 Jul 2019 20:11:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5FA8C1BF336
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 20:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 586D9875A2
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 20:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CJxg9y0WpwjJ for <devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 20:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9D87E87583
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 20:11:53 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id h21so24683711qtn.13
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 13:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=aXF9YjNGRVCKlAtbL0tVAMrOAXyOBM/cVbWCJmWIjRY=;
 b=OEE0T7NW8GXKa4IkI0g33CvRjWt+tKuSq6OtlaBYdZPT9X2RVTHISNbkhN10r8j/Gi
 bgLDuzEp9IpLD2UssVXvKcGciz9CJzaKjFNcbRCMjF7+AUls04mOv+SebbSfQT786f5+
 GbNt2cVTkGIQ7PeS40/S1BPUZxhHCAHSHUH65QxribnTd3IHws8mXHhFzK2N44N1BlIu
 z+UN6G1gv9IsI51vmJhAz1oP4yT0boomGFduNUX81TjmGDq+37UlhZVQk1Bwl9zFghnz
 cR4gqdB++f+QCZ/Sn0maocW9e+Xs3z4XRn1J0BjJK4sr3V8BgNseeILo8JkTgtf60i+V
 dOuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aXF9YjNGRVCKlAtbL0tVAMrOAXyOBM/cVbWCJmWIjRY=;
 b=G87n0vUCg8Uk4SXJsVwltEMzb1JLUN/q/TdpZZ4Vz08lo4Yi+TP4Ur4CORBc2MCZOW
 cz0v95G5EVwHeAls3IlC/7xkdI8Jlwdq+Zz4/JObqM4g/vDSUaVnt6D4vK2rR77TkjPu
 cTf61QmPwvibiREDWSs5Xg0OGJ6Ybc5yP6CRurJv6JhRiBCNFkqGj5ZCmtyGjm0vlPEl
 GhVhZj/wCGN2fNxTybb8tMJBx9b/rJ3ipsJg1rNm9IGP6QdSy5aIUY8/R9i1KPH+iup1
 vvVEjLeP98NZVv5YH72X+lVOycySebsK330RX1RpYcVzrzwcr4MzuB6bvC9Pzzue1zCM
 eWrA==
X-Gm-Message-State: APjAAAV4awZF09XVuNtbp3hfiJpskeyaQTWh7Z6ablmWsOCz6dOchXBP
 l13JMSgSGss03HfYL+ETHMkven6xigjJQA==
X-Google-Smtp-Source: APXvYqzr2Hlv8Z3a/qc8bpgmZo3SR+IklR6PK1qaWMLb29Rj6uz8Mvia4TyysKl0TGyTH02a3wcYnQ==
X-Received: by 2002:ac8:2a99:: with SMTP id b25mr29479379qta.223.1563394312784; 
 Wed, 17 Jul 2019 13:11:52 -0700 (PDT)
Received: from localhost.localdomain (host131.190-229-79.telecom.net.ar.
 [190.229.79.131])
 by smtp.gmail.com with ESMTPSA id a6sm11187296qkd.135.2019.07.17.13.11.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 17 Jul 2019 13:11:51 -0700 (PDT)
From: Karen Palacio <karen.palacio.1994@gmail.com>
To: linux-erofs@lists.ozlabs.org,
	gaoxiang25@huawei.com,
	yucha0@huawei.com
Subject: [PATCH] v3: staging: erofs: fix typo
Date: Wed, 17 Jul 2019 17:11:19 -0300
Message-Id: <1563394279-6719-1-git-send-email-karen.palacio.1994@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Karen Palacio <karen.palacio.1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix typo in Kconfig

Signed-off-by: Karen Palacio <karen.palacio.1994@gmail.com>

diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
index d04b798..0dcefac 100644
--- a/drivers/staging/erofs/Kconfig
+++ b/drivers/staging/erofs/Kconfig
@@ -88,7 +88,7 @@ config EROFS_FS_IO_MAX_RETRIES
          If unsure, leave the default value (5 retries, 6 IOs at most).

 config EROFS_FS_ZIP
-       bool "EROFS Data Compresssion Support"
+       bool "EROFS Data Compression Support"
        depends on EROFS_FS
        select LZ4_DECOMPRESS
        help
---
 drivers/staging/erofs/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
index d04b798..0dcefac 100644
--- a/drivers/staging/erofs/Kconfig
+++ b/drivers/staging/erofs/Kconfig
@@ -88,7 +88,7 @@ config EROFS_FS_IO_MAX_RETRIES
 	  If unsure, leave the default value (5 retries, 6 IOs at most).
 
 config EROFS_FS_ZIP
-	bool "EROFS Data Compresssion Support"
+	bool "EROFS Data Compression Support"
 	depends on EROFS_FS
 	select LZ4_DECOMPRESS
 	help
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
