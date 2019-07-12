Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2E9666F8
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 08:28:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75D5C882EC;
	Fri, 12 Jul 2019 06:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EIeMDMKgzTu3; Fri, 12 Jul 2019 06:28:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8A6685EA5;
	Fri, 12 Jul 2019 06:28:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7CB01BF44C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B49E12033F
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H8ka7eRXsypD for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 06:28:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id D2D0A203D0
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 06:28:22 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id i18so4056472pgl.11
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 23:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2fKmaKbYZojeXOESX2wjsRICUT6Z1aDirXq74dYJp6Q=;
 b=NoKU2S4TjuY7d4O1XXixCUBhKsClS+sKig/xm7Qf1Moq3BWl+W8+XnKq1vfAWmMtE+
 fSEPVRmjVjd43gltgb6/kcbV/CRsb+2mQLQudsX0EKIqfQQ/r1FbFmWDdlJCR44s6Ly6
 W4x6P2El95LdIVM+0SQjN3NMwdSYXBJ3R7u2d2x+fLJWZrxOse6GgO+ql1Kdouih8Ood
 /qBX9jgMhBMFSl/syIm7r4MQ5PRCd4Rt/yREs+tKGUWDpuvIxbAU6CRsqd+2W5iYBHDZ
 HaOdlCWZHS6MDUTNJ7dJ7J1j6PL43B4+4lWQe9oFG/tzBQw495QpNG1LqtSYcGFCN9Nm
 O5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2fKmaKbYZojeXOESX2wjsRICUT6Z1aDirXq74dYJp6Q=;
 b=Swq4VH3rxxjVgC+351lDLWVRkC2iGCPHCzqDN740950uL9iDirIkE9yrg+p+PXM8kl
 HrBAw9mXK451Irlt9kxHAhjUwUHFe8D+r4xxf30VWk37mHawxu4vbU274K2+C+DCB0QY
 R4IEslRo+QLuBBXkdAi97+YT5T8FZ6aawjr3s4NR8jQAC2nA6Hn6EXRnkb3HW1ITpXMO
 CkjeQQJj+/ZKwPkPECt7KC2rAMWuUrzreJt6PGK/y4+3u0pYmUEQL0PTQ9E+Dy3pS5gn
 w9u4sCGj4C5dBWgQPrYL/uNKncHCRfLHCLnYXFThWfCfWQY128V1/uCfrWU8sbku9xGV
 q63A==
X-Gm-Message-State: APjAAAXYhtJn/3ikCtD0C6coIZ80xdMjXjCknMeVMRwwB4v22oVywDda
 MzNneMPYbwcW2EG+EAQwc5A=
X-Google-Smtp-Source: APXvYqxrXRoAqEFNOarmgao2CyQeFCPWLKuBg/aOW8w3D51nIg/ZPjoszvaQ5j6bQkAUuqpZibKS+g==
X-Received: by 2002:a63:e251:: with SMTP id y17mr8811746pgj.8.1562912902433;
 Thu, 11 Jul 2019 23:28:22 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id p1sm8830629pff.74.2019.07.11.23.28.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:28:21 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 01/10] staging: wlan-ng: Remove function hfa384x_dorrid_wait()
Date: Fri, 12 Jul 2019 11:57:58 +0530
Message-Id: <20190712062807.9361-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove function hfa384x_dorrid_wait as it is only called once and it
does nothing except call hfa384x_dorrid.
Move contents of hfa384x_dorrid_wait to its only call site to maintain
functionality.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index ab734534093b..4befc615d8e2 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -834,14 +834,6 @@ hfa384x_docmd_async(struct hfa384x *hw,
 	return hfa384x_docmd(hw, DOASYNC, cmd, cmdcb, usercb, usercb_data);
 }
 
-static inline int
-hfa384x_dorrid_wait(struct hfa384x *hw, u16 rid, void *riddata,
-		    unsigned int riddatalen)
-{
-	return hfa384x_dorrid(hw, DOWAIT,
-			      rid, riddata, riddatalen, NULL, NULL, NULL);
-}
-
 static inline int
 hfa384x_dorrid_async(struct hfa384x *hw,
 		     u16 rid, void *riddata, unsigned int riddatalen,
@@ -2061,7 +2053,7 @@ int hfa384x_drvr_flashdl_write(struct hfa384x *hw, u32 daddr,
  */
 int hfa384x_drvr_getconfig(struct hfa384x *hw, u16 rid, void *buf, u16 len)
 {
-	return hfa384x_dorrid_wait(hw, rid, buf, len);
+	return hfa384x_dorrid(hw, DOWAIT, rid, buf, len, NULL, NULL, NULL);
 }
 
 /*----------------------------------------------------------------
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
