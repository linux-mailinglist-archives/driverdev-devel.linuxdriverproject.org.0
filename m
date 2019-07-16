Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7956A1FE
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 07:59:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 270148466D;
	Tue, 16 Jul 2019 05:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B5Lxxhg6bsqR; Tue, 16 Jul 2019 05:59:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C524F86DE7;
	Tue, 16 Jul 2019 05:59:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E0311BF20D
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 05:59:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9ABF487D28
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 05:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gtKuB8JUOh1E for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 05:59:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 213F987CDB
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 05:59:24 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id k8so9527499plt.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 22:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6l7dCx5edcO6RwvaAinlu+M2qmX8TDyHV2A8jZAyY8Q=;
 b=i92Tmb+Bal3+8XJqpnTg9inAk6FNoZv4I/FihJEuFZXhnG0D0D4hIXa94lhe2KJk8k
 rvezLDbCgyNbFMWBT8O/kz7NRM0+NvzV+dK9jHUq84WKoH9MmXv0O9dS6FtrjrQEMBNv
 r3JTgsWg+opPqpMkWhrVmE/J7WoAa20OaMig+ySUDxe8JiPwq4Iu+IGE/F5Dvyhk6ftN
 RQhS2Mr6EX2d/Sbh0124BIKBWJzqR6ixjL1+mqT7z3rTZCIlhPfFcnM39luo8HWToCD/
 wGWVfxRQIuUCUniBGYzLSCEx0T7prZ/sn3uy2isSCd1OiORZTLi/S2stcMv6OYx6DY5V
 8LDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6l7dCx5edcO6RwvaAinlu+M2qmX8TDyHV2A8jZAyY8Q=;
 b=e0KNLmBb8Wyxo61ciSkWrqtWlPRax0FuQqbRNlatzPQGexP2MWFDTP2i03IoHRzHNs
 lkjKveC9Fe6IBsJwbEQHD0Onn9nsbQBIJ6f4Bp+rZEPvNl5kaFm058Xt0xgoYyNyIeMb
 Itxo7ehM8uzUWxaCQAXOLN//2868nbymmR+FORMX2IULO/wEIvLk+cPgvjXmYcpWiDu8
 O/cTO6PHpHG+FQv9Pb0gRGY2Ub8xpVdHdDEYH1/2LL4PePD0fujtXl4DQLkcy5hEyfnO
 vyKrnws3lC+8qf9HsvgLHDX+ZaCnrlCNbCSo9wMxCVGwH4Nk4KVzfqJW453pISZMdMC2
 0PKg==
X-Gm-Message-State: APjAAAU9PBIZrEff2MjsOyQPlxKroApWcGpT/QN3GrC6R+qJWakxlVaR
 dQFO6PL7fL6UkcipquVaVOk=
X-Google-Smtp-Source: APXvYqwCf6KtHt2GyDgvCvteTRTOTBdHkHuk8xPTjXlosefuw+fShIhw1w8zMJCW1TlCUQJEM1N2DA==
X-Received: by 2002:a17:902:e512:: with SMTP id
 ck18mr31355635plb.53.1563256763728; 
 Mon, 15 Jul 2019 22:59:23 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id w14sm20801735pfn.47.2019.07.15.22.59.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 22:59:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, matthias.bgg@gmail.com,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH] staging: mt7621-pinctrl: Add of_node_put() before return
Date: Tue, 16 Jul 2019 11:29:08 +0530
Message-Id: <20190716055908.3183-1-nishkadg.linux@gmail.com>
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

Each iteration of for_each_compatible_node puts the previous node, but
in the case of a return from the middle of the loop, there is no put,
thus causing a memory leak. Add an of_node_put before the return.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
index 9b52d44abef1..d0f06790d38f 100644
--- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
+++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
@@ -358,12 +358,15 @@ static int rt2880_pinmux_probe(struct platform_device *pdev)
 		gpiobase = of_get_property(np, "ralink,gpio-base", NULL);
 		if (!ngpio || !gpiobase) {
 			dev_err(&pdev->dev, "failed to load chip info\n");
+			of_node_put(np);
 			return -EINVAL;
 		}
 
 		range = devm_kzalloc(p->dev, sizeof(*range), GFP_KERNEL);
-		if (!range)
+		if (!range) {
+			of_node_put(np);
 			return -ENOMEM;
+		}
 		range->name = "pio";
 		range->npins = __be32_to_cpu(*ngpio);
 		range->base = __be32_to_cpu(*gpiobase);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
