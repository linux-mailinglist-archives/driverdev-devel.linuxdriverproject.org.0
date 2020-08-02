Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6770235A18
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 21:09:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3E0C87D3D;
	Sun,  2 Aug 2020 19:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bBF44HgcxPU3; Sun,  2 Aug 2020 19:09:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 350D487C9C;
	Sun,  2 Aug 2020 19:09:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0882C1BF311
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 19:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F41F9203D4
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 19:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVeKrlIlCmuB for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 19:09:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by silver.osuosl.org (Postfix) with ESMTPS id D20AC2014B
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 19:09:30 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id o23so8977082ejr.1
 for <devel@driverdev.osuosl.org>; Sun, 02 Aug 2020 12:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2ZdTJGdfMkugWUUlFCnGJvt+G+wKnuQhA+92KpbVTOY=;
 b=Q67Y0HwgPZDjo/j7CtNy/dpI8cFR0nezF7HSoiAknIjLo4Vw0hmSEntR3koa0O/K0m
 jPqd72OuOzJKsm0mIdvYgRuivhbvzjeevkSr5jicp7wKp8Mu/g2Tq6tgALRFrI1HInz8
 FlERi6FsQMWBLk6ifVG+T4Rv0bGH7QvT5W/XIvZFs22w/OjzyQYrnHjPsddTLOfHoMVk
 YR32c8hC3e8YU4XAOH0LR3NnUYKT4FP6ibRLo6S1+By3YlSNrn7ATbQT1KvP1S+JXtML
 oqbMgptbMjxbXcfbbYwIghphfEPkyxvdexQ+EktV6+C02DVQuYfHiv3HrnBdxMTHDYjm
 PUJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2ZdTJGdfMkugWUUlFCnGJvt+G+wKnuQhA+92KpbVTOY=;
 b=AQTOVolGzbnkzpYQvWhpFdCCSpMpdAGYzrSUlZVvgzdGevLwePXgH0a0ayfi3eOxfv
 hV0Xo7b4PbNra2xChTozNLPf634rrSi+OiQWr9PIfjxB2+zG/f5lMFwwOhV4UXvm5JBP
 4MZVfAa1l33GWnkXluZ3ucEsVdYnxUl5VZMiByiCHvFSkVj2xxE65DjZdL6lso4cKpi5
 ZneOgt9sXI/QF5ZG3qKTuCJMC8OLWYC6ruRond/rIqTqyBhvVpT6YLJZIC0oyqIJw2T7
 myva2a8YU/z5kZ5KAVbGfXwlvGXNfESRHc1VQ0C1hZgQL/vL06CTkGqECLikLqAOWvRn
 wEyQ==
X-Gm-Message-State: AOAM5332XwxLJhWEA5oqzMgDi3OwDO5b6Llg1qymx5hjTV5otaMUqL1Q
 LbQjkA9MUW5/vV3KiPo5bVc=
X-Google-Smtp-Source: ABdhPJzdLlT35Uan3irAk0q96AMsAocSIt/5jV5mbOwFkAzbRZJi2BIOP7YqPxbqqFOoB3qQGaLf3Q==
X-Received: by 2002:a17:906:7a16:: with SMTP id
 d22mr13779348ejo.478.1596395369103; 
 Sun, 02 Aug 2020 12:09:29 -0700 (PDT)
Received: from localhost.localdomain ([2001:8f8:1821:5abb:3429:e2f4:15c4:b960])
 by smtp.gmail.com with ESMTPSA id x16sm2724349edr.25.2020.08.02.12.09.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Aug 2020 12:09:28 -0700 (PDT)
From: Mohammed Rushad <mohammedrushad@gmail.com>
To: gregkh@linuxfoundation.org, vkor@vkten.in, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, john.oldman@polehill.co.uk, yanaijie@huawei.com
Subject: [PATCH] staging: rtl8723bs: os_dep: fix brace coding style issue in
 sdio_intf.c
Date: Mon,  3 Aug 2020 00:39:24 +0530
Message-Id: <20200802190924.19964-1-mohammedrushad@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a patch to the sdio_intf.c file that fixes up an incorrectly
placed brace found by the checkpatch.pl tool

Signed-off-by: Mohammed Rushad <mohammedrushad@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 5b1392deb0a7..f1e2829a19a7 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -15,8 +15,7 @@
 #define dev_to_sdio_func(d)     container_of(d, struct sdio_func, dev)
 #endif
 
-static const struct sdio_device_id sdio_ids[] =
-{
+static const struct sdio_device_id sdio_ids[] = {
 	{ SDIO_DEVICE(0x024c, 0x0523), },
 	{ SDIO_DEVICE(0x024c, 0x0525), },
 	{ SDIO_DEVICE(0x024c, 0x0623), },
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
