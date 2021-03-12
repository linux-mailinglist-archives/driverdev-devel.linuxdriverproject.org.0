Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9A7338BBB
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 12:44:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6DEF4ED5B;
	Fri, 12 Mar 2021 11:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ij6ci0ogHT_O; Fri, 12 Mar 2021 11:44:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 935DE4ED47;
	Fri, 12 Mar 2021 11:44:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 92FE21BF3B0
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 11:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A61D8452B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 11:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wIvMMMP2_Ql0 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 11:44:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C795784437
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 11:44:36 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id 6so3468863qty.3
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 03:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nWg8A82KvGdxFog2ERysU51pQuJCMumjyKCQKjXfGK8=;
 b=iVIUmPTee8dNR/u7hc+xK/EUItu++ndF4G+djms03C/9dvZnb6wwMXneOIQsuGqo4f
 PUFfmARNQWOGYu3PzolB63AlAqgN1fQN60UZDx0yyPsCr4PTTTUypZaPLb4v0XfiTxay
 GTtgtP+pSQaqKokIgxw8Q383Gu/lcNU+P0Gp4iXwoE6gRZT9tFskqoR1F2jfedrqFSnL
 9rW8CtA4k5wPE3j37xevptfNq3ELB98ROJ1n+PyVXsr0esY5DvxgZZvZ0csnYzafpb11
 pHP5sFdFDW6ZnJeJbnyxgkGB1AXT8i6t3lDCXgHFjcjzIG2u9HIEV58Cg99+49f3d2Rx
 mJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nWg8A82KvGdxFog2ERysU51pQuJCMumjyKCQKjXfGK8=;
 b=D25nn1S79zUh9v/FGZJ2SE6sPNoh22iv7uP5oie15QJAL6gLOh0bOQ5YYTDgxX0sCG
 LjcjVU7aiW2JXmMd5ZNovvQOvuhnvksmqXr0hI0ZT0ZmcuyZbWfUCTyn03UE4ErwujET
 KPXypghnKVupl90alX68GCBpL2pG/W2X+WXs1EVs9ionRNIV2vnsOLD8ZRX9zAzg18bC
 pUfs6A+kYBqyApp9y4TjWAGBOD1DA0M3nilZo9hdeMhzJCU7wYV+Gsf9Yv8wPe6UXzbi
 I//utoBESko9P0xzpmABQN/tBGovtcA2ZP44evfRJwC4kUofY9pUstrs7lMmvvfsp8B0
 D4hg==
X-Gm-Message-State: AOAM531UrFI2IoHwlsxpB6PYPm1rQqsDyDIZ4eOv6EabJrVH3j4wMVJy
 TJx/+UPHV0W7tGBl8khiRZE=
X-Google-Smtp-Source: ABdhPJyfpE7bWmA6t/13Rq22iMMV+mS45mTTpchKuGCz3b3kmzaQb/B+l62ZfbF/uVfUSzSsVGwUpA==
X-Received: by 2002:ac8:5dca:: with SMTP id e10mr10983735qtx.242.1615549475512; 
 Fri, 12 Mar 2021 03:44:35 -0800 (PST)
Received: from localhost.localdomain ([37.19.198.63])
 by smtp.gmail.com with ESMTPSA id o7sm3960756qki.63.2021.03.12.03.44.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 03:44:34 -0800 (PST)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: gregkh@linuxfoundation.org, arnd@arndb.de, lee.jones@linaro.org,
 kuba@kernel.org, johannes@sipsolutions.net, unixbhaskar@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wimax: i2400m: Mundane typos fix in the file tx.c
Date: Fri, 12 Mar 2021 17:12:07 +0530
Message-Id: <20210312114207.3624-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.26.2
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


s/exahusted/exhausted/
s/caleed/called/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/staging/wimax/i2400m/tx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/tx.c b/drivers/staging/wimax/i2400m/tx.c
index e9436212fe54..2d15de653951 100644
--- a/drivers/staging/wimax/i2400m/tx.c
+++ b/drivers/staging/wimax/i2400m/tx.c
@@ -85,7 +85,7 @@
  *       can keep adding payloads to it.
  *
  *     Closed: we are not appending more payloads to this TX message
- *       (exahusted space in the queue, too many payloads or
+ *       (exhausted space in the queue, too many payloads or
  *       whichever).  We have appended padding so the whole message
  *       length is aligned to i2400m->bus_tx_block_size (as set by the
  *       bus/transport layer).
@@ -295,7 +295,7 @@ enum {
 /*
  * Calculate how much tail room is available
  *
- * Note the trick here. This path is ONLY caleed for Case A (see
+ * Note the trick here. This path is ONLY called for Case A (see
  * i2400m_tx_fifo_push() below), where we have:
  *
  *       Case A
--
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
