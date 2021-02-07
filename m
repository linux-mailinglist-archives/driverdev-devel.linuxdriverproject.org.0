Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A89473124DB
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 15:53:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9584867B9;
	Sun,  7 Feb 2021 14:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BdEPro+X6v1e; Sun,  7 Feb 2021 14:53:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C77B5866D6;
	Sun,  7 Feb 2021 14:53:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2CF8C1BF3F4
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 14:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2916A2042C
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 14:53:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wJSuS8nsFtGg for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 14:53:46 +0000 (UTC)
X-Greylist: delayed 00:05:36 by SQLgrey-1.7.6
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by silver.osuosl.org (Postfix) with ESMTPS id E517F20109
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 14:53:45 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id i9so10786981wmq.1
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 06:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U+FD4FX1W6U2mWTuvI4YJ635kqsngjRjhMWM6RDCGfA=;
 b=AECeStMnc4+w96Ilr4WY6VqwAL2P4HRo4cUt0DESevLEYIhDDNkBfSniM/3y/4Uo2Y
 bChGzp3f4vOV1p4vJ0d5TbBGwvXnNSTASbQYda66AK2zsLyDnI8qtF0AQG4oFF9Th2N5
 5WHD09gLTQt7dTZRSvXYLaT5u3vz0/pMbECdcUYNcFSqMR/dzFb/WzuiIy+1NvtLIrfL
 v4Sve+eF0wqJYGOVoi7RDCYSeTxM8oWQiCjrh26fu3jLprOnIG2FzAcoHzf54fG0Lrz1
 pePfhjEyU4iyfoq78IwmVwNc1h9SZx3ZmUehwiVu6hQRBiiqNOT6+FkJ34aXpYmxM7Ha
 gukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U+FD4FX1W6U2mWTuvI4YJ635kqsngjRjhMWM6RDCGfA=;
 b=ldsTXtGQRpduuohjEsnunalUmehRtfPEOREEQw4/M4YtigkF6GyOoqi0HYRDrLIDeg
 NmjgVoHXu+RGgs+Yp/bQ6VAWkTgXhx/4pi+xSCGJg0jrDDQOOQYQf9VUcPh1BpdhQnUx
 8AIydBNNyoCnQ+9LLw//IsPhIWeVQDuFr1USefgjvRc+6Y9Mzkzy/bLemq/X2T0YEi1T
 NeJMmmf/47bPInXqrRXQQKp14wOG+ouXHZ7rTc98TZHTlPML2GIldKTsLa48Rb9ti5mc
 BaJxHdB/CjfNZsXlOQmc8VELE0bjNXEF76auqK8P+aFZtQBWqpX7Au+Zy57ylLhK7w7w
 LTnQ==
X-Gm-Message-State: AOAM531y9myhvy9w9K0wGfe5Q7K4ekxF4Op4IOa67Q7m16WP28XljI8W
 vFTKeezQTWtkBSlNnwz+hT3tET87H13wxcUV
X-Google-Smtp-Source: ABdhPJwlfr8M4W6SCuEjqXkYxolOOvi+szVjPfeMJ08gbEUvM9Uo19BSqfM2i4Uhet5G1C42HsixIw==
X-Received: by 2002:a1c:e402:: with SMTP id b2mr11359221wmh.122.1612709287404; 
 Sun, 07 Feb 2021 06:48:07 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id n10sm22600578wro.39.2021.02.07.06.48.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 06:48:06 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: octeon: convert all uses of strlcpy to strscpy in
 ethernet-mdio.c
Date: Sun,  7 Feb 2021 14:48:04 +0000
Message-Id: <20210207144804.88330-1-phil@philpotter.co.uk>
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
to strscpy calls. Fixes a style warning.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
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
