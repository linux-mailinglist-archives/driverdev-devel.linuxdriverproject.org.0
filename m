Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3448A31D59C
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 08:07:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FCC3867EB;
	Wed, 17 Feb 2021 07:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FGRt3SJCKXPN; Wed, 17 Feb 2021 07:07:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 437CE86847;
	Wed, 17 Feb 2021 07:07:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18D6D1BF354
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 07:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07CF46F480
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 07:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ubLHtxD1SrOC for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 07:07:16 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 374D86F4D7; Wed, 17 Feb 2021 07:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DFDB6F480
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 07:07:15 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id f8so5346866plg.5
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 23:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uUceRMwlX9IZeouSnfen/C1hPvySWdTZkKj9we8Ehb8=;
 b=C89ryAF9aFUedZbGkE/HdZAmPNa4/BiT2AaYiJ+yqQCgBYNbEA46kYNoe/7h6/SNJ7
 b8uGKwpiVe8AcazMajtwsNTQWlki5Qget5ARV1ZsU1Q4WU8HKljLvPeLCR2MbfB+d7cM
 3SQ//bbXKU5vC/TRjSGjJy5MrkBS7qOeJouMK2hYOqys94/LpczvLrjz3ULRx3kTHL7+
 VChboaU0KMJiCkYXi/ADkGt0J6axrgUN9edszMZHvYoOCNjw6SQRn88XkD7FpnUPWLdl
 XY0lKA9AzAvgQFN79g2VBVyY3Zc4QyGjAWg40G5zZS3TfyS0xGO8WR2qWHnZfelCuTSF
 SXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uUceRMwlX9IZeouSnfen/C1hPvySWdTZkKj9we8Ehb8=;
 b=RGsyQh7gEZMZS5U+1CZCtXoY5k1MWOmxMh+yrwN0Q2UctvVk63shwbomTcQYlJgcCX
 iSlqrNQWMNkSac70ci7F661TFITzIFrjJvhnwD4++l6TGe+MQ0a8X/AybQrTeQZ0FW3f
 sF0G83BNk/KHN4OtxkLC6hFs9MxNvQu+wOnWnE/GY2FIBh6tD6BYmqiw5MHhSQ2O0alf
 mOXFBte48ZTcSqUd2fUXK9vy7kX5j9CyG7n2v9McZQAYfOLeXHn68vhPw7+Eqt5J/Mg+
 Us1P/Vaej9QrFEWum6LXuZI+T1OsnXn/8UpQ0EDRzj2gfbwWqYSLVbD8IyS4HVkrAH7+
 h1JA==
X-Gm-Message-State: AOAM530JQAzahmdZ42UH5eukGQ8VRrVaWFqGxs1y4lMnE9lfhB0wry2/
 9f9iH0evYF5QiFFmEbhLy9w=
X-Google-Smtp-Source: ABdhPJwbeQHODNxqBptsyO7J6CNit1Ee7v8+7bAZvSQHSoqqUgnQJ5Da0aYS1OI7At+a2ZHBQs0zxQ==
X-Received: by 2002:a17:90a:ab07:: with SMTP id
 m7mr7883085pjq.74.1613545634469; 
 Tue, 16 Feb 2021 23:07:14 -0800 (PST)
Received: from localhost.localdomain ([116.73.175.128])
 by smtp.gmail.com with ESMTPSA id 123sm1117217pfd.91.2021.02.16.23.07.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 23:07:14 -0800 (PST)
From: Selvakumar Elangovan <selvakumar16197@gmail.com>
To: matthias.bgg@gmail.com, gregkh@linuxfoundation.org,
 sergio.paracuellos@gmail.com
Subject: [PATCH v2] Staging: mt7621-pci: fixed a blank line coding style issue
Date: Wed, 17 Feb 2021 12:37:10 +0530
Message-Id: <20210217070710.7359-1-selvakumar16197@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed an unnecessary blank line before closing brace reported by
checkpatch.pl

Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index c3532bc138fb..1781c1dcf5b4 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -521,7 +521,6 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)

 			if (slot == 1 && tmp && !tmp->enabled)
 				phy_power_off(tmp->phy);
-
 		}
 	}
 }
--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
