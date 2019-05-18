Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38903221CD
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 08:34:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD8D9885B1;
	Sat, 18 May 2019 06:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a1mBGoxgaGCR; Sat, 18 May 2019 06:34:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7252C8844C;
	Sat, 18 May 2019 06:34:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 050461BF405
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:34:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0333822882
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k1PzyK0H9-4r for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 06:34:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id A09CB21FEF
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 06:34:38 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id gn7so175126plb.10
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 23:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PqyqrEGcVflPYSbWxCmc19o3WqCd1AbIiuoNiUkRp7M=;
 b=iR8E4eqKoWFy1XQ29eS59a4xHdMW8JkyLu7jv1f3bCL9b230Wl0UOAJCN+M8HzTSL5
 pdLFoVwg91U7VEawkTPIWYxELDdavsHM0EAVFgJ+vIqziCFtSvOHso7FigAK9eTkqW/G
 478byixgBjGbbErNDW3ZrUuhJbzl5zGuHroikdOyvEDQ/35yKJt5vnxEcVUOWYlvcMUF
 6J0Zpv55SLcZ0rh0wz8j0TJmm7uVz7XIZlDCcz3gqElo6BlslshtN/DAzTm7L3mPm1pl
 Kf2QNPTyTGDZtIY1uAQE49sCyY7a6mUizeSRr53SKhHGedsXvTYpnY8kCL97e/BbjwrZ
 F3GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PqyqrEGcVflPYSbWxCmc19o3WqCd1AbIiuoNiUkRp7M=;
 b=EXOK6YEn6hep5wo/OzflXwlTM+eErPfoJ71vgVvLpp9+VCUlZ0p/3exHyJux8YwG7h
 UnGoOl++S+CMCEvNIki8RxbVer6iMd48AbaVqul3b2MyJofyfildXIQxmKTr5C75xf+3
 lOkNLTVfn419OSDYObwBP993h4kSitDUt7fdzNffxareZ91yu06C3kQ5GGQrka2HwBYg
 KNduwKnjtCgyIzG/cD2soec94zMue8ixRzW8FM39YZmAD+knfUIHpjp34Y1MLMkxaZk8
 jr8Vi9rX25u+7PxbZR1UntKAJjTrpTJcKvy1vLkYSmr87gBkbh0Y0tCD8CZv4geT8QQd
 invw==
X-Gm-Message-State: APjAAAU68XvlYBCgrjkRR5HCAgTv+QaBsjTSZVp9hMNUfXkyPapJ/3Tj
 Gjty6AauExLAIYIeK8j2GWY=
X-Google-Smtp-Source: APXvYqy29JCJ1+mDdZ+Eich0xxHz0Ik96q/M/5q5YQlNvQY1obhr7KA1e0bCcTtE3b6Zr4/WUl1wjw==
X-Received: by 2002:a17:902:4101:: with SMTP id
 e1mr62992501pld.25.1558161278327; 
 Fri, 17 May 2019 23:34:38 -0700 (PDT)
Received: from localhost.localdomain ([103.227.98.84])
 by smtp.googlemail.com with ESMTPSA id h26sm14347874pgh.26.2019.05.17.23.34.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 23:34:37 -0700 (PDT)
From: Moses Christopher <moseschristopherb@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/6] staging: fsl-dpaa2: use help instead of ---help--- in
 Kconfig
Date: Sat, 18 May 2019 12:03:36 +0530
Message-Id: <20190518063341.11178-2-moseschristopherb@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190518063341.11178-1-moseschristopherb@gmail.com>
References: <20190518063341.11178-1-moseschristopherb@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Moses Christopher <moseschristopherb@gmail.com>,
 arnd@arndb.de, insafonov@gmail.com, sparmaintainer@unisys.com,
 hdegoede@redhat.com, forest@alittletooquiet.net, yangbo.lu@nxp.com,
 christian.gromm@microchip.com, davem@davemloft.net, Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  - Resolve the following warning from the Kconfig,
    "WARNING: prefer 'help' over '---help---' for new help texts"

Signed-off-by: Moses Christopher <moseschristopherb@gmail.com>
---
 drivers/staging/fsl-dpaa2/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/Kconfig b/drivers/staging/fsl-dpaa2/Kconfig
index 368837cdf281..244237bb068a 100644
--- a/drivers/staging/fsl-dpaa2/Kconfig
+++ b/drivers/staging/fsl-dpaa2/Kconfig
@@ -6,7 +6,7 @@
 config FSL_DPAA2
 	bool "Freescale DPAA2 devices"
 	depends on FSL_MC_BUS
-	---help---
+	help
 	  Build drivers for Freescale DataPath Acceleration
 	  Architecture (DPAA2) family of SoCs.
 
@@ -14,6 +14,6 @@ config FSL_DPAA2_ETHSW
 	tristate "Freescale DPAA2 Ethernet Switch"
 	depends on FSL_DPAA2
 	depends on NET_SWITCHDEV
-	---help---
-	Driver for Freescale DPAA2 Ethernet Switch. Select
-	BRIDGE to have support for bridge tools.
+	help
+	  Driver for Freescale DPAA2 Ethernet Switch. Select
+	  BRIDGE to have support for bridge tools.
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
