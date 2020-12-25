Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824852E2B0F
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Dec 2020 11:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA66187410;
	Fri, 25 Dec 2020 10:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eXQ0Wqb8it6q; Fri, 25 Dec 2020 10:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E8D2873E7;
	Fri, 25 Dec 2020 10:00:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 65E3B1BF356
 for <devel@linuxdriverproject.org>; Fri, 25 Dec 2020 10:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 62977855B4
 for <devel@linuxdriverproject.org>; Fri, 25 Dec 2020 10:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zSpItJ7vv8qd for <devel@linuxdriverproject.org>;
 Fri, 25 Dec 2020 10:00:12 +0000 (UTC)
X-Greylist: delayed 00:07:37 by SQLgrey-1.7.6
Received: from 189.cn (ptr.189.cn [183.61.185.101])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5EE6D855B1
 for <devel@driverdev.osuosl.org>; Fri, 25 Dec 2020 10:00:12 +0000 (UTC)
HMM_SOURCE_IP: 10.64.10.46:56014.1951954204
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-123.150.8.42 (unknown [10.64.10.46])
 by 189.cn (HERMES) with SMTP id 4302A1009C3;
 Fri, 25 Dec 2020 17:52:30 +0800 (CST)
Received: from  ([10.64.8.34])
 by gateway-151646-dep-54888d799-2jgfg with ESMTP id
 87cf8922129a4226b81fe47981ea377f for greg@kroah.com; 
 Fri Dec 25 17:52:31 2020
X-Transaction-ID: 87cf8922129a4226b81fe47981ea377f
X-filter-score: 
X-Real-From: chensong_2000@189.cn
X-Receive-IP: 10.64.8.34
X-MEDUSA-Status: 0
From: Song Chen <chensong_2000@189.cn>
To: greg@kroah.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: board: description for CONFIG_STAGING_BOARD
Date: Fri, 25 Dec 2020 17:52:38 +0800
Message-Id: <1608889958-32118-1-git-send-email-chensong_2000@189.cn>
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
Cc: devel@driverdev.osuosl.org, Song Chen <chensong_2000@189.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A paragraph to describe what CONFIG_STAGING_BOARD is for,
to help developers have better understanding.

Signed-off-by: Song Chen <chensong_2000@189.cn>
---
 drivers/staging/board/Kconfig | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/board/Kconfig b/drivers/staging/board/Kconfig
index d0c6e42..64c7797 100644
--- a/drivers/staging/board/Kconfig
+++ b/drivers/staging/board/Kconfig
@@ -3,7 +3,10 @@ config STAGING_BOARD
 	bool "Staging Board Support"
 	depends on OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP
 	help
-	  Select to enable per-board staging support code.
-
-	  If in doubt, say N here.
+	  Staging board base is to support continuous upstream
+	  in-tree development and integration of platform devices.
 
+	  Helps developers integrate devices as platform devices for
+	  device drivers that only provide platform device bindings.
+	  This in turn allows for incremental development of both
+	  hardware feature support and DT binding work in parallel.
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
