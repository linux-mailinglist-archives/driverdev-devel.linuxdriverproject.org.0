Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E122B33A28D
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 05:02:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1528360767;
	Sun, 14 Mar 2021 04:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id km6cUfmAWcua; Sun, 14 Mar 2021 04:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 494C7605A2;
	Sun, 14 Mar 2021 04:02:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 521C21BF8B4
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 04:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41BB0606C0
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 04:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FhlY0EpcDHST for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 04:02:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D6B6605A2
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 04:02:26 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id a11so6933057qto.2
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 20:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e8VikujQeByHVJXrpXJghO8MTbKzF0R8lztCzl3I2kY=;
 b=Ca6UrF0+bJ3scLBybza+wAMJaNVlZT/F2xXoTS6d0/ifuEgd/DYGyCLO1cGBa66q89
 wyCHPbia6UwcwCToZVc2wFmnYyNR96sUI325yPyVOP2buOyIsc0+bmizdFv2oj0A1ARN
 VkLKn8tRH1fxnTjdfWC4KyTTSSo51NMNAyr7i9vLX6/kymJf4pMteep1YqxO34md5ArV
 ML88WPJmA6OLQdfDw3dWr0m8lhd0tyM0M8Ve/Tt4EnLuYUub3Ze9mXrfS8hPL7WYs6Dr
 iYnyjvAPURN9ZgNNenYxg4TsFbaCGZFvYS4x+S08xHeQx6RtfblEeJ0496bH2JCUriiJ
 UNvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e8VikujQeByHVJXrpXJghO8MTbKzF0R8lztCzl3I2kY=;
 b=CvmbqXs9FTiK02wUd1RJyZpQek5SJKiGGLGcbV5GbyI3xiU6YGCpozKY6MPHESNOh+
 lVIkN4bMfvv03QinK0OvY01m43G7VaB58bqpSWtBMYBrOf9UnnmQtCc6/FxisjbyWyDn
 YviwDD8B+HBePqBgXyJH9XqF7Kogq0x2dDMhOkJ+yAMBudlXg03tPkCqHpRDYSlKuLO+
 MlT+QSCYmLj6WHWtsA2llKr7o7OXbOb8RnRwZXvTr7Y20vvrhGMlivpOfnhynswGy31L
 3bMCeBIROkQd8kHzRhe2W1LPWOfFrRyegqffVyTjRg3CPsNAofa4EDhr4olT8IHeY8Wb
 WOPA==
X-Gm-Message-State: AOAM530BKx0tkeGRwvRo+rhRoZXFiUqTDaLbVZ02TXcALdpFY8Mc93Yn
 OnTqaXxOTvw4EkHA9XeQxPc=
X-Google-Smtp-Source: ABdhPJyntX2dFkGbHZvvrzewysT7A5TiEBLY0OLU9dmgtRuGbsW4PUNcU2u4gXjL/nwsgkiKJMfIMA==
X-Received: by 2002:ac8:dc2:: with SMTP id t2mr17850867qti.234.1615694545332; 
 Sat, 13 Mar 2021 20:02:25 -0800 (PST)
Received: from tong-desktop.local ([2601:5c0:c200:27c6:4c0:b220:fc67:f404])
 by smtp.googlemail.com with ESMTPSA id v4sm7310450qte.18.2021.03.13.20.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Mar 2021 20:02:24 -0800 (PST)
From: Tong Zhang <ztong0001@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 Tong Zhang <ztong0001@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: cb_pcidas: replace slash in name
Date: Sat, 13 Mar 2021 23:02:20 -0500
Message-Id: <20210314040221.2740750-1-ztong0001@gmail.com>
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

[    1.630764] name 'pci-das1602/16'
[    1.630950] WARNING: CPU: 0 PID: 181 at fs/proc/generic.c:180 __xlate_proc_name+0x93/0xb0
[    1.634009] RIP: 0010:__xlate_proc_name+0x93/0xb0
[    1.639441] Call Trace:
[    1.639976]  proc_mkdir+0x18/0x20
[    1.641946]  request_threaded_irq+0xfe/0x160
[    1.642186]  cb_pcidas_auto_attach+0xf4/0x610 [cb_pcidas]

Signed-off-by: Tong Zhang <ztong0001@gmail.com>
---
 drivers/staging/comedi/drivers/cb_pcidas.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas.c b/drivers/staging/comedi/drivers/cb_pcidas.c
index d740c4782775..df0960d41cff 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas.c
@@ -230,7 +230,7 @@ struct cb_pcidas_board {
 
 static const struct cb_pcidas_board cb_pcidas_boards[] = {
 	[BOARD_PCIDAS1602_16] = {
-		.name		= "pci-das1602/16",
+		.name		= "pci-das1602-16",
 		.ai_speed	= 5000,
 		.ao_scan_speed	= 10000,
 		.fifo_size	= 512,
@@ -248,7 +248,7 @@ static const struct cb_pcidas_board cb_pcidas_boards[] = {
 		.has_ao		= 1,
 	},
 	[BOARD_PCIDAS1602_12] = {
-		.name		= "pci-das1602/12",
+		.name		= "pci-das1602-12",
 		.ai_speed	= 3200,
 		.ao_scan_speed	= 4000,
 		.fifo_size	= 1024,
@@ -257,12 +257,12 @@ static const struct cb_pcidas_board cb_pcidas_boards[] = {
 		.is_1602	= 1,
 	},
 	[BOARD_PCIDAS1200_JR] = {
-		.name		= "pci-das1200/jr",
+		.name		= "pci-das1200-jr",
 		.ai_speed	= 3200,
 		.fifo_size	= 1024,
 	},
 	[BOARD_PCIDAS1602_16_JR] = {
-		.name		= "pci-das1602/16/jr",
+		.name		= "pci-das1602-16-jr",
 		.ai_speed	= 5000,
 		.fifo_size	= 512,
 		.is_16bit	= 1,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
