Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A07B731DB50
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 15:21:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2033B6F61E
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 14:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0qS8AnGxOoEz for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 14:21:15 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id E073E6F61F; Wed, 17 Feb 2021 14:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1556C6F4B8;
	Wed, 17 Feb 2021 14:21:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 622271BF3A0
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:20:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5B9E38630A
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:20:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j8EZ1DLxSqYJ for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 14:20:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
 [209.85.215.176])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EF86C862ED
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 14:20:47 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id p21so2915465pgl.12
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 06:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tkR3nWvQ+KA65XhBWc3ZlKt+YgDPlZLa5MC3BGSdyyQ=;
 b=jvUwXMP/BUoo0aubC202imi3Ptt9jD+nY4BVmsw1Juq/TtwA1c+qv+Q4/3kHKTSUid
 PHfvQ4Y4KaMSXs3FbbBeJA6ehOfOYo8EeW0/2oWhn4i2STe6GjnvGBH6y6MIJnBvGvi2
 jrNqAeBeSKGkqjRBzkHHen8shwj1Z4J9eevXJEq09A5wzQ1bj6PAUnrbkI8pnbXeuTeq
 GxP12dbmuxxUWTtXUc9BGR2ohigN1UZVt98j+Ln0AsIj58lB5/DFtX5pl1OI7Dzc23hN
 9l0vW9vpEWwqG8bcYONAFN/6pvKke8gfTVJ3haUOTrYhiTBgawbXOznN0VekO1yPMTCZ
 Zcvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tkR3nWvQ+KA65XhBWc3ZlKt+YgDPlZLa5MC3BGSdyyQ=;
 b=oCvXak8OhvZFGcRfex9a8N5UUmPDcM8aHaLxgBI7bK4HxDlgOcI9WxTe2ezIUFSc7L
 K/eag5H1nu39O7zkxmO9jw3MLOO/roGctRb0dgSs72+P9o0YNRp7xDcggpmuwXB4Gtm5
 p7ce03IQgD1wjKe1TLCEbCrWjVtF1Cl3McngicNVhL5Tq1tb3xvBzP6V4Ojc7471j6fJ
 Rk5/6KNVVjCmIcI7gP1sKR9+03nKEC+L/andnM8FAbalFqTnEJUlRoQ0ONHgBwtvlkSm
 Fnx2KiBC1evhCuqNhwjTWiNmkXvoJFJDtfCm/295Xqa23LWicg5IjiQ1yTd2+l9XRqer
 qmag==
X-Gm-Message-State: AOAM532FDpE+Nwq4nX7wVcN5RWoJiSQSl8t3FNvWsHUi7VeKRCmd+ZGl
 +qCL8FKUrZbIM7iJb0vGedo=
X-Google-Smtp-Source: ABdhPJwCqI/M4I79QFL+Lt06dPO+AT9Bsbu9mQ8wmy9KrLsNWG2u5Zz4kfkQCYP0Xu4xUJgf0sdq1A==
X-Received: by 2002:a63:9314:: with SMTP id b20mr23841434pge.411.1613571647606; 
 Wed, 17 Feb 2021 06:20:47 -0800 (PST)
Received: from rayare.domain.name ([106.51.141.71])
 by smtp.googlemail.com with ESMTPSA id w196sm2704814pfd.23.2021.02.17.06.20.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Feb 2021 06:20:47 -0800 (PST)
From: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
To: 
Subject: [PATCH] drivers: staging: comedi: Fixed side effects from macro
 definition.
Date: Wed, 17 Feb 2021 19:50:05 +0530
Message-Id: <20210217142008.29699-1-chakravarthikulkarni2021@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Ethan Edwards <ethancarteredwards@gmail.com>,
 Ian Abbott <abbotti@mev.co.uk>, chakravarthikulkarni2021@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Warning found by checkpatch.pl script.

Signed-off-by: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
---
 drivers/staging/comedi/comedi.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
index b5d00a006dbb..b2af6a88d389 100644
--- a/drivers/staging/comedi/comedi.h
+++ b/drivers/staging/comedi/comedi.h
@@ -1103,9 +1103,12 @@ enum ni_common_signal_names {
 
 /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
 
-#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
-#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
-
+#define NI_USUAL_PFI_SELECT(x) \
+	({ typeof(x) _x = x; \
+	 (((_x) < 10) ? (0x1 + (_x)) : (0xb + (_x))); })
+#define NI_USUAL_RTSI_SELECT(x)	\
+	({ typeof(x) _x = x; \
+	 (((_x) < 7) ? (0xb + (_x)) : 0x1b); })
 /*
  * mode bits for NI general-purpose counters, set with
  * INSN_CONFIG_SET_COUNTER_MODE
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
