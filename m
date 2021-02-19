Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E28DB31FFC7
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 21:26:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 331646072E
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 20:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gtDtmrlPp6mn for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 20:26:21 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 3699060720; Fri, 19 Feb 2021 20:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B754960701;
	Fri, 19 Feb 2021 20:26:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22F0C1BF3C0
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 20:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1D6B8872D4
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 20:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Ov7Qz6RSN4O for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 20:25:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
 [209.85.215.176])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AF1DE872B9
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 20:25:53 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id o63so5627983pgo.6
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 12:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6dVHk96AcArKaN/SteHJiGOj0BkhTaJ4SHAFKAMGMno=;
 b=US8UsJfdfwgQ5VJMv+ws5DQdc7kWG+09VFpbjL8+QlLWWI4BEGXOdeRn59ENUfPza3
 LARhRjYeoO5MoA4+Gxyl2KuUUNjmtsOXlNa9i91ENpAp0DvCTELgAtTIamw8ELLtUhKw
 2EKkb8GqyPZmrS24NOI97ZF1zsIQzzGUvFXPjk4c7F5ChrdWlvpiagQDunNuTEo18SoL
 Lz8GB7amTN9R8sXnXqh2hwL0BQy8fLnlKChlzTEaoA+eZw3wY/J67aTmxWyKvQDKXfGO
 gItrkElzsyLHdvYUxWmehMfUnjjPfUxIoTGHVlaalIycqBeCAHCOVY8pVCZE6V9IvJBb
 4ISg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6dVHk96AcArKaN/SteHJiGOj0BkhTaJ4SHAFKAMGMno=;
 b=TZo+/yVDtJZJUJ2E86y/c3NpaE3p272YXWCDbHpYs02czY3WhvpZRv9/cWr9dUONda
 WUtMLkv61gUDU0zxufvZjUin90v9D09V1MRvrdW6nwP6tcYjJo4dAo1sMAxfgIFY4Sy7
 PLRYkncJSoQR2jn9zidZ+gbWnQTLLF7UPxBQdeUAfrO2ScnE0jnARnAzUxGyX6qUWjEA
 y2dIzpZ2xLmXhQow3f9pDbukqYjHSGBGfuM8OXidDuXZiytlDpD/OHuYax8DWamvWAdx
 5HcKgGKxmzXbdzmuowozDyxEDMcHfmgUKH+1dH74Cae3vRZyGtjVoyXllPceM6FOd5+w
 R1Jg==
X-Gm-Message-State: AOAM531GlaXcGzEeGa+WzQMhzeCoRJOXrLAdFlHHTjrK/POS2JEzfMNU
 DTTJfySizhPMNteuf3GSA6g=
X-Google-Smtp-Source: ABdhPJxlFJJmRCqw1LJ4pqMIv8LiowF3wCbrm7Xzuz9QimAsiezEFTTBfr9clmbpjYdjjIIcXIwD6A==
X-Received: by 2002:aa7:82cf:0:b029:1cc:5393:ad8e with SMTP id
 f15-20020aa782cf0000b02901cc5393ad8emr11258170pfn.3.1613766353128; 
 Fri, 19 Feb 2021 12:25:53 -0800 (PST)
Received: from localhost.localdomain ([49.36.144.93])
 by smtp.gmail.com with ESMTPSA id g62sm10504199pgc.32.2021.02.19.12.25.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 12:25:52 -0800 (PST)
From: Amrit Khera <amritkhera98@gmail.com>
To: gregkh@linuxfoundation.org, lee.jones@linaro.org, arnd@arndb.de,
 kuba@kernel.org, mail@anirudhrb.com, ayush@disroot.org
Subject: [PATCH] staging: wimax: Fix block comment style issue in stack.c
Date: Sat, 20 Feb 2021 01:55:25 +0530
Message-Id: <20210219202524.14642-1-amritkhera98@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Amrit Khera <amritkhera98@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch warning for "Block comments
use * on subsequent lines".

Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
---
 drivers/staging/wimax/stack.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wimax/stack.c b/drivers/staging/wimax/stack.c
index ace24a6dfd2d..781426000015 100644
--- a/drivers/staging/wimax/stack.c
+++ b/drivers/staging/wimax/stack.c
@@ -62,11 +62,12 @@ MODULE_PARM_DESC(debug,
  * close to where the data is generated.
  */
 /*
-static const struct nla_policy wimax_gnl_re_status_change[WIMAX_GNL_ATTR_MAX + 1] = {
-	[WIMAX_GNL_STCH_STATE_OLD] = { .type = NLA_U8 },
-	[WIMAX_GNL_STCH_STATE_NEW] = { .type = NLA_U8 },
-};
-*/
+ * static const struct nla_policy
+ * wimax_gnl_re_status_change[WIMAX_GNL_ATTR_MAX + 1] = {
+ *	[WIMAX_GNL_STCH_STATE_OLD] = { .type = NLA_U8 },
+ *	[WIMAX_GNL_STCH_STATE_NEW] = { .type = NLA_U8 },
+ * };
+ */
 
 
 /*
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
