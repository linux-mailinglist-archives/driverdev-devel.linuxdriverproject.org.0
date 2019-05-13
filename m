Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5339F1BE1C
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 21:39:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1907F22EDD;
	Mon, 13 May 2019 19:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1SAUXThPyAxG; Mon, 13 May 2019 19:39:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 53DBE22FD5;
	Mon, 13 May 2019 19:39:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D75A91BF3ED
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:39:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D47D48272B
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZYCRxFNiR7-C for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 19:39:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5C1BC826AC
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 19:39:13 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id g3so7743621pfi.4
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 12:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=3C60BtBJXidIkOB1gIf5Gk9bgRYp3V5RYx2A+qlWxWA=;
 b=fAjkDGWbUf+F7O10svI+sSRRreFEEaYndqx4aYgOW5WzhW5/McVsN2atfR4TKn8rUb
 uMD5uzucxZghmXgeFWakcZJPym2EG2VmElIUF29lshQZLzngdrX7tUQltySF218/3weH
 GrOraLHHNQ+w+TbBAkLbCXVULDOfdS1dMZ7TQLLr2p0QK7EQQedXPTR/5dSIiZGuHCLy
 nIqOxyPj1Gry6uExx00wsxIX7FnmM7lT6WxMs9JJaesLIHL+2IZNqkVt31e2Ej2FiFhW
 qKVyhL+f/c0AON33WiqI2vJIT8MwCAiGY2hPiRFkSjt09nTizREJuJFPeKkD0YZF1jxm
 8DSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=3C60BtBJXidIkOB1gIf5Gk9bgRYp3V5RYx2A+qlWxWA=;
 b=OryTZlpAcEXDlCn+7t5vaiazy8hK/eFRA7PiqoqzaUMQ93sSYv/k/2lly4dyuadE9U
 9b9jkzZ0kNpFDnEt+Si1/4dcNywx3WzPbZ7xdtF1fPDig8jQSMIaRKFHkkoM8YjJo4C4
 o2qne39wPCpGwDICAv2bipmTvqePEbztDbHjtk2OMeTP576aEw8xeVubSjUAvOZqLwgX
 EC76jh/bBfZTnrDIRU1m9CbEdtJIVSB0v2xSEhD2PqoVURLs03RvyJS0wEMFb340BI7a
 hhOYZH8A7L4fuZqxo6uUYhcgujhecQP8lkHguSIsU9ZLypi91vBsEROoayrep2yF66Ie
 STPA==
X-Gm-Message-State: APjAAAVbQcf0J6BuvkJZduy2/qjQ4PoxVbTRKZt2k1dHodF8tQSxi/W8
 Z9anLq4woe/FzeHtHCBGOQg=
X-Google-Smtp-Source: APXvYqz3OiwJwP1FGE0aE07Ik31/wJQCAELblZ3v1P+B7tw+ZFIh38xKFYy/oYWldhEqGuyw5m48cA==
X-Received: by 2002:a62:ac0a:: with SMTP id v10mr36376515pfe.57.1557776352765; 
 Mon, 13 May 2019 12:39:12 -0700 (PDT)
Received: from arch ([2405:204:7102:1ca6:a53f:1f68:43dd:48ab])
 by smtp.gmail.com with ESMTPSA id f20sm24083141pff.176.2019.05.13.12.39.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 12:39:12 -0700 (PDT)
Date: Tue, 14 May 2019 01:09:06 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH 2/5] Staging: rtl8192u: ieee80211: Fix spelling mistake
Message-ID: <20190513193900.GA30313@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Correct spelling mistakes at two places in comments.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index bd97531a254f..72f418e5b49e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -557,7 +557,7 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
 			//stats->rx_packets++;
 			//stats->rx_bytes += sub_skb->len;
 
-		/* Indicat the packets to upper layer */
+		/* Indicate the packets to upper layer */
 			if (sub_skb) {
 				sub_skb->protocol = eth_type_trans(sub_skb, ieee->dev);
 				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
@@ -1311,7 +1311,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 					stats->multicast++;
 				}
 
-				/* Indicat the packets to upper layer */
+				/* Indicate the packets to upper layer */
 				sub_skb->protocol = eth_type_trans(sub_skb, dev);
 				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
 				sub_skb->dev = dev;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
