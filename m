Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 655CF5017B
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F209985567;
	Mon, 24 Jun 2019 05:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WyVxlQ+QwodT; Mon, 24 Jun 2019 05:49:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0E4384C20;
	Mon, 24 Jun 2019 05:49:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DDCA61BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB04184C20
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSbfMacfHAja for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:49:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4072084AB8
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:49:34 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q10so6841894pff.9
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 22:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GJmEQz8YeLeC0tMON3nR9Rt7cqrpKSKYJ8Yrx/44LbU=;
 b=nhYfNi5n7D0EYTYZsKhmUyRWPl1CtiiEa9/sWAT5tORpbufHl+TAPXi/RGEfl9jBQP
 oYxQjTTg731OA1sOpnEa6oVAzbU4Y2irBkfO6B0aXOqKKGCyBmE4QJFiOm5UeN2TFndz
 xWvmvoZPk2nRdhnhlwJGjre6MHTHwPL6ryEui7DH2A/en4cBbAmCsdpIVngoIItzUjc9
 qb7BjXR5QLwH70LK/yCTvx/EklsoZ7XL1bftXmzD2rKbHFSOfQJpSzSlvQ5eIj3+M9x4
 ScdsXpLpBtXhfwOr6mTqBSwKVEftflUM2xTUJSU2X31OhRlg1V+R8qnxIGQOuRyGwYYA
 WYMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GJmEQz8YeLeC0tMON3nR9Rt7cqrpKSKYJ8Yrx/44LbU=;
 b=JqzegMayv0qHYBL7WwPq6JU3GfflKL5oXtew3MZR8JSexHmvEFWTTGiqyqHON87hoh
 6pf8cUTm8GcKH5MTx1q1AX4ShCfeI+GVQS4HHzkC689NmEPwBbasLMpGKjIcMwmz9Nrj
 o/TJ0hDVpdQa5WNq3WU2F07kE9jKtbBF/MD6K9T/O1dw1Tpt/1bjgS4kRM7c2ckkX82g
 fzD8+2HnGzYhAJWaAE7p8aIxzx8FtTkzE588BaYuH7qVFYL9eUtRdqtanB5Y1uhHuzWa
 BmHtSoiHtcSsQ0ed9avgYmWp/woqb9jZWnmpBTHFaPc0BbZznM2JG0H5IptOR+8vqK7z
 MO1A==
X-Gm-Message-State: APjAAAVGxlgrBU+PRMsPpn8H4gn5DIK5IcFt8kd+FurM62VeXz0SLU0Q
 i/Rve/GeEbpz8nXFCRgghsM=
X-Google-Smtp-Source: APXvYqzUqMzpr1LyhKXSKlE7+gJj66hhZKKigOPBspoCbuUgVHQAg30iOSoCj5pndT2sNEOq/n/A9w==
X-Received: by 2002:a17:90a:d681:: with SMTP id
 x1mr22261997pju.13.1561355373926; 
 Sun, 23 Jun 2019 22:49:33 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id s43sm11908182pjb.10.2019.06.23.22.49.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 22:49:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: [PATCH 07/10] staging: rtl8712: Replace r8712_find_network()
Date: Mon, 24 Jun 2019 11:19:00 +0530
Message-Id: <20190624054903.2673-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190624054903.2673-1-nishkadg.linux@gmail.com>
References: <20190624054903.2673-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function r8712_find_network as all it does is call
_r8712_find_network.
Rename _r8712_find_network to r8712_find_network for compatibility with
call sites.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index c55555546d42..0cc879a4d43f 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -129,8 +129,8 @@ static void free_network_nolock(struct mlme_priv *pmlmepriv,
  * Shall be called under atomic context...
  * to avoid possible racing condition...
  */
-static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
-					 u8 *addr)
+static struct wlan_network *r8712_find_network(struct  __queue *scanned_queue,
+					       u8 *addr)
 {
 	unsigned long irqL;
 	struct list_head *phead, *plist;
@@ -215,20 +215,6 @@ static struct	wlan_network *alloc_network(struct mlme_priv *pmlmepriv)
 	return _r8712_alloc_network(pmlmepriv);
 }
 
-/*
- * return the wlan_network with the matching addr
- * Shall be called under atomic context...
- * to avoid possible racing condition...
- */
-static struct wlan_network *r8712_find_network(struct  __queue *scanned_queue,
-					       u8 *addr)
-{
-	struct wlan_network *pnetwork = _r8712_find_network(scanned_queue,
-							    addr);
-
-	return pnetwork;
-}
-
 int r8712_is_same_ibss(struct _adapter *adapter, struct wlan_network *pnetwork)
 {
 	int ret = true;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
