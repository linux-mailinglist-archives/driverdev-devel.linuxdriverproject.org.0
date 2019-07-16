Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8422C6B0EF
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 23:17:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BC9486A3C;
	Tue, 16 Jul 2019 21:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w97bZyKSwJ1U; Tue, 16 Jul 2019 21:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 426568677E;
	Tue, 16 Jul 2019 21:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EC5B1BF29A
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 21:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7BC4587D60
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 21:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzeqPz0R8lKK for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 21:17:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6FD687D33
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 21:17:10 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id v22so15780372qkj.8
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 14:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=GWxxxOtfc0hkJsoN956op0nPQ4cc3G9CQfKbpsVdrj0=;
 b=SrAwgVOnyiPAaNHxRm3kITb/9/eY2aKXVp3n+Tq/WXDPTV8JkDdwlVp7G/kIeACNfY
 WhI5Xz8iLcCYypsRAdoBEuTLxIuPkgx/SV7XFlm/QkQA+DCGu0t/WgJU+1FxKVEpSHv8
 EKrT5/bwn16A8L9IBq6Mh13dPmEa/mXKcw7iRdzyvUetvfv4/ibECfvDm8p51exwA1WN
 bhO7buH/icq5mR3xluqVeCA8Z1K8TyGXpRGJmjy2HRWjlNHNbodmTJYl7BuTVR9L9o/f
 4IWixdvzb1HKrb1TsLm3SyUQ4Yw6k2KjbDpXKP+E1w4MQ9UKS3mL/TL/GqC9wUmYMnP6
 GaNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GWxxxOtfc0hkJsoN956op0nPQ4cc3G9CQfKbpsVdrj0=;
 b=Aaeqj7B214OePrvPC2aIk8RpxyABp7+r5q4cj794gMQwH47bbezAh1ZBVIF2H1YLL6
 pl4+Rhfx0H+mXnjU9WLU7IdUCplzhGSzsA+5cLSW9S840C2AOork5+t1m3MxgF9836g+
 z/qn+P/ial4S8NDNsP+2g3NeeP3C7JeHFm2zcnFhcRgfY/B/juYhrTRkzmSxebRGKkYX
 c3Cw4/vNA5BZAgS6u23Rd+c7EOoqlNmCiUftxA5YgQicloeLgniuVeXe9HSjEzkSBFmt
 C0c66RiNr8RN1Mgr6VEMwn+v3BMI73bFfOTIFALaD4pw+VSHxzdRL9ndmrcjl5Yf6Nq8
 UmuA==
X-Gm-Message-State: APjAAAVLcHl0utJn9N+wS0DUdpyZ3pC52mFCfxGxA14SpDPKXwdTzMT3
 e1AQgpEnNprLLR/SVptJAc4=
X-Google-Smtp-Source: APXvYqxAHzQC7Z90lpdgYOSIs5u9EwVm0pWq+yLNiyr32VCtVGa5BvinBHIJMCdkAzPv0wvD8nFRBA==
X-Received: by 2002:a37:646:: with SMTP id 67mr22333367qkg.287.1563311830055; 
 Tue, 16 Jul 2019 14:17:10 -0700 (PDT)
Received: from maquinola.fibertel.com.ar ([181.31.154.224])
 by smtp.gmail.com with ESMTPSA id t76sm11023311qke.79.2019.07.16.14.17.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 14:17:08 -0700 (PDT)
From: Karen Palacio <karen.palacio.1994@gmail.com>
To: linux-erofs@lists.ozlabs.org,
	gaoxiang25@huawei.com,
	yucha0@huawei.com
Subject: [PATCH] v2: staging: erofs: fix typo
Date: Tue, 16 Jul 2019 18:16:23 -0300
Message-Id: <1563311783-12754-1-git-send-email-karen.palacio.1994@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Karen Palacio <karen.palacio.1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix typo in Kconfig
Signed-off-by: Karen Palacio <karen.palacio.1994@gmail.com>

diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
index d04b798..0dcefac 100644
--- a/drivers/staging/erofs/Kconfig
+++ b/drivers/staging/erofs/Kconfig
@@ -88,7 +88,7 @@ config EROFS_FS_IO_MAX_RETRIES
          If unsure, leave the default value (5 retries, 6 IOs at most).

 config EROFS_FS_ZIP
-       bool "EROFS Data Compresssion Support"
+       bool "EROFS Data Compression Support"
        depends on EROFS_FS
        select LZ4_DECOMPRESS
        help
---
 drivers/staging/erofs/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
index d04b798..0dcefac 100644
--- a/drivers/staging/erofs/Kconfig
+++ b/drivers/staging/erofs/Kconfig
@@ -88,7 +88,7 @@ config EROFS_FS_IO_MAX_RETRIES
 	  If unsure, leave the default value (5 retries, 6 IOs at most).
 
 config EROFS_FS_ZIP
-	bool "EROFS Data Compresssion Support"
+	bool "EROFS Data Compression Support"
 	depends on EROFS_FS
 	select LZ4_DECOMPRESS
 	help
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
