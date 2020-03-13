Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CD11845E3
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 12:25:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EDBE488A37;
	Fri, 13 Mar 2020 11:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPYCEcxcLpmW; Fri, 13 Mar 2020 11:25:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3CBAD889A0;
	Fri, 13 Mar 2020 11:25:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50D1E1BF339
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 11:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4B12288B66
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 11:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Papsq96nFA0 for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 11:25:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C5F2288A22
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 11:25:04 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id h8so4815790pgs.9
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 04:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=YSkGa2UvwX+1eAP/7tt1QNSs+cG/P3JEIi8YH4DrwtI=;
 b=ds12Pbz56P3HtbbsNiP4zu8oLtv3DjT0vb9zDsJp975Z7iWT+UKql7Bn1CkRWx/e+Z
 lhHdDYzzewJ0hOIL29hwJcGLYEwZXnsQQ7j/8DWWJiZ0fq3dt7T5IFczsndvW2IAKj56
 6wVOm9bWVjGqxkNIZGRpKm4PXbyb9TyJxux37s3ASVI2BmtOMyvWRtqFSgnRbJZK4xW5
 lpGgT5PBTw0HyO559MN+VBkV+5rIvXlP91pA4yLTkQESr8+XQ0zIVB6nhjvlzO9UQ3Wh
 7Gjt4KQnntaCUkE/cQ/e0nDuF3SPxxKH0T9EZ5QQhrzMXqJs1JFaJJpz0uJoN+P4YEWM
 fxjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=YSkGa2UvwX+1eAP/7tt1QNSs+cG/P3JEIi8YH4DrwtI=;
 b=UVD2PxRAAfA9ZZD2RqdZZi5lxSazLHNwJ34aAtjl8mM42SonoOk3AdWdgohGIMZ9ye
 D24TMhPXVsnOBXnMQ+vwq3OwBpfj8g4GmWNztpFYT47dPAjE9D+H9ID3KLoT4FoOwzBU
 AbTawJa0Xat6KDE1hBOt1AhJZjGxzDoKW15tfrvXAuQpdNm0DsaV829v/GmotLilRh72
 qYNri2Zu3DiuaacEeOoQp9Ny37yNThUJKQO+bUr3SJkiZmf3PoC5w6le9v+7GkOY/tCI
 YEvvWfWCMvq/LBuGnyAr7CM7vuFdS08/gZBrdIqBs8RsDmVQwrcv6dWKV10becOKX3aF
 F9/A==
X-Gm-Message-State: ANhLgQ27IYbbtnhS3r+CIbRsahnRErc0rTqAKq6Wd4kC07keTBXBGd/3
 s2K+EC1vKoXwoSZtZ6A0PZU=
X-Google-Smtp-Source: ADFU+vuDSMMAXyFa/6NoReYrOXDHvyFMKXE0MIjwd9O6n1fxC41XyWu8IW+yEakpYStTxRY16K73tQ==
X-Received: by 2002:a63:6944:: with SMTP id e65mr13251443pgc.406.1584098704226; 
 Fri, 13 Mar 2020 04:25:04 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:22f:d418:f8a5:7ca8:f99b:fa30])
 by smtp.gmail.com with ESMTPSA id
 q26sm2094820pff.63.2020.03.13.04.24.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 04:25:03 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: adham.abozaeid@microchip.com, ajay.kathat@microchip.com,
 linux-wireless@vger.kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
 daniel.baluta@gmail.com, nramas@linux.microsoft.com, hverkuil@xs4all.nl,
 shreeya.patel23498@gmail.com
Subject: [Outreachy kernel] [PATCH] Staging: wilc1000: cfg80211: Use kmemdup
 instead of kmalloc and memcpy
Date: Fri, 13 Mar 2020 16:54:51 +0530
Message-Id: <20200313112451.25610-1-shreeya.patel23498@gmail.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace calls to kmalloc followed by a memcpy with a direct call to
kmemdup.

The Coccinelle semantic patch used to make this change is as follows:
@@
expression from,to,size,flag;
statement S;
@@

-  to = \(kmalloc\|kzalloc\)(size,flag);
+  to = kmemdup(from,size,flag);
   if (to==NULL || ...) S
-  memcpy(to, from, size);

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/wilc1000/cfg80211.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/cfg80211.c b/drivers/staging/wilc1000/cfg80211.c
index 54e02807cebf..4bdcbc5fd2fd 100644
--- a/drivers/staging/wilc1000/cfg80211.c
+++ b/drivers/staging/wilc1000/cfg80211.c
@@ -1142,14 +1142,13 @@ static int mgmt_tx(struct wiphy *wiphy,
 		goto out;
 	}
 
-	mgmt_tx->buff = kmalloc(len, GFP_KERNEL);
+	mgmt_tx->buff = kmemdup(buf, len, GFP_KERNEL);
 	if (!mgmt_tx->buff) {
 		ret = -ENOMEM;
 		kfree(mgmt_tx);
 		goto out;
 	}
 
-	memcpy(mgmt_tx->buff, buf, len);
 	mgmt_tx->size = len;
 
 	if (ieee80211_is_probe_resp(mgmt->frame_control)) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
