Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 573D1215A8
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 10:50:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0422886FFD;
	Fri, 17 May 2019 08:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ANU6sfmT6HO; Fri, 17 May 2019 08:50:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9C3884737;
	Fri, 17 May 2019 08:50:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 407071BF327
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:50:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D8C986767
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:50:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id loCSbjhdTpT2 for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 08:50:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D32F286761
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:50:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37B502082E;
 Fri, 17 May 2019 08:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558083000;
 bh=Rxzx0LJQxLdTFZGWLlLsRTh8wnrL9Cw9hAR+XC+s4cU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RqbxQOrjtSmZad1a9o8g2ZdmnFRouU7mVjNPV4jAHyWBdsqQmFRZux7tq7FUEIfzR
 XRedcBCHojFRBzQ4xhjtOW53IvhNYOjFeHmrjT0dw4lsw5S5kzkol0HgG7lj4eATy3
 gZzAWgG6gX3jHO77FH9iHZjCLFUzNIssZV/sPY5c=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 01/10] staging: kpc2000: fix coding style in uapi.h
Date: Fri, 17 May 2019 10:49:35 +0200
Message-Id: <20190517084945.2810-2-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517084945.2810-1-gregkh@linuxfoundation.org>
References: <20190517084945.2810-1-gregkh@linuxfoundation.org>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use tabs in uapi.h, like is mandated.

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/kpc2000/uapi.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/uapi.h b/drivers/staging/kpc2000/kpc2000/uapi.h
index ef8008bcd33d..16f37f002dc6 100644
--- a/drivers/staging/kpc2000/kpc2000/uapi.h
+++ b/drivers/staging/kpc2000/kpc2000/uapi.h
@@ -5,18 +5,18 @@
 #include <linux/ioctl.h>
 
 struct kp2000_regs {
-    __u32 card_id;
-    __u32 build_version;
-    __u32 build_datestamp;
-    __u32 build_timestamp;
-    __u32 hw_rev;
-    __u64 ssid;
-    __u64 ddna;
-    __u64 cpld_reg;
+	__u32 card_id;
+	__u32 build_version;
+	__u32 build_datestamp;
+	__u32 build_timestamp;
+	__u32 hw_rev;
+	__u64 ssid;
+	__u64 ddna;
+	__u64 cpld_reg;
 };
 
-#define KP2000_IOCTL_GET_CPLD_REG               _IOR('k', 9, __u32)
-#define KP2000_IOCTL_GET_PCIE_ERROR_REG         _IOR('k', 11, __u32)
-#define KP2000_IOCTL_GET_EVERYTHING             _IOR('k', 8, struct kp2000_regs*)
+#define KP2000_IOCTL_GET_CPLD_REG		_IOR('k', 9, __u32)
+#define KP2000_IOCTL_GET_PCIE_ERROR_REG		_IOR('k', 11, __u32)
+#define KP2000_IOCTL_GET_EVERYTHING		_IOR('k', 8, struct kp2000_regs*)
 
 #endif /* KP2000_CDEV_UAPI_H_ */
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
