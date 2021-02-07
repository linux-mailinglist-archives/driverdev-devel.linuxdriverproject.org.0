Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0D63124E1
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 16:03:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEA9C8701E;
	Sun,  7 Feb 2021 15:03:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Z3+ywXjIYuv; Sun,  7 Feb 2021 15:03:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52E5D86FF7;
	Sun,  7 Feb 2021 15:03:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC9B51BF957
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 15:03:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A469E8687D
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 15:03:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tNAFqqzXq0Ex for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 15:03:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D0E828685C
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 15:03:06 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id u14so14152153wri.3
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 07:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BcBq0RthQ+DH5oBAwj/q8W+Zfx6c0uwKy0XjB8s7FQs=;
 b=IdngARiMdpdlWWUR/BDwTzP3drGjZt7O2CWXYyXNPyGHdUJGpOfG+X/7R0/Nth2eMR
 P38VTG5vwtOtLmzdy8UHjS66QQxi3w8F7CBWATU9tL97vFV+h88ITXt059ntVpwJqKrO
 z93RyQBVNnn86m27ZfKYJircLv3uB6HIGwE8kmC3yidQzvSGWk5obCnE0tBv/ZEhM6A0
 BHqkGiMATMmE5As+uLct3P2XXg9YPaGXqtkU4ikO79CRGxTBZYnlqwxYIvqTPnOwEriN
 qvYCWsb0zO4UXpJgj+tRXP/C2nksY0uv5VRGgJyvyAxUsr23R/W5tKwvNbC9LMJo5tFx
 Or8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BcBq0RthQ+DH5oBAwj/q8W+Zfx6c0uwKy0XjB8s7FQs=;
 b=L5zWJR0EhW2TMGQBCj5J0SdNKgugjL9PqyjC1jxX0p51Sb7CrOIpFveyf5yuH62PYA
 PAHXDCZvhUX8KBY+giGUeDo5MWVzexa89UgWa57/R77552fXyYkGJ96yzCbZmEdtx3Lx
 8PzLR5M0yEF3myIFma+t4b86JXX+tkp0swYMysJdQhfiyoVp+RTZ9AvN+uS5mvnyDbQ1
 pEfhui0jQfbJhAnlfvUFrq/fR/zgcyga5k+N417/jLodm+3Xx9Ji1dvgAkd66Kad8QMK
 Y1Zh5kFC9ZyASYt97c5wi5lrGLvhXV/bAmVn7B6XS+Ztk8/h/yL/hOfNOzA9WeS4XwjB
 eUJQ==
X-Gm-Message-State: AOAM531yD0NRPQKxC99chLNtVM7phSj7DwznoFnnb1gHhkWF4WfyN8kn
 +vyD4E6cWd5oMvrQ6nXbdJvFwoDE96EYSvag
X-Google-Smtp-Source: ABdhPJx2DXTZwjRWKZsLX13Q/lcGpNBQFM47SFtQWrrAtDTxiHCWBTWrgz0B290oVCEAzVDprYDdig==
X-Received: by 2002:adf:f58b:: with SMTP id f11mr15481546wro.3.1612710185307; 
 Sun, 07 Feb 2021 07:03:05 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id z6sm4599925wmi.39.2021.02.07.07.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 07:03:04 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: octeon: convert all uses of strlcpy to strscpy in
 ethernet-mdio.c
Date: Sun,  7 Feb 2021 15:03:02 +0000
Message-Id: <20210207150302.88560-1-phil@philpotter.co.uk>
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
