Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6FF4C07A
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 20:04:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6A9C72107F;
	Wed, 19 Jun 2019 18:04:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hDBVCsWQ7Oah; Wed, 19 Jun 2019 18:04:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7766E2014A;
	Wed, 19 Jun 2019 18:04:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6747E1BF592
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 18:04:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63FE62036B
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 18:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iciZw2o04RK0 for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 18:04:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 967392014A
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 18:04:44 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id a93so129508pla.7
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 11:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=7m2ha+L8huO4NXvw7qzQc2/yTmlcVlH17yimZLX3etc=;
 b=PPnskNfL6WbL8OyfE6B38CzstmszpK3SrLVfx/RCjS+WMoIyj1X8okxl71X9Ild6mt
 7eBZSFj5KeB31sCt0EaiELblNrSRPZyLvTX6U0q4xTys5O9gj/U80jLtVNt5DWV3P16O
 YSbliiWOCxDzB6RERLkSVdbZFu3CRb3cTBf0jhWjOeLUs3DB65iFNdOblB7qcA9ysuv+
 yMm779CZXH0XDZlN2tYZjxOevcTDiReRCkh1WuLHOjLsdh/FPXkZ3X8/eeGIqZQ+eXZw
 ARgC8t2ttImuMicO+UxicAyE5bZAkD7wQ4Yh9qk/Hafzm7frvC0ylHVAC4iizxIlBPyI
 eQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=7m2ha+L8huO4NXvw7qzQc2/yTmlcVlH17yimZLX3etc=;
 b=bAnvBf1002/UQZWWFxhFpCbgzIVfskuUcoJPgmqZXIkS+e1+gbkgllQ9ZEyabcCF4G
 M3OfJaUNwawsH1nqiWck/jAilT4id3bfuFT+kFFIcTsIKEpRcehgfiM8UjtdWEc6MpSN
 hdZlIqPVOxQAZ7X8axaGNeff6LJvrtbXHGXX/+Gypqs9YF81sshX4qDWv982EreDVEMB
 kDesoFpaS1jhNF6qeL7O7EBmuRpp4pjz4BOXbDREuxIJeZERLB7MTpvQfCYVw2t95/0j
 ZOAoXej58+LbTb3itwx5Puw3AYtSfWRsezsMxNj+cpYcUdonqrd2HY3lV8vKZcn15OQX
 lKvQ==
X-Gm-Message-State: APjAAAWoeh8nBSp1QKZmH9Uj4YDW7Q+7Hv3XEX0lerSXhfuYK+rOXhUq
 BfaPCFbYxLWX8uH1QziAxvw=
X-Google-Smtp-Source: APXvYqx7cDNbvM/pzCoDzfkLBR073ZfulY8LkDyVorgrIitxs6TSkQhay63vh70Brw6w6BxBNH34Fw==
X-Received: by 2002:a17:902:2926:: with SMTP id
 g35mr75041411plb.269.1560967484220; 
 Wed, 19 Jun 2019 11:04:44 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id w187sm21152788pfb.4.2019.06.19.11.04.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 11:04:43 -0700 (PDT)
Date: Wed, 19 Jun 2019 23:34:39 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: HalBtc8723b1Ant: fix Using comparison to
 true is error prone
Message-ID: <20190619180439.GA7217@hari-Inspiron-1545>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes below issue reported by checkpatch

CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index eb6e07e..768ad53 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -1421,7 +1421,7 @@ static void halbtc8723b1ant_PsTdma(
 
 
 	if (bTurnOn) {
-		if (pBtLinkInfo->bSlaveRole == true)
+		if (pBtLinkInfo->bSlaveRole)
 			psTdmaByte4Val = psTdmaByte4Val | 0x1;  /* 0x778 = 0x1 at wifi slot (no blocking BT Low-Pri pkts) */
 
 
@@ -2337,9 +2337,9 @@ static void halbtc8723b1ant_ActionWifiConnected(PBTC_COEXIST pBtCoexist)
 					);
 			}
 		} else if (
-			(pCoexSta->bPanExist == false) &&
-			(pCoexSta->bA2dpExist == false) &&
-			(pCoexSta->bHidExist == false)
+			!pCoexSta->bPanExist  &&
+			!pCoexSta->bA2dpExist  &&
+			!pCoexSta->bHidExist
 		)
 			halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 		else
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
