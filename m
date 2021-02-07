Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 328BF3124FE
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 16:13:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2587A85D44;
	Sun,  7 Feb 2021 15:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zgH8E-OA5lAQ; Sun,  7 Feb 2021 15:13:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDE06859D1;
	Sun,  7 Feb 2021 15:13:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A5F81BF3ED
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 15:13:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F60F203DA
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 15:13:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OBVikL3IWDK8 for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 15:13:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 117B120030
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 15:13:28 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id b3so14148362wrj.5
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 07:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=npRGieRx9sN3XQp2RVyJRR7pkmet7/uPGppQEGZDlB4=;
 b=EqNn9rwsbaNP7+lnW2sqiNUYVz/vSv4k8Xbi6qeAv8QyrdJz+iAL4XXbwLatza97p7
 8ZGNdMvlWG52oklrD7WzTTjs5QPK4el0yw816PwiIycAqxvAZZRYPjg8RgueXDlqa+rg
 3nBdVt3zrcKMtlgrPUVAb9sJF/4gftMuIIMG9PO9gZlthdkAf2/g/oeGNZKUkGxYVzGk
 vySsboz1sN9v7HOxw62WGfcB2Tfk7FfMSp72iXTWtxtKHQzWBVkVjoAwmA1DAcpgyb4x
 E/dE/NfJZSLK/YbfifuJrdcuX8mNRVvGL1JQ87noM+Kd6txAJLYJOWXOMZ++ilThuJ2k
 zong==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=npRGieRx9sN3XQp2RVyJRR7pkmet7/uPGppQEGZDlB4=;
 b=Gwlk4bF4lnbZZX3s/70GYOJXcaAfywmTkOKbwU9hNOTtVo9hyOcb8MkH1WM0gENGYy
 4whYrkSPWAI18XRxZsSa43Zag4U/K/kezjc9hLp+peYgYUw2M+6kNtKCXG20viedv8fh
 4ptzmT69aXqnzNmzWLIWUMuTrpwmc8XjHazuAG74TXHilce5GJ92vP7QAJPzzAD/3Mh0
 lVA8bMECEtc7joU5CHFxVkxoEQ4ZpyrTu6DcY503lDF+ctnhtvFerj3mYNFiT74EKI27
 RI0PGY+/de/ugo1zRZCiCCF09VrBfUYPZ+bi2dSK991psIot+d83QWk9n/21WcNV2cT0
 7Ulw==
X-Gm-Message-State: AOAM532zaPolJs53Ux7V0T/KEx4CN3bFZ9m0gL0snN7hZUwK5zcl9yzp
 7Zb/0Hux8tixepgZGn/1ySRJ/g==
X-Google-Smtp-Source: ABdhPJzyM7/V6H9r/1lycXwLEBnu1XJfn3RmQP0Xfnhdi2nB+rKeGHf5/nzguZHBCmGqoiFCzXxnTg==
X-Received: by 2002:adf:ea51:: with SMTP id j17mr16184510wrn.382.1612710804660; 
 Sun, 07 Feb 2021 07:13:24 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id j40sm4855105wmp.47.2021.02.07.07.13.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 07:13:23 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: octeon: convert all uses of strlcpy to strscpy in
 ethernet-mdio.c
Date: Sun,  7 Feb 2021 15:13:20 +0000
Message-Id: <20210207151320.88696-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, linux-kernel@vger.kernel.org,
 chris.packham@alliedtelesis.co.nz, alexander.sverdlin@nokia.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Convert three calls to strlcpy inside the cvm_oct_get_drvinfo function
to strscpy calls. As return values were not checked for these three
calls before, change should be safe as functionality is equivalent.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---

v2: Modified changelog to take account of feedback from Greg KH.

 drivers/staging/octeon/ethernet-mdio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
index b0fd083a5bf2..b3049108edc4 100644
--- a/drivers/staging/octeon/ethernet-mdio.c
+++ b/drivers/staging/octeon/ethernet-mdio.c
@@ -21,9 +21,9 @@
 static void cvm_oct_get_drvinfo(struct net_device *dev,
 				struct ethtool_drvinfo *info)
 {
-	strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
-	strlcpy(info->version, UTS_RELEASE, sizeof(info->version));
-	strlcpy(info->bus_info, "Builtin", sizeof(info->bus_info));
+	strscpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
+	strscpy(info->version, UTS_RELEASE, sizeof(info->version));
+	strscpy(info->bus_info, "Builtin", sizeof(info->bus_info));
 }
 
 static int cvm_oct_nway_reset(struct net_device *dev)
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
