Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A09E99779
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 16:56:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C0D6222128;
	Thu, 22 Aug 2019 14:56:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yMYiVF10kx+N; Thu, 22 Aug 2019 14:56:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F186A2094B;
	Thu, 22 Aug 2019 14:56:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DEBF81BF989
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 14:56:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DB88E8631C
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 14:56:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y_9TMGgjWJJ0 for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 14:56:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0DEEC86241
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 14:56:07 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id o70so4142651pfg.5
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 07:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9y5itPLnpcVOdzgVtHzR1LOFt6H78BIqA5apIhfjoK8=;
 b=Vz8e+V79VwQsjywNDbk7VSY5y2swKwKxa/ZD9Dda53U2s+ij+eTPxkRkQRBnZlE4/K
 ++o+xim127n5SbahZFzujyrUgN2h0u3WncOok/buYy5nU3HzpinjJzydcwwlVz6RI/kW
 1P+FwYKB/ivtJMCySLoRcgyt/hKV2rzDgQm95Ri8qjZTHxo+xeEzJOGUFO6DX1z1BwEJ
 2MWpI0G94RQ2Cyl267i3SxrW0HsFOpShDArAiX5mSeO6S5DO776VYTKgtTHPFJRtHBWt
 bt9k98AjhMNKDgabl0tHcKBVOvQmuRz+Wv1SYSlV1EmZpsjhtW8t0unrXmuRep9MMcAr
 yddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9y5itPLnpcVOdzgVtHzR1LOFt6H78BIqA5apIhfjoK8=;
 b=TNWz3FVQH0nTDnBFJvE4SS5TYlonWZ8ognj3BG3ajle4R6iuKRDof2nXz5n7Sd5UzU
 64GUlAY+3Cqmir5jbf+eBLhUonb1tU36AIULlWOoZYFv/WswwUNS0c0bjFwsKF3HKH84
 Or6sH159NEkSFu7BwLeQ3yPqu7/YP08zQMYO81fBFrXI/xowgVyG3I1/a9iUvX0IDmSf
 mSa6R6DVzHeSJ/XNXNxPn08llianKVSGonpmR0S6tpcJxrm4KUybWhnnuZK26+1xXut2
 dsMpHpQq3GG5LKAhc1WZLk+q6FuMlWnkfliQD5ZC8g4MXoBsjYhz7A7+WbSrHfRO1mHl
 +ohw==
X-Gm-Message-State: APjAAAXrlP9ZQWZGLf82TOzqcum8PzfPzjE8O96XGQpbOplNBdkil0SU
 A4oY2LdQQTgzUXNc1BwaY2M=
X-Google-Smtp-Source: APXvYqwTsjy4n7RAkF1zbe0aXDwrPOZzbZZkvrLhJMqMWFifBxDGozn/BztwMgdWL4RsAq1AdY1Qtg==
X-Received: by 2002:a65:6096:: with SMTP id t22mr35124085pgu.204.1566485766443; 
 Thu, 22 Aug 2019 07:56:06 -0700 (PDT)
Received: from localhost.localdomain ([157.41.19.56])
 by smtp.gmail.com with ESMTPSA id w207sm29504764pff.93.2019.08.22.07.55.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 07:56:05 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192u: Remove unnecessary blank lines
Date: Thu, 22 Aug 2019 20:25:45 +0530
Message-Id: <20190822145545.19894-1-sylphrenadin@gmail.com>
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

This patch fixes the file r8180_93cx6.c to avoid the checkpatch.pl warning:

	CHECK: Please don't use multiple blank lines

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/rtl8192u/r8180_93cx6.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8180_93cx6.c b/drivers/staging/rtl8192u/r8180_93cx6.c
index de83daa0c9ed..6ebf121eac0c 100644
--- a/drivers/staging/rtl8192u/r8180_93cx6.c
+++ b/drivers/staging/rtl8192u/r8180_93cx6.c
@@ -39,7 +39,6 @@ static void eprom_cs(struct net_device *dev, short bit)
 	udelay(EPROM_DELAY);
 }
 
-
 static void eprom_ck_cycle(struct net_device *dev)
 {
 	u8 cmdreg;
@@ -58,7 +57,6 @@ static void eprom_ck_cycle(struct net_device *dev)
 	udelay(EPROM_DELAY);
 }
 
-
 static void eprom_w(struct net_device *dev, short bit)
 {
 	u8 cmdreg;
@@ -76,7 +74,6 @@ static void eprom_w(struct net_device *dev, short bit)
 	udelay(EPROM_DELAY);
 }
 
-
 static short eprom_r(struct net_device *dev)
 {
 	u8 bit;
@@ -94,7 +91,6 @@ static short eprom_r(struct net_device *dev)
 	return 0;
 }
 
-
 static void eprom_send_bits_string(struct net_device *dev, short b[], int len)
 {
 	int i;
@@ -105,7 +101,6 @@ static void eprom_send_bits_string(struct net_device *dev, short b[], int len)
 	}
 }
 
-
 int eprom_read(struct net_device *dev, u32 addr)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
