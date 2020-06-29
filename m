Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EB620D010
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 18:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E7512288A;
	Mon, 29 Jun 2020 16:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XjI4PH97tbLt; Mon, 29 Jun 2020 16:15:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1C23E203B9;
	Mon, 29 Jun 2020 16:15:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48A061BF2EC
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 16:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 39AC8203B9
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 16:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D6aWbVn1w4UF for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 16:15:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 4FF0C20398
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 16:15:34 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id z17so13314922edr.9
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 09:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=heGKiszYARvox0tZHtQsGW6ogrsChhTM0vUjjAQ7Fxc=;
 b=bnPjIH3An1mt00bkgQp2o32ds9guwFtm/l2yxOJMsPPjrCQRaFOFw58b/wgq61+qz6
 ffC7FuhZSPOuZHBdaQXYTipMPLoEImqRxrQCzc8dHvFHmBZpVsvGp5CWGNx7QJopncJJ
 +tBYoHExJmEI/Cgcji6A0JQX/+vnsTSxV+m4z1nZ7+kkoLq3aYN9vUcUBgF+Aet6J0oM
 tO7LDFT9SoX5Kf3R9KLwif43XUss7VrjqX5dmRU1FUVx35428FvFzyXPeAolGnCQkfBC
 ++S6gCucl7Zz8XFT8ZGCFzxS28/ahcwdFCsFJ53JNMOLAerLb8u2Do7PoWEMQHLpgemD
 sqBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=heGKiszYARvox0tZHtQsGW6ogrsChhTM0vUjjAQ7Fxc=;
 b=UTy8oDrk3w7rzTYCCNgQFQe/oGSOp0/rKQpOKORP0RZWd9QSAPzPCEnWJ+FTuifyFX
 ffPeU4Me7IBbUjCbgrAwqlxqUgU9i2uCp+WOr5ZhulYm9szdiZ9oMhswkTJkQb28yV5r
 ki2tbRmTvu0PUdKxUP+LGRVu2h90aEPozM5q/K+VCZ05Knt2e4qA8QYjI1vlpjIgsRDf
 FkZ2iHtyk9kope90Z0VfunOfqF1K2dtF2JWjF/uyIowsB0mz3NL5pUbYSA/lWI6j6KvR
 rG1MRpY8r/Y1sXUnkZIHZ3aC/fcKhHvnpfPVaykSsYZBxSyGmDZq44iE4Sb+SbNZ8GOn
 /AYg==
X-Gm-Message-State: AOAM533KGf2GCQ2hI8FaYxuP3yyAVqcZDMcU+3ds5j7q/rmAebIQEH5Q
 6Z/MGyFXg7Cxkp9tqpxpPaE=
X-Google-Smtp-Source: ABdhPJyX/7C2PCphFFlJPw5Rs4TlWFjhF5uJNYqqBvCYao2poNLZoN5EPeTH0YCtFu3/aCHjRnDG4w==
X-Received: by 2002:a50:a661:: with SMTP id d88mr18585795edc.34.1593447332650; 
 Mon, 29 Jun 2020 09:15:32 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-011-230-176.178.011.pools.vodafone-ip.de. [178.11.230.176])
 by smtp.gmail.com with ESMTPSA id m6sm87831ejq.85.2020.06.29.09.15.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 09:15:32 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: use compound assignment operators
Date: Mon, 29 Jun 2020 18:12:54 +0200
Message-Id: <20200629161255.28371-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use compound assignment operators to simplify the code and clear
missing spaces around operators checkpatch issues.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index d5968ef9f43d..68196d8c05eb 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -211,7 +211,7 @@ static char *translate_scan(struct adapter *padapter,
 		else/* default MCS7 */
 			max_rate = (bw_40MHz) ? ((short_GI) ? 150 : 135) : ((short_GI) ? 72 : 65);
 
-		max_rate = max_rate*2;/* Mbps/2; */
+		max_rate *= 2; /* Mbps/2; */
 	}
 
 	iwe.cmd = SIOCGIWRATE;
@@ -1395,7 +1395,7 @@ static int rtw_wx_set_rate(struct net_device *dev,
 		ratevalue = 11;
 		goto set_rate;
 	}
-	target_rate = target_rate/100000;
+	target_rate /= 100000;
 
 	switch (target_rate) {
 	case 10:
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
