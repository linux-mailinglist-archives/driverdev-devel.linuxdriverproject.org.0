Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 150705CAB0
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 10:06:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7BA7921511;
	Tue,  2 Jul 2019 08:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ji7mt7yGlZ-U; Tue,  2 Jul 2019 08:06:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0742620794;
	Tue,  2 Jul 2019 08:06:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DC9B1BF30A
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 08:06:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9A4C5203B6
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 08:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IlAhWE3RpQgY for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 08:06:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by silver.osuosl.org (Postfix) with ESMTPS id DBAFF20385
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 08:06:37 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id d4so26321911edr.13
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 01:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=v+gVEdHeB1hIvDD6bk9LhL2aP9OzxGeZK+EU7eJOmKo=;
 b=ZGeac4dfLGFaSPbVkqUj7qpg5c9UtxWKJUYqasnnRpUrX+7x+WLbzKZ6d25IvbuF4n
 r4fsbVVgEfcZUFKEZbv/QUtpqFGsmZossPQYMkO2pPSbhjC05OIk8CGFLNSN/0tvVUCN
 /rRulAIK5UQ9dOnOQUMtP6WRA8k14RustF8TzodmMLE2AMCLe0YkbW8zo38jo/wHCDkr
 OU80XI1DVy8D+BtMwSG/2T9bvcl4XnjI7SVu16feowa4PGzvvtJ+H6D5WOmV3mandOkD
 Jl1TK7GKVp4KbFWUpqgOWfB0W8HlEg4ycJzBr8sf6Mzol4YXUZPeZNvOBq7ZEpD3iOhS
 AtbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=v+gVEdHeB1hIvDD6bk9LhL2aP9OzxGeZK+EU7eJOmKo=;
 b=UmEcN41NhrxlQ3/2LUTyKe6mjsfVnMJvYesiPxwc45UyalX+yICFwd5+NCRQpiDRDE
 GloPe7dRbbGHPIQt0tF//ZXhkPU4ykBrjFfCJhzz7Dr9Uwri9Kif1aCefUDdgv1UDMaG
 qUTcH2Ty7mqAc4fJQnvWr3jxjiqB13x++Hm1salhxusu02XubtCEFY9M4nFVfRFraToi
 jI9iAoVHMqXE5GBzn6Kh1EH/6eC9VJwsbxc9TBWyJ0siAu7t1Xx+jxojZCpFNJ5hePaw
 ahpTL0D0AHJS85ikWK5u8vCEU7BPc15AZSCbdSQAF2PBje/M+l7nLgVz2tGjnFCJCyjg
 a/jw==
X-Gm-Message-State: APjAAAW6v9xmXwL5mTYjvPwzDIOaCjLYWNC09uEdOHDz6ZrP4zyvrhB+
 xNmqQ4GHXdXQMG4VfrL6X4U=
X-Google-Smtp-Source: APXvYqyLyz4+m/jyDx9YPAgYfTRLOmth2w+dVO3Zgrz2HFR3uLrDnFJxKzRTjP2pGmF6eJQRU/U7tA==
X-Received: by 2002:a17:906:19c3:: with SMTP id
 h3mr26984148ejd.49.1562054795887; 
 Tue, 02 Jul 2019 01:06:35 -0700 (PDT)
Received: from puskevit.guest.wlan ([195.142.153.182])
 by smtp.gmail.com with ESMTPSA id m3sm4199465edi.33.2019.07.02.01.06.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 01:06:35 -0700 (PDT)
From: fatihaltinpinar@gmail.com
To: matthias.bgg@gmail.com
Subject: [PATCH] Staging: mt7621-dma: mtk-hsdma: fix a coding style issue
Date: Tue,  2 Jul 2019 11:06:32 +0300
Message-Id: <20190702080632.27470-1-fatihaltinpinar@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Fatih ALTINPINAR <fatihaltinpinar@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>

Fixed a coding style issue. Removed curly brackets of an one
line if statement.

Signed-off-by: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 0fbb9932d6bb..a58725dd2611 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -664,9 +664,8 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 		return -EINVAL;
 
 	hsdma = devm_kzalloc(&pdev->dev, sizeof(*hsdma), GFP_KERNEL);
-	if (!hsdma) {
+	if (!hsdma)
 		return -EINVAL;
-	}
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	base = devm_ioremap_resource(&pdev->dev, res);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
