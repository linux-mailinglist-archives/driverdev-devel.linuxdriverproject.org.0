Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E41F26A292
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 11:55:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 63B028642E;
	Tue, 15 Sep 2020 09:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ltGuitp7bC1; Tue, 15 Sep 2020 09:55:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7364486138;
	Tue, 15 Sep 2020 09:55:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 140131BF28B
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 09:55:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0E13D204C3
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 09:55:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Aj-22ROP+rG for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 09:55:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 41AFA203F7
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 09:55:19 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id x14so2565184wrl.12
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 02:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cJPP3VOUhhMjWg+fdtc10hDSx+5MSLkdMdu69j7VsYk=;
 b=oql0qcrxZ/7BkQPztc8ldLY4fggx/gEPNqio5VSAk60RK9YMp3j1LsItuUPW6T/Hwj
 VyKxcG8a3u48jSmd9vvCfYNfAEyU4fOkmTydUOXp4wEhwrwgNthmr75Nt51DK279LrqP
 w/tEtaXNcjX08510hi0Dc8T4DR1+ph//6c4NYyVyr0+nbXojgyiYIctqErjjnhb+E6TA
 trHE7CHLJKaCa0oXJHOyq/PEGcYii6yd3rnCGpehapT1gZzBKo0PqO3/s+uGak32kjRe
 wKH7h4ByLFUuTusx+IGW+jIz/QF7wXGcE7nMDIuG4Q95g2oYyho66F15p5xNzj073q0y
 aiug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cJPP3VOUhhMjWg+fdtc10hDSx+5MSLkdMdu69j7VsYk=;
 b=hXn4BrkcW3NSV4B7efVrH+lLgQlfYD5gOAjkA0X2V3R/cHnnG2SMSd8WaE0+79qDP+
 9B81Xk+TDNRPBF5BL3zoClivtDIQO18CLKVzhpda5CuFxaj70fmnxj/tPhqLoBRVibj2
 ixcwY3QeVSnJSmkxt3m+55om5BIkO3LsCD+9R4fdYcHTSCDhM/xJ7l/ur6LKG/7cVye5
 OLQ1sS9KqHrBlzpmskuanIZyK9L3e40G1+Yi8lalE/Og0N9WLTHLtSdc/DNSQyW3DhWT
 j4uVefGg7q55XpRcEalg+LPfL7uAz/twRgqcK6PR0dxs/pxgKfmJldAr6PGlMREmb8D8
 pO7w==
X-Gm-Message-State: AOAM530u8UgNTYO/qVXqkCL1ddhGFT5SSCWjWgrDSdWCwuvB/3x7G5ad
 CbhjmaES17FxXQLmUyNeF5k=
X-Google-Smtp-Source: ABdhPJzhKG/JC+VvrxBavdCbabMiHAvZnjK1S/hwLH5C208sdsY37rEvlbYI3WwQ6gqvvphJMI3p2w==
X-Received: by 2002:adf:edcc:: with SMTP id v12mr19959327wro.240.1600163717590; 
 Tue, 15 Sep 2020 02:55:17 -0700 (PDT)
Received: from localhost.localdomain ([85.153.229.188])
 by smtp.gmail.com with ESMTPSA id i26sm23903149wmb.17.2020.09.15.02.55.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 02:55:16 -0700 (PDT)
From: Necip Fazil Yildiran <fazilyildiran@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: fix kconfig dependency warning for
 RTLLIB_CRYPTO_CCMP
Date: Tue, 15 Sep 2020 12:54:09 +0300
Message-Id: <20200915095408.28092-1-fazilyildiran@gmail.com>
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
 Necip Fazil Yildiran <fazilyildiran@gmail.com>, linux-kernel@vger.kernel.org,
 jeho@cs.utexas.edu, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When RTLLIB_CRYPTO_CCMP is enabled and CRYPTO is disabled, it results in
the following Kbuild warning:

WARNING: unmet direct dependencies detected for CRYPTO_CCM
  Depends on [n]: CRYPTO [=n]
  Selected by [m]:
  - RTLLIB_CRYPTO_CCMP [=m] && STAGING [=y] && RTLLIB [=m]

WARNING: unmet direct dependencies detected for CRYPTO_AES
  Depends on [n]: CRYPTO [=n]
  Selected by [m]:
  - RTLLIB_CRYPTO_CCMP [=m] && STAGING [=y] && RTLLIB [=m]

The reason is that RTLLIB_CRYPTO_CCMP selects CRYPTO_CCM and CRYPTO_AES
without depending on or selecting CRYPTO while both CRYPTO_CCM and
CRYPTO_ARC4 are subordinate to CRYPTO.

Honor the kconfig menu hierarchy to remove kconfig dependency warnings.

Fixes: e0e3daddad36 ("staging: r8192e: Fix possible error in configuration")
Signed-off-by: Necip Fazil Yildiran <fazilyildiran@gmail.com>
---
 drivers/staging/rtl8192e/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8192e/Kconfig b/drivers/staging/rtl8192e/Kconfig
index 1007eea6c8fc..4f45a006f901 100644
--- a/drivers/staging/rtl8192e/Kconfig
+++ b/drivers/staging/rtl8192e/Kconfig
@@ -14,6 +14,7 @@ if RTLLIB
 config RTLLIB_CRYPTO_CCMP
 	tristate "Support for rtllib CCMP crypto"
 	depends on RTLLIB
+	select CRYPTO
 	select CRYPTO_AES
 	select CRYPTO_CCM
 	default y
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
