Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C1831D88F
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 12:42:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA35A6F603
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 11:42:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tBzJvUmQIFF4 for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 11:42:47 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id BE46F6F59F; Wed, 17 Feb 2021 11:42:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59E846F5CE;
	Wed, 17 Feb 2021 11:41:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1703B1BF4D8
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 11:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 069566F59F
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 11:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 64N5an9YUHe1 for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 11:40:17 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 0322D6F569; Wed, 17 Feb 2021 11:40:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F8276F479
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 11:40:11 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id n10so3344829wmq.0
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 03:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jiX7X0M+t1Zm8HAFufsMGCFO60ftU2nIQxPg0v/LgAc=;
 b=Ss506/A9nt5EKOBvaSCczz2B78J4fjW/sVk668oJ+QuvY95oROp0eklSyg9pr7JfKV
 Mj7Hbwnd6wykfTZbiW1X70hvA4E+2/yCHGJIAcSu8539zp9rl42W0sFy7UpRb5IFzQkw
 AK3rgwAq3LrU7FUCg7abR4XIE66up10sLZM+SGhcBBTCLGpKinGYHRq8goMmv+1yURqm
 XaKHI9rVsnTw+4+nUXNDMALxNIWR2djiPa/6fWXNJIBDmPQ1JHYNuEgw9BJPZOIhN6Zu
 8Wd9J29cCjg90v+a3nmb23HtngIW0mrVcf5TqZCmSz6MYCkoHYn20VMifX3Zwl4hwR92
 73Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jiX7X0M+t1Zm8HAFufsMGCFO60ftU2nIQxPg0v/LgAc=;
 b=K3JfnxSTkpDKX0tRC2W8x7O5NQrYEZsEPMDgKBkggv4dR3eNiHpyYGhOtcd81GJc/O
 ZumpFR/OLuRsqQut7lrbiLW1iNqRFCsJ3K2jzrYzgJfQ9IU+4CAMh+BTIL+c47ibwLrj
 ///SzQiV3riRKig30IaqbS69yiIGq9rT2/m0JqzdL9KEW+jqT6jQsu9YJBs/lY5MuQcm
 dKLAnbMkysjZKXWqvH8C47EA5oXJeOBrRjnib7kCKxlAN7APPx6NHdikkvn32x+cHmvD
 Dmx7GD7CMy0QQ5r4VWQRcr6g7ezq0v/LvH9X1HvI/JQkALpuDooUKKibo44o+aaP2Wop
 4vzg==
X-Gm-Message-State: AOAM5334P0a+qfnMK5ecDzHp/H3MO46RoCK2DkEL1EG5TZurqUoXql4s
 ORYvb61lHc+35sZG42HEvaU=
X-Google-Smtp-Source: ABdhPJzuePG01HjKt42jOlK+RehB6tXeB77Vpegn7SuiLtjx93WLKQvzB1N6h//7lhj7llHgXFcT8w==
X-Received: by 2002:a1c:4903:: with SMTP id w3mr1982855wma.143.1613562009880; 
 Wed, 17 Feb 2021 03:40:09 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id q140sm3600813wme.0.2021.02.17.03.40.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 03:40:09 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v7 6/6] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Wed, 17 Feb 2021 12:40:00 +0100
Message-Id: <20210217114000.19571-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217114000.19571-1-sergio.paracuellos@gmail.com>
References: <20210217114000.19571-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 tsbogend@alpha.franken.de, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adding myself as maintainer for mt7621 clock driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 809a68af5efd..be5ada6b4309 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11288,6 +11288,12 @@ L:	linux-wireless@vger.kernel.org
 S:	Maintained
 F:	drivers/net/wireless/mediatek/mt7601u/
 
+MEDIATEK MT7621 CLOCK DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
+F:	drivers/clk/ralink/clk-mt7621.c
+
 MEDIATEK MT7621/28/88 I2C DRIVER
 M:	Stefan Roese <sr@denx.de>
 L:	linux-i2c@vger.kernel.org
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
