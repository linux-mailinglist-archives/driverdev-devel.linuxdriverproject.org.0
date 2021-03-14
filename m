Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C73A33A285
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 04:58:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A6064CF79;
	Sun, 14 Mar 2021 03:58:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kES7ttN44v7L; Sun, 14 Mar 2021 03:58:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A3E74A5F2;
	Sun, 14 Mar 2021 03:58:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D03851BF8B4
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 03:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE8C14A5F2
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 03:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j3ou5EGLpyMX for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 03:58:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 730584A5B0
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 03:58:04 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id 130so28545907qkh.11
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 19:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QIX/OYXluftRX3F6f7sy8Odgf2fjZdfFe5EJGVyxxE8=;
 b=hrPTPH1HCBe+8Poeb47+CXeL3A6a4JQMOoNbTFUfx6igFNSCIuaBGt6RBRVM6joqrE
 3a32xBGumxM7E4BolvSEOSWjh9+pOlocsAsvJ54rP8470bmrl/vMyB5q4x76ARmNdoEw
 /8DTuV6kGWJ/exGitwmcxC6Kl4IoGELOmXneSwSb7sE4q8SVP+b85jVuVgpUhjxvcckq
 Q6yrBg+M/JrwoBhzAisvT/e3k3Jih9oW48JyL3PxSdhZaMP/9I88nujz1tMbEALcW9ip
 Npbv/1bihoa+cSlfNX78BbNh78xgkH1WhmAYR2EA3dS/21DBSlTw6vQY1iEkRNJjVppb
 8IzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QIX/OYXluftRX3F6f7sy8Odgf2fjZdfFe5EJGVyxxE8=;
 b=bOm1TSFcR4lb9td6/gmVVDPFAQTLMYGIBMDKw99WaQvBuhb53d6Wo05//c4lrwhMRb
 t22LDDg+Rd+3yPtBr9hlV0BFMQQtp7vnwrTdWJE4kCd9H+BcsJ9Xb1dedqKnaF1bKyEL
 XC9+wLVHUqRoWc6hB9zpTQ+kOWCYiAguJgwqiCiGnOR3Cy0c/xtbZ9BfLjRftD6UPZ+I
 O3wcrdKxjhhYBhnSppcZCcrdbfZAZJ3VwP7Q5jESAuCCnDCaY/S7XGuFAGbX5p2YrFNN
 gQ8vlDQhsyl4sV+/ks8BG+fC28soVyJIX1B6aPX8XmEbCd0EyXSBmxfFj/Cjn2cOO6/a
 gRZw==
X-Gm-Message-State: AOAM531+ZbQlWOR3/4zJmG3QCe9OewDZgEcHlqTkfLSJEOQ20pDUdHKk
 jCPzMc3hBX4fHn1wYPtOdS8=
X-Google-Smtp-Source: ABdhPJzOFvVUnt+zW/OOQs2RwoiFQ9MmAem/e+KaMyPvPpSf1f1WrvISkYPpYZylpUTcXUZmYy1azA==
X-Received: by 2002:a37:9d84:: with SMTP id
 g126mr19779855qke.183.1615694283179; 
 Sat, 13 Mar 2021 19:58:03 -0800 (PST)
Received: from tong-desktop.local ([2601:5c0:c200:27c6:4c0:b220:fc67:f404])
 by smtp.googlemail.com with ESMTPSA id j15sm7311399qtr.34.2021.03.13.19.58.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Mar 2021 19:58:02 -0800 (PST)
From: Tong Zhang <ztong0001@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 Tong Zhang <ztong0001@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: replace slash in name
Date: Sat, 13 Mar 2021 22:57:57 -0500
Message-Id: <20210314035757.2740146-1-ztong0001@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

request_irq() wont accept a name which contains slash so we need to
repalce it with something else -- otherwise it will trigger a warning
and the entry in /proc/irq/ will not be created

[    1.565966] name 'pci-das6402/16'
[    1.566149] WARNING: CPU: 0 PID: 184 at fs/proc/generic.c:180 __xlate_proc_name+0x93/0xb0
[    1.568923] RIP: 0010:__xlate_proc_name+0x93/0xb0
[    1.574200] Call Trace:
[    1.574722]  proc_mkdir+0x18/0x20
[    1.576629]  request_threaded_irq+0xfe/0x160
[    1.576859]  auto_attach+0x60a/0xc40 [cb_pcidas64]

Signed-off-by: Tong Zhang <ztong0001@gmail.com>
---
 drivers/staging/comedi/drivers/cb_pcidas64.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index fa987bb0e7cd..662d6ffb8f60 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -677,7 +677,7 @@ static const int bytes_in_sample = 2;
 
 static const struct pcidas64_board pcidas64_boards[] = {
 	[BOARD_PCIDAS6402_16] = {
-		.name		= "pci-das6402/16",
+		.name		= "pci-das6402-16",
 		.ai_se_chans	= 64,
 		.ai_bits	= 16,
 		.ai_speed	= 5000,
@@ -693,7 +693,7 @@ static const struct pcidas64_board pcidas64_boards[] = {
 		.has_8255	= 1,
 	},
 	[BOARD_PCIDAS6402_12] = {
-		.name		= "pci-das6402/12",	/* XXX check */
+		.name		= "pci-das6402-12",	/* XXX check */
 		.ai_se_chans	= 64,
 		.ai_bits	= 12,
 		.ai_speed	= 5000,
@@ -709,7 +709,7 @@ static const struct pcidas64_board pcidas64_boards[] = {
 		.has_8255	= 1,
 	},
 	[BOARD_PCIDAS64_M1_16] = {
-		.name		= "pci-das64/m1/16",
+		.name		= "pci-das64-m1-16",
 		.ai_se_chans	= 64,
 		.ai_bits	= 16,
 		.ai_speed	= 1000,
@@ -725,7 +725,7 @@ static const struct pcidas64_board pcidas64_boards[] = {
 		.has_8255	= 1,
 	},
 	[BOARD_PCIDAS64_M2_16] = {
-		.name = "pci-das64/m2/16",
+		.name = "pci-das64-m2-16",
 		.ai_se_chans	= 64,
 		.ai_bits	= 16,
 		.ai_speed	= 500,
@@ -741,7 +741,7 @@ static const struct pcidas64_board pcidas64_boards[] = {
 		.has_8255	= 1,
 	},
 	[BOARD_PCIDAS64_M3_16] = {
-		.name		= "pci-das64/m3/16",
+		.name		= "pci-das64-m3-16",
 		.ai_se_chans	= 64,
 		.ai_bits	= 16,
 		.ai_speed	= 333,
@@ -984,7 +984,7 @@ static const struct pcidas64_board pcidas64_boards[] = {
 		.has_8255	= 0,
 	},
 	[BOARD_PCIDAS4020_12] = {
-		.name		= "pci-das4020/12",
+		.name		= "pci-das4020-12",
 		.ai_se_chans	= 4,
 		.ai_bits	= 12,
 		.ai_speed	= 50,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
