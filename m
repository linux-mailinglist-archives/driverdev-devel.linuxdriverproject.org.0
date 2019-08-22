Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8F39A022
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 21:36:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D92D086B26;
	Thu, 22 Aug 2019 19:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZATCjHX8RDDQ; Thu, 22 Aug 2019 19:36:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8B9886B15;
	Thu, 22 Aug 2019 19:36:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B31531BF3B8
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 19:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B06DA2010A
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 19:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9z0wS6LTbs0F for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 19:36:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 3830A227C4
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 19:36:06 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id n190so4270101pgn.0
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 12:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sNbhK2z/2631ntMbFY0p8Wt5evMIh/XuI1xGWvHU3a4=;
 b=K9FFULu/E9ewypKU+uD4SNJGrvPuxuL7WjQzCBqeW5zHjQmU2yBVGS6OQouef6oqqy
 3VPhM5xwRBg9IOrOw5qYGKtS+vfMxdasGB/EjaIQMA/tREUdZnUGyUp/Ul7xuCxHfiCD
 A3EY4II94KqhVXAKwg4WpIz0ae1/9oL3JUeWQAvNbujxD/Xu7MiqZ1z1CRUfvQkQ8Egz
 3/MULPSaWkwnmN7SizZEMEn10Gc6RsmgI1yAYOL474t4ImjVESd1lIoEkSsLP4JJLVpQ
 AcG6JqQIae6s66wEUVCB6KizUn8aU3/6wcNT72KWzTxT/a0f7VruJy8FpN8yF5CNUhWz
 0Gsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sNbhK2z/2631ntMbFY0p8Wt5evMIh/XuI1xGWvHU3a4=;
 b=CbK4Byr2SYn5QDzCU9zX6PixhU6WJQJnKsW82L+Pp9gyFKoOHMksfAZ86eV7ZfoQxO
 uCoM90k+7fVaourJVpHCjcSVbNfucwGvyUrrwsW6WauAFRtRmneqIYNXT5PAQKqJN7fc
 iLX1u6Nv26kLoK/jV0agVuGsAtKXE48Hgfc5+CHUuDAeoVDQm5P9uT1i+i8IWS3gjNmz
 bXG5DvXfVZ7c+V2105s15GkJ7EBQxPeGZJWPv265Z/b14b9WNXolv297yjDwEc3q2tle
 C+jj3WBIPV1G/156JVvOc8+ionHWJtt1OaNW7J/dCX5o4SkeuBIcZmp2QZySQWH1/s9z
 FOTg==
X-Gm-Message-State: APjAAAV63HDpah5h/JplFaMZol17h3ZKEXuCxh+i19sp0dr42KAGWZYV
 uZIFk2cM09pmtWFQwfGM8qI=
X-Google-Smtp-Source: APXvYqwbYU7dEaDYD0WFQbNKNf6S1ooccsKBuDo07AQ6tUHSh92zmYnQa5BFxWiZcoB7L10C3tjoJw==
X-Received: by 2002:aa7:946d:: with SMTP id t13mr899610pfq.121.1566502565869; 
 Thu, 22 Aug 2019 12:36:05 -0700 (PDT)
Received: from localhost.localdomain ([157.41.2.188])
 by smtp.gmail.com with ESMTPSA id y13sm201626pfb.48.2019.08.22.12.36.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 12:36:05 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192u: Add space around binary operators
Date: Fri, 23 Aug 2019 01:05:35 +0530
Message-Id: <20190822193535.14357-1-sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the file r8180_93cx6.c to avoid the checkpatch.pl warnings:

	CHECK: spaces preferred around that '<<' (ctx:VxV)
	CHECK: spaces preferred around that '-' (ctx:VxV)

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/rtl8192u/r8180_93cx6.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8180_93cx6.c b/drivers/staging/rtl8192u/r8180_93cx6.c
index 6ebf121eac0c..2527cea60e3e 100644
--- a/drivers/staging/rtl8192u/r8180_93cx6.c
+++ b/drivers/staging/rtl8192u/r8180_93cx6.c
@@ -114,7 +114,7 @@ int eprom_read(struct net_device *dev, u32 addr)
 	ret = 0;
 	/* enable EPROM programming */
 	write_nic_byte_E(dev, EPROM_CMD,
-		       (EPROM_CMD_PROGRAM<<EPROM_CMD_OPERATING_MODE_SHIFT));
+		       (EPROM_CMD_PROGRAM << EPROM_CMD_OPERATING_MODE_SHIFT));
 	force_pci_posting(dev);
 	udelay(EPROM_DELAY);
 
@@ -157,7 +157,7 @@ int eprom_read(struct net_device *dev, u32 addr)
 		if (err < 0)
 			return err;
 
-		ret |= err<<(15-i);
+		ret |= err << (15 - i);
 	}
 
 	eprom_cs(dev, 0);
@@ -165,6 +165,6 @@ int eprom_read(struct net_device *dev, u32 addr)
 
 	/* disable EPROM programming */
 	write_nic_byte_E(dev, EPROM_CMD,
-		       (EPROM_CMD_NORMAL<<EPROM_CMD_OPERATING_MODE_SHIFT));
+		       (EPROM_CMD_NORMAL << EPROM_CMD_OPERATING_MODE_SHIFT));
 	return ret;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
