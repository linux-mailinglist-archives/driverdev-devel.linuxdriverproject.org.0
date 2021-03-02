Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 32207329B21
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 11:54:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7984483DC8;
	Tue,  2 Mar 2021 10:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GpIANFv6p_fd; Tue,  2 Mar 2021 10:54:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C36A783DB4;
	Tue,  2 Mar 2021 10:54:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 09AEC1BF281
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 10:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EACA683D8F
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 10:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j_BLQp0jWOKG for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 10:54:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FDA683D7E
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 10:54:16 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id f12so15547843wrx.8
 for <devel@driverdev.osuosl.org>; Tue, 02 Mar 2021 02:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WTqhktbSK+pb9FujmiEWqSsD3Ov6W1SagmahMe1crb4=;
 b=eekxItstzdek5bmY3Fy4eehDypAbrdub+lzL53FCHxqePg1RLZDjbEEHCxfe7H5MeL
 towuuIVEYAu76BFuny9l7i0558AzCjJQwktgvVC56VAIPG5pefsy7m+wYCgrwh0OwpNx
 tZb3O6EXXH7lqAbnkqYPREIe4oOmXsySzOSAbCE85QopRCcIKKht9ZcDJ0rpP7mYKEnK
 vviYTzhYaT90BQj+oIszMmWAJJrLlYs+e3CcNZ6yaJkA99jdrNtqgOWem7BKqI0WnguT
 SlYzp+ZW5ClaM4W0z+R77lXtqsS8NOCLuyQkkuFQ36eA8CGjqoL3YiRE2anwN2GEu1oP
 fZ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WTqhktbSK+pb9FujmiEWqSsD3Ov6W1SagmahMe1crb4=;
 b=Y7ZzATGnEu3vIuifxMEAF9sO4Z4J8e4gn28xVrK9yn/l0cKNawl7iVrj63SJR47nB3
 lNXgw86xthPhupJTvGBp86NtxW81LsGTB5KMzVBbj3J9/UFL70+vwGoolJGPXMS57WHt
 +HxdCPB5ALHXjbp5o6LHvSM1m1QsssVps1NNGG8AWh9mpGhIgvf/0rQ2ULrC9ZxC3yjA
 t5k0nucqyMNSvhQHrDPDuwoGqqP+hJ9g+jsgEF/36k27htaS7Fw15BPDUMlQttH18FBI
 9bO+Knn4resvEBxh6cYMS+Fn/iturIynJ/CqzZ+yHBKMTvFa1aXwp0X4aD2iyBdcTCE0
 JIUA==
X-Gm-Message-State: AOAM532pQAP4ZUZAc6TfpbGsJprUAQICXt2kSMq5kyPYa6CLLGyCKo5D
 J0/5qPxvRlje293cMfFCMIo=
X-Google-Smtp-Source: ABdhPJz2NeMkaA+BYqC42OXCin/GZFMyb6o91RKMQqOLxd9eWe0+cyjePPdLgXfy8TyNxcUMz/i6ZA==
X-Received: by 2002:a5d:4c81:: with SMTP id z1mr6493646wrs.85.1614682454582;
 Tue, 02 Mar 2021 02:54:14 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id v5sm2270407wmh.2.2021.03.02.02.54.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Mar 2021 02:54:14 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Subject: [PATCH] phy: ralink: phy-mt7621-pci: fix XTAL bitmask
Date: Tue,  2 Mar 2021 11:54:12 +0100
Message-Id: <20210302105412.16221-1-sergio.paracuellos@gmail.com>
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
Cc: linux-phy@lists.infradead.org, devel@driverdev.osuosl.org, neil@brown.name,
 linux-kernel@vger.kernel.org, kishon@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When this was rewriten to get mainlined and start to
use 'linux/bitfield.h' headers, XTAL_MASK was wrong.
It must mask three bits but only two were used. Hence
properly fix it to make things work.

Fixes: d87da32372a0 ("phy: ralink: Add PHY driver for MT7621 PCIe PHY")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/phy-mt7621-pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
index 9a610b414b1f..84ee2b5c2228 100644
--- a/drivers/phy/ralink/phy-mt7621-pci.c
+++ b/drivers/phy/ralink/phy-mt7621-pci.c
@@ -62,7 +62,7 @@
 
 #define RG_PE1_FRC_MSTCKDIV			BIT(5)
 
-#define XTAL_MASK				GENMASK(7, 6)
+#define XTAL_MASK				GENMASK(8, 6)
 
 #define MAX_PHYS	2
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
