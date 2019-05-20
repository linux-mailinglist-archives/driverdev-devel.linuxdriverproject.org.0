Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCC82402F
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 20:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EAD6A85C0B;
	Mon, 20 May 2019 18:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1DZ9GW7Mxyak; Mon, 20 May 2019 18:21:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 855AA85784;
	Mon, 20 May 2019 18:21:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30D621BF281
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 18:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2DCF82309D
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 18:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 64XJshEiNTHo for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 18:21:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 767B322D10
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 18:21:32 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id x15so7079851pln.9
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 11:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wKJOm6kg27/0rjEc9k5xztk6knB5G3JkkEV/COiCaKs=;
 b=tzdb2hFPlk98RETI5DC2F3PgAPfbY9RWT65cKTBvDc8eVgcdAVbUk7R10GfMgMwS2e
 zmL8IIAglQ3iW+JTaNQEdr2CIEYjN6iDSrCvjIR60pVzFh62Q/MXWaUp2Eocu1rhaNqp
 F01B+E2FqgByC3a97cjTuz7nerjxC9PkW3GPRUrUgXXfiiZq8A/1LRyX+OiGjZbXt0YE
 YRl0p60fK0B/RDiFpOFoZLfDYojWNcp0VQUv2sCmALN8qft1gDCwNbf0r6F7ckOR/r5X
 9b6wS8PEEU7t5S5s3YFaT6UyeHfDn9Y6hyuLeo3Fst7pkwzaRuewaQWkAfLVDiAmCFPo
 rsxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wKJOm6kg27/0rjEc9k5xztk6knB5G3JkkEV/COiCaKs=;
 b=DsEKlx8OkLvwzWD2KUDCF+W7y92LlvhKpKHNiPf5kJN9XGnuYUusu3kw4EsBsNOoNe
 X8kT2CIK7LALYUZhfrkObWupk0HZkBSytf5GsbWskx6y1Ymbt/w+xk3xjztKtC0ez5gU
 c0HAmogqVOYx+mn8r0UjnAp9Q0b8ojatWcF4dnV+J3svdqn8vUYjfKJ2Ye2nXiVA49nQ
 VrvCbhBP0iUEIjDnRG7tOeTM4+Da6pQnFnv7wemYzV4yF5GZuQ/3zAp7o78zXbTwQjHy
 cIhqm4hqwLejQhTC8nobyNzv5gmIaa8Zu507KGIUSC3HeI8a9bDShHnHLFqCm8Fpxp0D
 i6jg==
X-Gm-Message-State: APjAAAVVdK6ukykPanBldLgloSuVNcJJI4qExqyD7E6QVLvj4TSni+il
 sQYR5HnVn5QTfcVy8jSpsls=
X-Google-Smtp-Source: APXvYqxf+um3O8NYtQHJlW8NnvPp26OrPdgQb9zQ9DJYxA6fV+j78IsP1r2m5c8Q0b5u4ZFOED9WXw==
X-Received: by 2002:a17:902:b58f:: with SMTP id
 a15mr33739746pls.201.1558376491948; 
 Mon, 20 May 2019 11:21:31 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:710a:10b6:3f5a:791:d4fa:24a8])
 by smtp.googlemail.com with ESMTPSA id
 g8sm9194313pfk.83.2019.05.20.11.21.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:21:31 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8192u: ieee80211: Fix if-else coding style issue
Date: Mon, 20 May 2019 23:50:59 +0530
Message-Id: <20190520182059.22699-1-puranjay12@gmail.com>
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

Fix following checkpatch.pl warning by adding braces around if
statement:
CHECK: braces {} should be used on all arms of this statement

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
index aab1586fe0dd..4a8d16a45fc5 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
@@ -244,9 +244,9 @@ int ieee80211_wx_set_rts(struct ieee80211_device *ieee,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	if (wrqu->rts.disabled || !wrqu->rts.fixed)
+	if (wrqu->rts.disabled || !wrqu->rts.fixed) {
 		ieee->rts = DEFAULT_RTS_THRESHOLD;
-	else {
+	} else {
 		if (wrqu->rts.value < MIN_RTS_THRESHOLD ||
 				wrqu->rts.value > MAX_RTS_THRESHOLD)
 			return -EINVAL;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
