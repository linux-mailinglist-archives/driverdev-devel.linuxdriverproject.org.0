Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E71AC2156
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 15:05:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 844CF85E2B;
	Mon, 30 Sep 2019 13:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DMqjYK0a0Wx4; Mon, 30 Sep 2019 13:05:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 731D285AE4;
	Mon, 30 Sep 2019 13:05:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D21A1BF3B1
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 13:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4754684CBC
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 13:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EYsv5BBR2oeE for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 13:05:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D052B8461B
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 13:05:09 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id y10so3898566plp.2
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 06:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bK6MZWr6w6FAJdtYkaWJFSK0yuqaC12S3EefYxnzoEs=;
 b=Knqv4i8+ZXR2OCiNHFHexifplYe5hJkj0cZoff3qmNP1hBi9gO9mkM3O/JC0xCaAWl
 xgDLFFzkS+hn20TfrAdwktWc64NrJq7P9xOK/9k4cwLKJXO/T5ae59MhcUjuAU1PK9mm
 B4wU4Ztuhl3SctfdBEE21H9bTqvPA9rCYsjlnA9zrcMSVRZyCaq6oA/opLB5tBOZ09eD
 cemM7vFg9fPasjRKf8q/j5J/j6q+ckmTP5tIjiTDUQfU/hh7ihbDOGjwPRbfgZf3/hDm
 sCjB5QTNzaGT1k7ToDrQG0Fk38fg+F9Q38gYCy1Dw2W6WpkjP3DMlVJmYqv4miOLmfh4
 RyTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bK6MZWr6w6FAJdtYkaWJFSK0yuqaC12S3EefYxnzoEs=;
 b=jfq5FzWA8rjNZcjXH7qNyNmCEQgow3BqE1xhGrIoDQEqbC4nL83nUbGuJEGmwyzMaS
 PMUK/iWLGJ/UqQffND2dvY6QTEbRoArUtmoZUNH1tTLB9FnfHn1MaDPdSTSJ93/f6JZB
 /SCjcKaKmVLsgc3cspBeVvSgSt3ddhSofWi92E9pm1VYxK+0B67rGTLRSDnht23a71k6
 JqO6f91/7fDwoxIKju+pFOd8bA9ZonrSKuHb8AnYqaYfXKSU/noen5tRbYBV5nC1P0fY
 8srSnQ2Jyp+OWqFlxgRry+7rL8U+x1+0bfA112XxYrqhxLWyZAIDyHsEpl7r0URcdpHG
 a+MQ==
X-Gm-Message-State: APjAAAWrS+TF8BU3X7pyZXyHrjNkAssRC2Ff1wKOrBVBLyI7JLEMj7qq
 OziJIRYKs608IdkPBC5xMhkcVZzx
X-Google-Smtp-Source: APXvYqzFrheD9iRIOM5AGnrOqazLAlu0eRDin8o2r2cvC5uhiD4ntPY1J0weH2MFxRKW4uaScLjgGA==
X-Received: by 2002:a17:902:201:: with SMTP id
 1mr18757795plc.276.1569848709401; 
 Mon, 30 Sep 2019 06:05:09 -0700 (PDT)
Received: from masabert ([210.161.134.36])
 by smtp.gmail.com with ESMTPSA id q14sm26181571pgf.74.2019.09.30.06.05.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Sep 2019 06:05:08 -0700 (PDT)
Received: by masabert (Postfix, from userid 1000)
 id B118F20119E; Mon, 30 Sep 2019 22:05:05 +0900 (JST)
From: Masanari Iida <standby24x7@gmail.com>
To: valdis.kletnieks@vt.edu, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: exfat: Fix a typo in Kconfig
Date: Mon, 30 Sep 2019 22:05:04 +0900
Message-Id: <20190930130504.21994-1-standby24x7@gmail.com>
X-Mailer: git-send-email 2.23.0.256.g4c86140027f4
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fix a spelling typo in Kconfig.

Signed-off-by: Masanari Iida <standby24x7@gmail.com>
---
 drivers/staging/exfat/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/Kconfig b/drivers/staging/exfat/Kconfig
index 290dbfc7ace1..12f7af346c9b 100644
--- a/drivers/staging/exfat/Kconfig
+++ b/drivers/staging/exfat/Kconfig
@@ -6,7 +6,7 @@ config EXFAT_FS
 	  This adds support for the exFAT file system.
 
 config EXFAT_DONT_MOUNT_VFAT
-	bool "Prohibit mounting of fat/vfat filesysems by exFAT"
+	bool "Prohibit mounting of fat/vfat filesystems by exFAT"
 	depends on EXFAT_FS
 	default y
 	help
-- 
2.23.0.256.g4c86140027f4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
