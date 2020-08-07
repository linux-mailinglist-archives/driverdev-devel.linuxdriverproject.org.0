Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD15023E7CA
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 09:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D529887DE;
	Fri,  7 Aug 2020 07:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MtpaBJDd0pT7; Fri,  7 Aug 2020 07:20:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88DA288789;
	Fri,  7 Aug 2020 07:20:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0186E1BF3BF
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 07:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F1F6488789
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 07:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Za1LRZlr--vd for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 07:20:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9412A88788
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 07:20:15 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id g33so485609pgb.4
 for <devel@driverdev.osuosl.org>; Fri, 07 Aug 2020 00:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=XWZmmS0E0HX46AMaT7k9IF0CeX3TJb0o9CeQCXJ1wsc=;
 b=rsJxpHAi4TxGmhRZqDLdKBgHpbMjbt4YQHi4yS2cv/SDwEJnjhsoNx8WjvaXu/mbG/
 ijsLe6ZNIWAKOr4s089Q1wE01QC3+YirEn6OfDf/s4vM9Ug2vfdnI3IW4Q4ja5ZsZdbw
 Ptt9vdRXCaZpU9E5SVvdxaHftJ5d2cDg3/n5ODroSOYN4pC5Ns66LdRl0jLlPqjALEdq
 kAebXvFhMhZAASj35Ev5tOTj45RcC4VmzlVKqqhSUQJoK1M5gE0BX/HZOdFvsQ3ZRsXU
 s4c79BfRxdA4wlV2pc5oKPGjzoPVy/ZDG9OC9BXeQq/8HBu8pOQJnxeVghq4V0bnbgha
 oMZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XWZmmS0E0HX46AMaT7k9IF0CeX3TJb0o9CeQCXJ1wsc=;
 b=YJK6dJ/+kJ2O5WkXAwJFmoGtoY35gub4FDK3VdpG+PwkoHrNGAGMrHzvcG1Bs6dQVG
 jfjJDHzhKZh1VhDY2SQT9FPbSYIXyJ8xDQmsqh3FjiTO0S8Na5v6XFR+PtOAxQr16cP2
 ZgB7S/v8M8Tx/CuONdyFiT0S1SyGc25A7axaLvmzz1VsRGKVZYtX/pVsNbHJKltSPuEZ
 vN4Ipvt5dyRI4iY3Phbti6qc87/fGXXeg9aHvTZFdcjoNNaZcbM2PB260wB/lD4mhxWn
 K8zaIpKLHWF6jN1GNLQxGI26H+pQdz7RWphnw4eatd/PS1BjGfVGWdk9kBwYDalF7P89
 DNqA==
X-Gm-Message-State: AOAM533jaa8rnhvTLbAMLvgG7xihBRFRL6pNl1sVq5616t/hs2DL5Gq4
 /PWKD6MoNUE5eTMmIzTHadk=
X-Google-Smtp-Source: ABdhPJzlubn0XnRaIrqXkX6F8cqS/jTLoQqN9X6NF+yU7Hhv3hVHkLEYrOsxy8/VEPsV1TQER7xEFw==
X-Received: by 2002:a62:aa07:: with SMTP id e7mr11569862pff.71.1596784815121; 
 Fri, 07 Aug 2020 00:20:15 -0700 (PDT)
Received: from localhost.localdomain ([2409:4070:111:ba87:8dfb:bea2:e042:1189])
 by smtp.gmail.com with ESMTPSA id x9sm9435390pjt.9.2020.08.07.00.20.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Aug 2020 00:20:14 -0700 (PDT)
From: Lokesh Chebrolu <lokeshch007@gmail.com>
To: abbotti@mev.co.uk
Subject: [PATCH] Staging: comedi: pcl726: fixed a spelling mistake
Date: Fri,  7 Aug 2020 12:50:06 +0530
Message-Id: <1596784806-7130-1-git-send-email-lokeshch007@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Lokesh Chebrolu <lokeshch007@gmail.com>,
 grandmaster@al2klimov.de, gregkh@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a spelling mistake issue

Signed-off-by: Lokesh Chebrolu <lokeshch007@gmail.com>
---
 drivers/staging/comedi/drivers/pcl726.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/pcl726.c b/drivers/staging/comedi/drivers/pcl726.c
index 58b3d07..64eb649 100644
--- a/drivers/staging/comedi/drivers/pcl726.c
+++ b/drivers/staging/comedi/drivers/pcl726.c
@@ -389,7 +389,7 @@ static int pcl726_attach(struct comedi_device *dev,
 	}
 
 	if (dev->irq) {
-		/* Digial Input subdevice - Interrupt support */
+		/* Digital Input subdevice - Interrupt support */
 		s = &dev->subdevices[subdev++];
 		dev->read_subdev = s;
 		s->type		= COMEDI_SUBD_DI;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
