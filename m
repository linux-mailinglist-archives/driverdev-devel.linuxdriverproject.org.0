Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8752726A277
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 11:44:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4801586654;
	Tue, 15 Sep 2020 09:44:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rVFv8c5+uF8G; Tue, 15 Sep 2020 09:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DD8F86397;
	Tue, 15 Sep 2020 09:44:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BEE71BF28B
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 09:44:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3894486397
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 09:44:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gAyiA+P43YZQ for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 09:44:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C1ED98633E
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 09:44:01 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id w2so2704955wmi.1
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 02:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1MZenw7ivkEO7G0cqGbvnXeO0j0tykvYhq7DAb7ri5A=;
 b=QwexKL3/mXpdmI3QfPiic+6kNLVREkv+eBUeY4gzTMZ8JLvTMGXQ+UJfjm8NR4A6U3
 PBaE8ktM9/9QPojYJV2pUXFfq2+cvOWDW0fkHuVx3+eijz0f2kp2B//5Ojk7QRWT5ly6
 RJ/90ybEy9tCcIpZLXFLlMO+tJxqseWAaG2hvGq/0vP4TJOJEmzBpHP74xDUqkGC+sCn
 rJ5ggnlVajI03rpZ4muu3MuMO7isGf214UcggMGQMCHppH6D6B3aviMaUX95eUPguYdZ
 mEqADPUX96pHo2IaZGs2Pr4ykzAnAtGAAQ9mZoWW5KQGg4w/ArQjwwHk+7lVIRGQ1kKB
 C5FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1MZenw7ivkEO7G0cqGbvnXeO0j0tykvYhq7DAb7ri5A=;
 b=cHIajhFJMHYkw44BYTshaqZHAjdpYlW65CLh+k0gUdPd50C1XpGq1w5uarAbK5nPIg
 8bbFLfLaVqChkiLlHclVOo1SpOtD1607L0Ti2mplm/yFGm4qWL+ynnvfG3nyr3moCMIt
 9JGoUClGdvcExD20xKnfvmDlxUNdwfwfSD5KNFZdUnxx3bDJzF5Dj9k3iw+/ksSnBxqM
 Qb7gBXC2FYt73lIBgs01V8RWrn/xfvwXgW/Lh9JhzUBqbMepH8iwzm97yqojxOJWHgmt
 yuuyTYokLiZ543478lpo29UiuID8SxsjVevoJZvYbHAXbqs+tNuxzczcUHKQAveZG8rH
 WL0A==
X-Gm-Message-State: AOAM530Zopmi1xdjBpIc2mhVb9aoExByKjvRFABYzk8+4cpaejZeuiZL
 Kl8pS+wcv9pYg/cU099LThw=
X-Google-Smtp-Source: ABdhPJz5jdPwQfUSVTZM76f+2wCqMeIIFzkbMvMWQ4M2CCmdbqpMG6URc2VFaUjtSpl2wwdscUAX7w==
X-Received: by 2002:a05:600c:2054:: with SMTP id
 p20mr3701532wmg.173.1600163040073; 
 Tue, 15 Sep 2020 02:44:00 -0700 (PDT)
Received: from localhost.localdomain ([85.153.229.188])
 by smtp.gmail.com with ESMTPSA id 91sm28149156wrq.9.2020.09.15.02.43.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 02:43:59 -0700 (PDT)
From: Necip Fazil Yildiran <fazilyildiran@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: fix kconfig dependency warning for
 RTLLIB_CRYPTO_WEP
Date: Tue, 15 Sep 2020 12:42:10 +0300
Message-Id: <20200915094209.22664-1-fazilyildiran@gmail.com>
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

When RTLLIB_CRYPTO_WEP is enabled and CRYPTO is disabled, it results in
the following Kbuild warning:

WARNING: unmet direct dependencies detected for CRYPTO_ARC4
  Depends on [n]: CRYPTO [=n]
  Selected by [m]:
  - RTLLIB_CRYPTO_WEP [=m] && STAGING [=y] && RTLLIB [=m]

The reason is that RTLLIB_CRYPTO_WEP selects CRYPTO_ARC4 without depending
on or selecting CRYPTO while CRYPTO_ARC4 is subordinate to CRYPTO.

Honor the kconfig menu hierarchy to remove kconfig dependency warnings.

Fixes: e0e3daddad36 ("staging: r8192e: Fix possible error in configuration")
Signed-off-by: Necip Fazil Yildiran <fazilyildiran@gmail.com>
---
 drivers/staging/rtl8192e/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8192e/Kconfig b/drivers/staging/rtl8192e/Kconfig
index 1007eea6c8fc..5ac06061cfce 100644
--- a/drivers/staging/rtl8192e/Kconfig
+++ b/drivers/staging/rtl8192e/Kconfig
@@ -35,6 +35,7 @@ config RTLLIB_CRYPTO_TKIP
 
 config RTLLIB_CRYPTO_WEP
 	tristate "Support for rtllib WEP crypto"
+	select CRYPTO
 	select CRYPTO_ARC4
 	depends on RTLLIB
 	default y
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
