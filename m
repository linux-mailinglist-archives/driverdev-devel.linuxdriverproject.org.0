Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D231E41C
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 23:45:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 802938568D;
	Tue, 14 May 2019 21:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CgI22OPyQ9o6; Tue, 14 May 2019 21:45:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB1C9844C0;
	Tue, 14 May 2019 21:45:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 032961BF3DF
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 21:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0003185F82
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 21:44:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x4IJcCe7e9-E for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 21:44:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B42A885F80
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 21:44:58 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id z28so196489pfk.0
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 14:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LdgLuXhuvNe8rZ3DbhnGRD96MYYEiHvDa0jkZMoRBak=;
 b=nKzCOlFSp2arJ/Eek4iuq4oxnEeRvhuHl4dKBftvbvzIyZTHtC2KuljuvBJhrfA/Xe
 Vd4AnY2YISJr2Q0g7DPKJtUj2CsvYF5igyRNJuF/vhrIRQrymH7RdynXTw5WF5+M0G9g
 9/Thi2WNSWAouQT0QkadRil8HAG/VHxAleLqCMNfYQSiYRHD8YCfSu1D1kDtOzMvVbGR
 04a7/Bn7QXw6uOEb5HvYqxz0E9DBlfL7lP1qA58GXlsCQZ8TytVwZkxfiZLQQcB/82g8
 KQPLJY+KEz3Uw+Y40KgOkDqiFuL6Tq5ok3VLb6FO0MsYe05yGYcsE7o7Myucx4ER+YNR
 lw7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LdgLuXhuvNe8rZ3DbhnGRD96MYYEiHvDa0jkZMoRBak=;
 b=ZR8psowJrG5Dh+dMJYF516YMPETfLi+UZLlfjYUSCothqV+A0DwD6tlqcAw7lcdRzQ
 BBJikVRsJv6hTCKOyV4nsNg2MppeVQ4ovKZ4n3iOFk5jokLqNwxxnEJ0Uc/PncBmAhsj
 r7PI+tTmOemFPsd1UneW+ePqMYaUZ6rEtv3DsA3HqZ0OGU8zeHpoZfppKgTCNC2g9LYr
 N5h1famBKFrP4A4mVXw8Z2gDXK2dQlW38vBEzhupNZAtPnaeJAz5JgKL+eSiPfRy70nZ
 rhpk8GbqtI3DHo73+4qUhlqOTUnvBdL/q0Z1FKRvNT56KiPQ/rrTPiMsUiYR36DJTdMb
 ZHFw==
X-Gm-Message-State: APjAAAWeDNtjX/WOh8jzWmnsRkpNaUYC+QsTutsYB62yqP97TIhS6TTh
 9cojyyusdVlFNofmt2caYKQ=
X-Google-Smtp-Source: APXvYqwpY/F+5Ch1KL1wPmEwyDdD5jz+alh0eL/63kk0FMOpe3wQ/DutZT896isXVZFCVwJbUvnkVQ==
X-Received: by 2002:a63:40b:: with SMTP id 11mr24021758pge.31.1557870297666;
 Tue, 14 May 2019 14:44:57 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:99:37f9:1880:2621:321c:b6a1])
 by smtp.googlemail.com with ESMTPSA id
 o5sm78285pgl.48.2019.05.14.14.44.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 14:44:57 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8192e: Use %s and __func__ in strings
Date: Wed, 15 May 2019 03:14:07 +0530
Message-Id: <20190514214407.23005-1-puranjay12@gmail.com>
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

Fix following checkpatch.pl warnings by using %s and __func__
in strings instead of function names.

WARNING: Prefer using '"%s...", __func__' to using '_rtl92e_dm_check_rate_adaptive', this function's name, in a string
WARNING: Prefer using '"%s...", __func__' to using 'rtl92e_dm_restore_state', this function's name, in a string

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index 55d857926bba..1b7e3fda7905 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -334,7 +334,7 @@ static void _rtl92e_dm_check_rate_adaptive(struct net_device *dev)
 
 	if (!priv->up) {
 		RT_TRACE(COMP_RATE,
-			 "<---- _rtl92e_dm_check_rate_adaptive(): driver is going to unload\n");
+			 "<---- %s: driver is going to unload\n", __func__);
 		return;
 	}
 
@@ -1178,7 +1178,7 @@ void rtl92e_dm_restore_state(struct net_device *dev)
 
 	if (!priv->up) {
 		RT_TRACE(COMP_RATE,
-			 "<---- rtl92e_dm_restore_state(): driver is going to unload\n");
+			 "<---- %s: driver is going to unload\n", __func__);
 		return;
 	}
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
