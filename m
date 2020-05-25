Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8991E179D
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 00:10:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA6378575B;
	Mon, 25 May 2020 22:10:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h9wACnoTujO7; Mon, 25 May 2020 22:10:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD091852D5;
	Mon, 25 May 2020 22:10:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4AAC11BF311
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 22:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 474A6852D5
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 22:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sTySHInK8sBT for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 22:10:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA0A084974
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 22:10:29 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id a23so14767866qto.1
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 15:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=R6Xa8EN86SAGRoi2M/m/xTMLbavyUnpTJzYQ9R1jq8Y=;
 b=NYwY4NBFAVlIMSZEDh3nZmLd5bQhtDlnsA2UWVh9bPNBYyibm7m/3xBI6tOgFxhcNt
 9hdBjg0CuD8cbKIRl+s9PsE1xI7h4QU6ZrpINWwzGvHC3OSXaD15YQZD5u+q6vd5bBz0
 8jd8kHFoSndEd208hs3mzYp14rKxhBBWvE+R8O0fMbHCKAMEy9PKWClMOn8wtG0YuDuS
 ruIZ2r5GJfTdnQaMAPlu8F0uih6kwtNsHJhYFcrZooL2m2G+M1UNIWUZLHLBpw7TfFH8
 WYSDf6QOy1zm7uXbC5fzTe2zhkgYhSUsV1hqGvvS1du8o8fd8+CBjy6LEZVahpuVoO3x
 BnFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=R6Xa8EN86SAGRoi2M/m/xTMLbavyUnpTJzYQ9R1jq8Y=;
 b=cArkb6ZyLqVBJRqbxjHdIyutzI7ozRDowxHSqjynw5Y+M1bAln0+v8oyEX/E3pebGj
 7YYN7OFOj7lUhUylz2K4HCOuwAVO0ZcskZ6TSJvs5WViIieQ9gFdiQ7uP4q9j0BmPDpr
 TRTKOKlIeB7EufakLs5OgejmBdC1jz0kWdOjJQoxfSemnA1xJ1UEO/NmVGspyCsdvqyg
 EbR1L5Fp+8RbNU6bbZhgQxFb57c3gGtTQOxpKb0GRco6vP8j05wwPgPAqzdo/n4tqoO2
 q3rqjh7oJZ/Jm6ZWdXv2tviybcmS10irncD5mwZ6bVNgxsbpOWnaW3P6+pSO1x5KvPhN
 ZJEg==
X-Gm-Message-State: AOAM5332sFZBGMyxtq9pAV1uRXBzDtSL7afR0UnO4flgbWV0nm+c3dmb
 9Q8nBoriH2P7CS3bG6RxgUeX4+vImdY=
X-Google-Smtp-Source: ABdhPJxb+ASkMvAMQ/poC/yE7dD2nitdX3FyZCJTBmNOuFy7G/1XUhu0mA8tKRVakV9ziGvOaobBsA==
X-Received: by 2002:ac8:fa7:: with SMTP id b36mr14631508qtk.100.1590444628403; 
 Mon, 25 May 2020 15:10:28 -0700 (PDT)
Received: from igor-Aspire-F5-573G ([189.84.32.31])
 by smtp.gmail.com with ESMTPSA id 5sm1280380qko.14.2020.05.25.15.10.27
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Mon, 25 May 2020 15:10:28 -0700 (PDT)
Date: Mon, 25 May 2020 19:10:25 -0300
From: Igor Ribeiro Barbosa Duarte <igor.ribeiro.duarte@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: Fix number of characters warning style.
Message-ID: <20200525221025.GA27612@igor-Aspire-F5-573G>
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
Cc: devel@driverdev.osuosl.org, igor.ribeiro.duarte@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch error "WARNING: line over 80 characters" at cfg80211.c:451

Signed-off-by: Igor Ribeiro Barbosa Duarte <igor.ribeiro.duarte@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index fac38c8..a911bcd 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -447,9 +447,10 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 	/* Set the channel */
 	if (channel) {
 		chan = ieee80211_frequency_to_channel(channel->center_freq);
-		result = prism2_domibset_uint32(wlandev,
-						DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL,
-						chan);
+		result = prism2_domibset_uint32
+			 (wlandev,
+			  DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL,
+			  chan);
 		if (result)
 			goto exit;
 	}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
