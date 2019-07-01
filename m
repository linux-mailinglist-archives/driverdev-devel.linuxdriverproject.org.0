Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCFA5B671
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 833DF866BD;
	Mon,  1 Jul 2019 08:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r5x088vq2hc1; Mon,  1 Jul 2019 08:11:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F67D8650D;
	Mon,  1 Jul 2019 08:11:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 531E01BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 07:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5071A85C94
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 07:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dFl5cJi3bKB3 for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 07:00:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 256A185C52
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 07:00:41 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id p10so5561215pgn.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 00:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EMheUhuXGGUYbld5n7Mpdv2KD1wTokQkhAeyK6zKbxY=;
 b=XQ/8YD+Z2kY3rPHGGvftCKIVm7qYK77KN3xV0cCDhzZDnjzJj6ZUdU28XGlvC+/+9b
 sum9UjKhQU3AoZA1gW24dqcEWyyvnPyputQ1Me86yc4BGI7Q5IibwSpktpRN69qalGKf
 mh+CHI8S2gEb8YBuTHC5zsZtGhfO2DMmsSzs5LGgV5F9m+VQ8GxUX4EvfPEEyMGTroWJ
 7GWav23U+P/bRksQvNEgUWNWovApLbnpy1HYQr/Yw4NT56PPFmQcn5bCVZlcA7+B5gqZ
 uP3f/mu1yBiILm+7voJB/CrAFj1Vyg9eLTGr7xtHkMZltT7jAMzmSW3t9ojKjR7RiSr6
 fAXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EMheUhuXGGUYbld5n7Mpdv2KD1wTokQkhAeyK6zKbxY=;
 b=f4l+W1+6X1KSmALwz8Eu3hu+Em54UN7XkU95WeRZbbFzz9uLfDekru75sJYl0Y/aek
 lkoq4yl2TYnNZKYfF1BHeSVZS+t4gjdNv6SWhIdMvThIcDqBzZBMGuuATVeiHGn4D2IN
 K1M6pqWHWl/Mkv7j4RDJSBtNeZoiv5QqVH8CGuRdcLmPQBBmS1V2qLLWOjejZzR5FUw+
 V4cSWncU0jt+lMtNIyFrJKZqFzyhuzZZeasoBakZGQUBJxtr9Sji9lBVWyJ+DXh/hppO
 zKvQzrIVW2gyJkBiPIWGHx5C0HukybFxr3o5KUGbQaZLiiz5PiOvNwqdu7fU8HKvBqRu
 RMow==
X-Gm-Message-State: APjAAAW9eq2jlVJ2nsJZRsWsbpuUlY8WlA6NXk3JaxoIBt5C4+20L1LI
 jESbwU2FMHNqHhmeAvhudNc=
X-Google-Smtp-Source: APXvYqzEFed0vrydvHD0s0NbmSFMLDPX/r7M6EcxPCyJiVW77qXwbYgw48W/aAil8YMVKnABgpW3iQ==
X-Received: by 2002:a63:4103:: with SMTP id o3mr23172095pga.385.1561964440689; 
 Mon, 01 Jul 2019 00:00:40 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id g2sm14880583pfb.95.2019.07.01.00.00.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 00:00:40 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, abbotti@mev.co.uk,
 hsweeten@visionengravers.com
Subject: [PATCH v2 2/3] staging: comedi: amplc_dio200: Remove function
 gat_sce()
Date: Mon,  1 Jul 2019 12:30:24 +0530
Message-Id: <20190701070025.3838-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701070025.3838-1-nishkadg.linux@gmail.com>
References: <20190701070025.3838-1-nishkadg.linux@gmail.com>
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

Remove function gat_sce as all it does is call clk_gat_sce.
Modify call sites of the former to call the latter directly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Edit subject line to include driver name.

 drivers/staging/comedi/drivers/amplc_dio200_common.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_dio200_common.c b/drivers/staging/comedi/drivers/amplc_dio200_common.c
index efd7428c3cee..0b2f04b02ebc 100644
--- a/drivers/staging/comedi/drivers/amplc_dio200_common.c
+++ b/drivers/staging/comedi/drivers/amplc_dio200_common.c
@@ -46,12 +46,6 @@ static unsigned char clk_gat_sce(unsigned int which, unsigned int chan,
 	       ((source & 030) << 3) | (source & 007);
 }
 
-static unsigned char gat_sce(unsigned int which, unsigned int chan,
-			     unsigned int source)
-{
-	return clk_gat_sce(which, chan, source);
-}
-
 /*
  * Periods of the internal clock sources in nanoseconds.
  */
@@ -483,7 +477,7 @@ static void dio200_subdev_8254_set_gate_src(struct comedi_device *dev,
 	unsigned int offset = dio200_subdev_8254_offset(dev, s);
 
 	dio200_write8(dev, DIO200_GAT_SCE(offset >> 3),
-		      gat_sce((offset >> 2) & 1, chan, src));
+		      clk_gat_sce((offset >> 2) & 1, chan, src));
 }
 
 static void dio200_subdev_8254_set_clock_src(struct comedi_device *dev,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
