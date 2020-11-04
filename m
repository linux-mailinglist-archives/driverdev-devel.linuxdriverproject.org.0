Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3852A6C8A
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 19:16:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27A50861FE;
	Wed,  4 Nov 2020 18:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yISepOJ3iNai; Wed,  4 Nov 2020 18:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D7AE860D1;
	Wed,  4 Nov 2020 18:16:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CB561BF5AD
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 18:16:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8426D20425
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 18:16:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X3x+y9zkLIzC for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 18:16:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 78E7120018
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 18:16:32 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id a71so18060735edf.9
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 10:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ScsUfMVtHVOkrxRg8IkMHR/vOs6RC0oZtG2XpQSfnDc=;
 b=GG12ddCjF6k3EWW69O4N/rQPdaTqdUAMdjBKaSCmt7TP+4b7THsvZqvOUGHgoM55+X
 U8BB+TLd3mad114TDBfNa1aPlh8EcEgrYUXbrEz8/elsflnkduaiL0E7MaVD6zTliAx5
 OWrrcGjwstb1zHjhKoMJwf1T2lvvcgeWsJ4oNX+CupBWK1jOzEpP0/gXc28FYHvoJkra
 Shrud1EJit4c8TOQMV1/+UcLOjfnHwcOtoHr/rAZxEC2obC5EkSGO7Bnr4j7b9FxPnWE
 kR0gY36H9gGm4FKmwjorKLzL5M+WEeMoxU+K7lhguCDupSK7vg8egQxyUpU0GBVpnRl4
 4XRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ScsUfMVtHVOkrxRg8IkMHR/vOs6RC0oZtG2XpQSfnDc=;
 b=J11jZ6UtOsEDEThJ+Ihk3j7ndZk0r7/Bv2gGHEcFcgfzVdoWyqzVGCHYsNP0vP592Y
 r6h7Rg2YZ9rzk8ASrOCWbsY6fb4WuG/5jfchSvaNmBRJkUE+jUkZsaqd1HFYZSlCQ8wQ
 PaszBMDoNfexcGGJcCq1TWq8C8iO0A4JZ+veCRaDuQV+DE6bO6iUCKxXEmmQldKn23WF
 d+itHlmLazZ3x48PJjzLDncvw+DKz1bmdAsTgNXK7DzDWwIsdRGPw0lYYbY+pUZ8yA9Q
 uGNpUZwAygvzeqcKE1EzENUOK3v+kggy6AESj8HmxAdDMZ6ADkrf/KCIKZNaDOv0Wz5P
 7xGQ==
X-Gm-Message-State: AOAM533jJ0W9yDD//b8SjoBr2HfFKlxN3jtEc/I9FEb03nO5A8bgLozW
 xptx/rPppM1rO0QUiGwSTBY=
X-Google-Smtp-Source: ABdhPJxr8Z9P4OM6xMY8BXhqI+5M9rJf2u62htW8jxdcQQPuhJKFw4WGk2swstD7auAmEKLtA0sIPA==
X-Received: by 2002:a05:6402:1158:: with SMTP id
 g24mr27158697edw.323.1604513790800; 
 Wed, 04 Nov 2020 10:16:30 -0800 (PST)
Received: from localhost.localdomain ([85.153.228.172])
 by smtp.gmail.com with ESMTPSA id u26sm1449448edt.39.2020.11.04.10.16.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 10:16:30 -0800 (PST)
From: Necip Fazil Yildiran <fazilyildiran@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ralink-gdma: fix kconfig dependency bug for
 DMA_RALINK
Date: Wed,  4 Nov 2020 21:15:23 +0300
Message-Id: <20201104181522.43567-1-fazilyildiran@gmail.com>
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
Cc: devel@driverdev.osuosl.org, paul@pgazz.com,
 Necip Fazil Yildiran <fazilyildiran@gmail.com>, jeho@cs.utexas.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When DMA_RALINK is enabled and DMADEVICES is disabled, it results in the
following Kbuild warnings:

WARNING: unmet direct dependencies detected for DMA_ENGINE
  Depends on [n]: DMADEVICES [=n]
  Selected by [y]:
  - DMA_RALINK [=y] && STAGING [=y] && RALINK [=y] && !SOC_RT288X [=n]

WARNING: unmet direct dependencies detected for DMA_VIRTUAL_CHANNELS
  Depends on [n]: DMADEVICES [=n]
  Selected by [y]:
  - DMA_RALINK [=y] && STAGING [=y] && RALINK [=y] && !SOC_RT288X [=n]

The reason is that DMA_RALINK selects DMA_ENGINE and DMA_VIRTUAL_CHANNELS
without depending on or selecting DMADEVICES while DMA_ENGINE and
DMA_VIRTUAL_CHANNELS are subordinate to DMADEVICES. This can also fail
building the kernel as demonstrated in a bug report.

Honor the kconfig dependency to remove unmet direct dependency warnings
and avoid any potential build failures.

Link: https://bugzilla.kernel.org/show_bug.cgi?id=210055
Signed-off-by: Necip Fazil Yildiran <fazilyildiran@gmail.com>
---
 drivers/staging/ralink-gdma/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ralink-gdma/Kconfig b/drivers/staging/ralink-gdma/Kconfig
index 54e8029e6b1a..0017376234e2 100644
--- a/drivers/staging/ralink-gdma/Kconfig
+++ b/drivers/staging/ralink-gdma/Kconfig
@@ -2,6 +2,7 @@
 config DMA_RALINK
 	tristate "RALINK DMA support"
 	depends on RALINK && !SOC_RT288X
+	depends on DMADEVICES
 	select DMA_ENGINE
 	select DMA_VIRTUAL_CHANNELS
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
