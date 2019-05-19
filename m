Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D79C22766
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 19:00:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17E62857D6;
	Sun, 19 May 2019 17:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KHW6s79p9g4b; Sun, 19 May 2019 17:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD79985764;
	Sun, 19 May 2019 17:00:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 181861BF2F4
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 17:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 151408757E
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 17:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5wpNtFpT5M4e for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 17:00:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 89F6586F8D
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 17:00:51 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id c13so5617836pgt.1
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rQQVI/mBeOa+79Y8UJdObl15S0CHRO2qCfe0m0tOdgU=;
 b=bl2O+BmdmrKT8lcrGoVul3ADEjkpnVI6KhNm6PM+Ca1AqEv52iR2trmdE5RpwGxdWW
 PAonGynkeRpdoxiGuDoQlzOYB2MBBSbGZ+ziszlL46QJKlf3JsjmgyhV3I4zP2Ah6RMb
 nOW6UFtZpsM9DGr94ZxWhAb2nUv84lNtAJJQjD+35jQvx6NlRpDNXDMVxXuQHlTkdZU4
 HvGSwXEBG2BZtYL6tADPeeQ5YApY8wkHhRoa3zSq0en9+sigzVLyITVBe06eQsB59T/+
 3fE59OxJK8+kzJyHXVvZT0ma6yAOJcfqyZUZMWzC0ROBCt0v/Dza5wxRtjxVTfohio3V
 rEeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rQQVI/mBeOa+79Y8UJdObl15S0CHRO2qCfe0m0tOdgU=;
 b=dqnO+mo7ildylniOXnYtKjsg7CqwAFRtBdGnlhvghqtvLNVu3exKqRtDneeZCfebpP
 NPrbn/EWDwuVH9msTji/5ISPnexe4eiywjZh6ByuF9gUdxcf8Fzse9Ljuuanuz2U9VUi
 eFX0WWT/jYmjXlgSwHr08erPUv/oPrlsPxrZZ3X77K1MyJEN4n+xleNE1+ZxuNtG7jY2
 VALUTLvCqKDKeluJXb/CA+ayQ/HwtpMi4M+nlFC/5xb5Vzcf3EAXzBDITyNQiwpzbocq
 7tzUBKQPv+mMpuzb3sH6NoLxP8oIlpGFdf/lRrpkji4MFPngLRMiwc9lPUYbJT4q2SgT
 3cSA==
X-Gm-Message-State: APjAAAVlz5IJG717WBJE/34IgPR9aLAR96XtC5vXJUBUqTn4z9iptQrG
 zWRjObG15JLn9qW1jUrILW7yIxCU
X-Google-Smtp-Source: APXvYqwlaCmcOmF/4dhSuuDF2MUk0ZlqsTLTVH6/Vbrbd2e8yxwCZLgtfbdw1SlrZa2QW35lEzxHBQ==
X-Received: by 2002:a63:144e:: with SMTP id 14mr53084832pgu.304.1558285251082; 
 Sun, 19 May 2019 10:00:51 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:700a:25e9:21c8:81ad:7b8b:de85])
 by smtp.googlemail.com with ESMTPSA id t2sm10458657pfh.166.2019.05.19.10.00.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 10:00:50 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: mt7621-dma: Remove braces around single if statement
Date: Sun, 19 May 2019 22:30:32 +0530
Message-Id: <20190519170032.18190-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix following checkpatch.pl warning by removing unnecessary braces:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
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
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
