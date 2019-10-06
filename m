Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF8CCD174
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 12:53:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 907CC204B9;
	Sun,  6 Oct 2019 10:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ofBo9s4twfhm; Sun,  6 Oct 2019 10:53:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6D6CC203F2;
	Sun,  6 Oct 2019 10:53:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78B771BF2FF
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 10:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 728F585F18
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 10:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kbvx47ZC3O2v for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 10:53:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 406DE85F10
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 10:53:15 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q5so6777923pfg.13
 for <devel@driverdev.osuosl.org>; Sun, 06 Oct 2019 03:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=n8zz3a4C3Om58ythIZzkS0gBW6F40FX6HjV4qFEwSSQ=;
 b=oDLDP/8ZKZcvTBoRKmQblm9y+hYjed4sZdLciUzVRSLzoIyrPcxcfNO8SV9Ol8btfn
 dQq38Gygin7/YCGSR2NdBH7E/mucgno9EDYvzrA7GhvfXgDzWfeVyB5LCq7e5bhP0wjk
 P9rt2JAiuI6yEQ2tFvMfjulEwbi4VHdiXqz+qlEpbJdsmN189dn3C0pgBnQSk/cSE0Uz
 RdtERHDs0oXRDe0gi7YDcUno6LhD2dKeP0auDzdD1P8gJ3EeFQigTZ6sE8xjlqcIA3AO
 szOoLyO2I0i8hkIBjrcgPJwWGvgAazy7XEuuu2H1KeLW886Xg1obyo0vGJISPSnVWUxU
 uKKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=n8zz3a4C3Om58ythIZzkS0gBW6F40FX6HjV4qFEwSSQ=;
 b=Jd9u0jCvbPyZotsP7m7t34weYnvL376PNRtztHOBTciY6dWKEMKw2T13+7TUmq14cv
 ntNnzuw5jdL33axa/hqHqK4PLfT1Fob5buIDB3yrKWHGTmb4b3USkNjmIXqKGK+vt0np
 c7dpAydhZ1e+zM+CGdl3zVlw3MMMZGcmoYAPOtk3HCwfBP90gdlCEUCPPCWAM08RT6rR
 0CbK3fSPSxfxpDQvQnqE4XWPBVPlLbqaVcrNNY48apYCWgZh9p2WoumuGbAnvRHsBdiJ
 zZ3DABQE/is1U2CzjGYGg4weM2Qq66YgUR5lq3gOHWMdnuEHXWU7lExj0hgWlgkn7J+y
 CKCw==
X-Gm-Message-State: APjAAAWVIt33z/77i3P0h3SdbBtc3+FULuwUDS6fIFFWmJysHtNLlJka
 JoInDaVFTeJQ0o8yTe3uRuM=
X-Google-Smtp-Source: APXvYqxbfQvtC1orcxXrkeOGgONjwBH8xp6BfhgVBlzUaBfwEc9WotEiSyFLWFEgms36S5glSL1Ncg==
X-Received: by 2002:a17:90a:284c:: with SMTP id
 p12mr27725214pjf.87.1570359194726; 
 Sun, 06 Oct 2019 03:53:14 -0700 (PDT)
Received: from localhost.localdomain ([117.194.120.37])
 by smtp.gmail.com with ESMTPSA id q71sm10958906pjb.26.2019.10.06.03.53.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 03:53:14 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8192u: Fix indentation for cleaner code
Date: Sun,  6 Oct 2019 16:23:00 +0530
Message-Id: <20191006105300.10181-1-sylphrenadin@gmail.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes indentation for if condition in the file r8190_rtl8256.c for
better readability as suggested by Dan Carpenter.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
Changes in v2:
	-Wrap commit message line at a column length of 72.
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index b169460b9f26..63e0f7b1b852 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -43,8 +43,8 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
 		switch (Bandwidth) {
 		case HT_CHANNEL_WIDTH_20:
 				if (priv->card_8192_version == VERSION_819XU_A ||
-					priv->card_8192_version ==
-					VERSION_819XU_B) { /* 8256 D-cut, E-cut, xiong: consider it later! */
+				    priv->card_8192_version == VERSION_819XU_B) {
+					/* 8256 D-cut, E-cut, xiong: consider it later! */
 					rtl8192_phy_SetRFReg(dev,
 						(enum rf90_radio_path_e)eRFPath,
 						0x0b, bMask12Bits, 0x100); /* phy para:1ba */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
