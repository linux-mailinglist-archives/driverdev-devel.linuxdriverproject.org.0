Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B70A3685
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 14:18:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF55A8806D;
	Fri, 30 Aug 2019 12:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zv0ENnEpPizC; Fri, 30 Aug 2019 12:18:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6498A87FCD;
	Fri, 30 Aug 2019 12:18:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37B4E1BF25B
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 34FD020459
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ewh6L5+2HDel for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 12:18:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 37BA52043D
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 12:18:13 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k3so3463581pgb.10
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 05:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=d+u4kAGquV8UHBtexzJEDeIUXA+wS2Qu7dNuoeTxVJ8=;
 b=Fr2n4Hgmslw4/PFIV0ItqyrHA8SleeT0DpVjWEt9WUYA7C8MfZ5kuWmlaIi2Sxv92H
 jrJDiKtbuRBecOcLtk+cdGIjdrnzabaxrcX1+KOpP6Cqfva4z5PfPdQR2/Ig32h/Nif9
 7Ba7CmGhX2OAx3shlP9WAgx9XsmqpyzBZN7nEsSvx+BSu5LHjL52mXdPNWDQoy1nFVyI
 sdDWitbP8stiSWVKfqD3REzQ8h+vBTMJbPLkSuOw1c0XAJYcYqz5miuKOQh2b4Hq5l7m
 yhFETniYe+QbtzI0DPhvF2Ka3iPzmcwi/i7pk3xWzAlXfplvitsOga1GzPjViDmEy9eD
 ZE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=d+u4kAGquV8UHBtexzJEDeIUXA+wS2Qu7dNuoeTxVJ8=;
 b=YtOnYUs5JqANH3iebbQ6yloFmW5JAhEARcW+W40UmYQyEyoLzAQiuHagU5LTVdRwMu
 UYRtnZAmFPbvP4xhB/taQdhoUR5pav2qyBZgZOPh7XcSey3XctL2eASllu2Ioi+liP4L
 AfM04OpfYnzzuc2jdX34eBVXlDlUjn9Rn5l8lNmr6db9MnwQwwAxk9H6B5r9/NCWb5Xz
 9GqqLOyX5Asbdq+9veYpoxC0m5WcNT0W5SBXQDeSxD5FyCZflc/3IAAZTsL/koNJf8UR
 OUIrHxB1Q+8rD0r1hm1Xh8er6dp1wC4vC1/2VNB6FOUJOHkhJoyJKsLXrFnUpz+5GJNv
 nKbg==
X-Gm-Message-State: APjAAAV9NTbHo/tnJIa6Accpk/lXEnFoAKDcRuv0I4kt1+clE0ehRjJK
 sFINjqqqNKMA1C8FlteJlvE=
X-Google-Smtp-Source: APXvYqw3EyjGxyI8hhrkbOttJeLIcyOCWLux6Ymx0e5OUquaLV4I3gLjRkHoCegaLLDbyNQjyXoUlw==
X-Received: by 2002:a63:3387:: with SMTP id
 z129mr12667607pgz.177.1567167492633; 
 Fri, 30 Aug 2019 05:18:12 -0700 (PDT)
Received: from dell-inspiron ([117.220.112.196])
 by smtp.gmail.com with ESMTPSA id e13sm13887882pfl.130.2019.08.30.05.18.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 05:18:11 -0700 (PDT)
Date: Fri, 30 Aug 2019 17:48:01 +0530
From: P SAI PRASANTH <saip2823@gmail.com>
To: gregkh@linuxfoundation.org, kim.jamie.bradley@gmail.com
Subject: [PATCH v2] staging: rts5208: Fix checkpath warning
Message-ID: <20190830121801.GA10295@dell-inspiron>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpath warning 
in the file drivers/staging/rts5208/rtsx_transport.c:546

WARNING: line over 80 characters
+                               option = RTSX_SG_VALID | RTSX_SG_END |
RTSX_SG_TRANS_DATA;

Signed-off-by: P SAI PRASANTH <saip2823@gmail.com>
---
Changes in v2:
 -restructured code for better fixing the checkpath warning
 -wrapped commit description

 drivers/staging/rts5208/rtsx_transport.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d78..48c782f 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -540,11 +540,10 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
 
 			dev_dbg(rtsx_dev(chip), "DMA addr: 0x%x, Len: 0x%x\n",
 				(unsigned int)addr, len);
-
+
+			option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
 			if (j == (sg_cnt - 1))
-				option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
-			else
-				option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
+				option |= RTSX_SG_END
 
 			rtsx_add_sg_tbl(chip, (u32)addr, (u32)len, option);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
