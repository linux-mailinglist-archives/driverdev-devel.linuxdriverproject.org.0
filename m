Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BE210EB73
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Dec 2019 15:18:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 42BFD214FD;
	Mon,  2 Dec 2019 14:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uDal8Q+jDnmL; Mon,  2 Dec 2019 14:18:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E303B20029;
	Mon,  2 Dec 2019 14:18:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0359C1BF3F7
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 14:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 00126859D6
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 14:18:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VueQTjwAhjTX for <devel@linuxdriverproject.org>;
 Mon,  2 Dec 2019 14:18:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3689E859D2
 for <devel@driverdev.osuosl.org>; Mon,  2 Dec 2019 14:18:41 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id 14so32487374oir.12
 for <devel@driverdev.osuosl.org>; Mon, 02 Dec 2019 06:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=O46JpsiVxHvaxS9r0mmnF1X/0tTav9FJHQ6vC2vquJw=;
 b=g2QYFcaKIw/JDRmMvOZflR5+0GUDYg7cmf7W8uyyyHlmAHecHOqGRDXGbXgrevGLVm
 dvZ3OQg3PixAB6iHLoVO/aYmXN4Y3nSx/JgztQdyTWiOZV1sEDrATSUMOHd3LYMU8sJj
 RtvJ8HNPoOBWkiZIdsoPhVneamKnd1Zf2M1pDpXWFr92A+z3qzQbj6F5oX05HVUOzr/l
 JBVRUiUAWjOgvAJLO6Xks3Org+ESsdydQlG/bc0m8/9vAMsI3SPhiOD1NXGGbbjIzRlQ
 gCDE/gotWIkTUw45CCm4scIw/E8b2RTg+LZD9LnJ0i5k+BQjBsFMeVCBWhLevC/DsbY9
 x/gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=O46JpsiVxHvaxS9r0mmnF1X/0tTav9FJHQ6vC2vquJw=;
 b=K+oqni+uu6ya0k5O7FkdQXGtw1QHbozg2c8/VrcYL2Dqamh89MDbCE/BT7xTqfumDV
 54MI2K8TQiOegoFyB2LKJ2ivz1dwfoVU5aaaB2bdy2KvC8P0cLtuQn5dITTAkrUyMbWK
 E2FKzeOgogyHsIVVw+v2teu03DTGkJ09cZcCvm6tjL3kDCnaBSqhFkPoSU57t8Cv3Y4C
 6UfgpfRDGdM0D0Dz5gEPUGVFomPsWfOaEy4g8Khjc+/Tchx4c2bDpxONbzlZCslNnTaL
 /RPYCc3vsMVlmymGDZjrOQfDLCk8gYJ93GCGCTpcR1LwzhB8NTKJaowxrgwlWALhwcQS
 cqGQ==
X-Gm-Message-State: APjAAAXaSqrOT0g5OszHTEKQAIjMxwdQhln0q4DDGL8bTFpUk7z3dNZf
 OR+9qcV8NYxgRBW7Bv97KJ8=
X-Google-Smtp-Source: APXvYqxyrI1tz3YpJ7VUSwiwzYbkct9KmqvLK02ptOCkAvbtQJ0paKYrFJPLjOWCJiPYFEsncZwvEg==
X-Received: by 2002:a05:6808:98d:: with SMTP id
 a13mr1786184oic.7.1575296320344; 
 Mon, 02 Dec 2019 06:18:40 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id y16sm7758914otq.60.2019.12.02.06.18.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Dec 2019 06:18:39 -0800 (PST)
From: Guenter Roeck <linux@roeck-us.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging/octeon: Mark Ethernet driver as BROKEN
Date: Mon,  2 Dec 2019 06:18:36 -0800
Message-Id: <20191202141836.9363-1-linux@roeck-us.net>
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
Cc: devel@driverdev.osuosl.org, Julia Lawall <julia.lawall@lip6.fr>,
 linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The code doesn't compile due to incompatible pointer errors such as

drivers/staging/octeon/ethernet-tx.c:649:50: error:
	passing argument 1 of 'cvmx_wqe_get_grp' from incompatible pointer type

This is due to mixing, for example, cvmx_wqe_t with 'struct cvmx_wqe'.

Unfortunately, one can not just revert the primary offending commit, as doing so
results in secondary errors. This is made worse by the fact that the "removed"
typedefs still exist and are used widely outside the staging directory,
making the entire set of "remove typedef" changes pointless and wrong.

Reflect reality and mark the driver as BROKEN.

Fixes: ef1fe6b7369a ("staging: octeon: remove typedef declaration for cvmx_wqe")
Fixes: 73aef0c9d2c6 ("staging: octeon: remove typedef declaration for cvmx_helper_link_info")
Cc: Wambui Karuga <wambui.karugax@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
 drivers/staging/octeon/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/octeon/Kconfig b/drivers/staging/octeon/Kconfig
index 5319909eb2f6..e7f4ddcc1361 100644
--- a/drivers/staging/octeon/Kconfig
+++ b/drivers/staging/octeon/Kconfig
@@ -3,6 +3,7 @@ config OCTEON_ETHERNET
 	tristate "Cavium Networks Octeon Ethernet support"
 	depends on CAVIUM_OCTEON_SOC || COMPILE_TEST
 	depends on NETDEVICES
+	depends on BROKEN
 	select PHYLIB
 	select MDIO_OCTEON
 	help
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
