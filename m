Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 251C518BC25
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 17:14:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F10A2324E;
	Thu, 19 Mar 2020 16:14:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8dgxERBRD0dc; Thu, 19 Mar 2020 16:14:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E4FB622253;
	Thu, 19 Mar 2020 16:14:23 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7F5A1BF3EC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 16:14:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B2370204BC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 16:14:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rqgFo8CgYpie
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 16:14:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id B0AF1204B8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 16:14:20 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id h6so3787804wrs.6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 09:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bcBKu9cgp5hjzyU9IvTdNSotpwjxcmOaXN/X54KrElc=;
 b=MPuOWr6PhLGUxFgjBXkMHu+PPI/tpzQwb5/ZUG79e9hu+t0R941RWt1L9GW8oHlbTk
 0gi8HlicSdQZJl40GjaBBh/T8V6VVagh7+aipaKe4CKzCxHJAJhCZXG7e7jhmACGk4k0
 WNxQiHx1FYtenx6gR6P88e3F2+jYTNdhNFSCH8shLefUEbPg0fZjrcUf1qZvICRa4LIm
 e5DPdwCcrMLxUhQDyFUkm/rC+v6oL5d6zwXqJfEDU2c2mtLXhklH0G2K7g7CpU7E8Tvy
 UIwkAyNtFUudoKmh1/84gAv4kWcZLKUirsUGloHQ7y74Ep4hKl30etbjKLnUC6tSh5Oy
 RoMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bcBKu9cgp5hjzyU9IvTdNSotpwjxcmOaXN/X54KrElc=;
 b=tgsR37ZC9RtZMqzc8QPRxSn7rYbNFfq6ZSXoRjlOZR7Kcn0TMEQk+3OXMy4AveoMia
 flWpzH7vslYHhz9oo9x/2W9430g9Rd1er9575lfAB04Nix8o2qwwNZAGXEByTiMMLbBe
 V/IbGnbJGy8x/sxrW1gy1oR6SxmpGHalgx9RddJude0wkDUsCMGf+MaKoyqOwSPKZsLF
 R3Ehdd1DOJjMMBtdgnVsWjfBX6JBRR682oXJ3UanA0Qer4PBolh8DOmSJz5cIcA7wDJP
 k34ZpeJEDmKAcCIWdkPhdZ9fpEffFIqj21fk8xUeo0nl2rq+wizwE4SkpB0el34fClS0
 4hcg==
X-Gm-Message-State: ANhLgQ02mZdLPABCr+lM4I7U+MSM2ALJgmzkCmEDKPVXw9D1yOWy12uQ
 4Gcw2dosm/w0IbyVc9XcF0k=
X-Google-Smtp-Source: ADFU+vsfamedpTCBlkSMEfjdxILHUBnC05GWm4wZ9mUNqaB3OjJ86Ij2i3iosNOyT5xavcecwfSEXg==
X-Received: by 2002:a5d:6a4b:: with SMTP id t11mr5191832wrw.52.1584634459000; 
 Thu, 19 Mar 2020 09:14:19 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id w67sm3549068wmb.41.2020.03.19.09.14.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 19 Mar 2020 09:14:18 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: don't return if get gpio fails
Date: Thu, 19 Mar 2020 17:14:16 +0100
Message-Id: <20200319161416.19033-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In some platforms gpio's are not used for reset but
for other purposes. Because of that when we try to
get them are valid gpio's but are already assigned
to do other function. To avoid those kind of problems
in those platforms just notice the fail in the kernel
but continue doing normal boot.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 2a01645162a5..d6fc8a08c9bd 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -363,10 +363,8 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 
 	port->gpio_rst = devm_gpiod_get_index_optional(dev, "reset", slot,
 						       GPIOD_OUT_LOW);
-	if (IS_ERR(port->gpio_rst)) {
-		dev_err(dev, "Failed to get GPIO for PCIe%d\n", slot);
-		return PTR_ERR(port->gpio_rst);
-	}
+	if (IS_ERR(port->gpio_rst))
+		dev_notice(dev, "Failed to get GPIO for PCIe%d\n", slot);
 
 	port->slot = slot;
 	port->pcie = pcie;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
