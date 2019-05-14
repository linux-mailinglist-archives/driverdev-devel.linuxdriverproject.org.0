Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2641E1CE02
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 19:31:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D268E860C6;
	Tue, 14 May 2019 17:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h0Bq4Y3o9Sa0; Tue, 14 May 2019 17:31:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7AE598607D;
	Tue, 14 May 2019 17:31:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA5D51BF5F5
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A7BAC87BFF
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2qMHflUWBe00 for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 17:31:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5DF7987BF7
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 17:31:16 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id n8so8588915plp.10
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 10:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d6Gg5lEf1lUGNyv19PJo/JTqjiNHfihmwZEb/DfCZQE=;
 b=uDNQFSs4e32ZsDPcN2WTrTKUyf7RJ26wm5R/QyrLJw7TOQfF4gJnk+Zz5FMLezlhFZ
 s3JxQdxb6aK1l4lHd1GhUHdPQkC/CR5WYamQkOg+Qb2t1WTu4Qvl+Ktr22oyWmKBqyoQ
 7oejvhFNgtXzXQEWOU+1s0uDHYD+DdZDu6xFkK3x3ceGUoEFvelCY6rnbeALiqijknhX
 jebmDCQgtegcK4xkyFQ6TI9sX7CobjhQTe1hsDDJsvv4xXuqQsWWL21uWAWn6Yc7c9Ee
 MgCB/nXpnPUZcfTGvzg9+cpDmdZVe0jFwCsQgHEF9j9f+iOqfNY6MtSxhzEE+FZ5bEb8
 Mkww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d6Gg5lEf1lUGNyv19PJo/JTqjiNHfihmwZEb/DfCZQE=;
 b=bp8XK1A0ZUKSrQpfyiL0sgViGKrQnZpJyvcTwDI4VgIgiUGlfy5i0aCNn5vThAlXYg
 MpVTbuAFBbgOxfx0IgtLsl5IHBnK/T2gl8lCELT4qwEEJbfdbF1byk0Lyi9dRBt975S/
 1HGK7O7OAeSKwH4QbZG+vhIpSWxakASb0UINa8bsAGVet03BDJXDMFuh0LmxIBsxnERQ
 wUOqYPXZ2eTBRN6F8fE/8SY7s7ZO0x3XO4A28LpmhK/FSuXR7A9lDZrFLBk2xVsstQIF
 yKHd+t0ZtZcC7WyP8Ksf0TTbKz3G0Yt4/K5GB6EJA4NafpNqUOiZdRsf1Wxml/Wqx3N5
 g6NQ==
X-Gm-Message-State: APjAAAXe8Oww/dAiZ1R1hjN+6LuHdfEttuQ9Zcvyq6FrYres8p+4tPhH
 XzygKSz8fh5yZHUNT9dEY8G0hWyOgIQ=
X-Google-Smtp-Source: APXvYqwWryXwQK7jkag03up/1vTTrEqR7GiO49SQD6vg1W4VDPjsTJV9NdIykRPnNSKBmSI4WFh1SA==
X-Received: by 2002:a17:902:bc83:: with SMTP id
 bb3mr36761954plb.303.1557855075965; 
 Tue, 14 May 2019 10:31:15 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7145:24c8:f23d:8e91:fd10:9c55])
 by smtp.googlemail.com with ESMTPSA id n9sm2222485pfq.53.2019.05.14.10.31.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 10:31:15 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: puranjaymohan@gmail.com,
	greg@kroah.com
Subject: [PATCH v2 2/5] Staging: rtl8192u: ieee80211: Fix spelling mistake
Date: Tue, 14 May 2019 23:00:20 +0530
Message-Id: <20190514173023.31146-3-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190514173023.31146-1-puranjay12@gmail.com>
References: <20190514173023.31146-1-puranjay12@gmail.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 Puranjay Mohan <puranjay12@gmail.com>
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
index 1ab10d8919a6..a4477b8e7f2a 100644
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
