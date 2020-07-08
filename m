Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B97218372
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jul 2020 11:23:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33A4B86DA3;
	Wed,  8 Jul 2020 09:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OgDEu2hawc_B; Wed,  8 Jul 2020 09:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE4B385F33;
	Wed,  8 Jul 2020 09:22:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71B9F1BF36C
 for <devel@linuxdriverproject.org>; Wed,  8 Jul 2020 09:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E0DB863E0
 for <devel@linuxdriverproject.org>; Wed,  8 Jul 2020 09:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h9mbo66mvLXH for <devel@linuxdriverproject.org>;
 Wed,  8 Jul 2020 09:22:51 +0000 (UTC)
X-Greylist: delayed 00:08:13 by SQLgrey-1.7.6
Received: from smtp.al2klimov.de (smtp.al2klimov.de [78.46.175.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 100FB86038
 for <devel@driverdev.osuosl.org>; Wed,  8 Jul 2020 09:22:50 +0000 (UTC)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id EE037BC0D9;
 Wed,  8 Jul 2020 09:14:34 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: marvin24@gmx.de, gregkh@linuxfoundation.org, ac100@lists.launchpad.net,
 linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Replace HTTP links with HTTPS ones: STAGING - NVIDIA
 COMPLIANT EMBEDDED CONTROLLER INTERFACE (nvec)
Date: Wed,  8 Jul 2020 11:14:28 +0200
Message-Id: <20200708091428.13554-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: +++++
Authentication-Results: smtp.al2klimov.de;
 auth=pass smtp.auth=aklimov@al2klimov.de
 smtp.mailfrom=grandmaster@al2klimov.de
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
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
            If both the HTTP and HTTPS versions
            return 200 OK and serve the same content:
              Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
 (Actually letting a shell for loop submit all this stuff for me.)

 If there are any URLs to be removed completely or at least not HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.


 drivers/staging/nvec/README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/README b/drivers/staging/nvec/README
index 0e2d5c4c875f..510e6933f402 100644
--- a/drivers/staging/nvec/README
+++ b/drivers/staging/nvec/README
@@ -10,5 +10,5 @@ but the source code[1] of the published nvec reference drivers can be a guide.
 This driver is currently only used by the AC100 project[2], but it is likely,
 that other Tegra boards (not yet mainlined, if ever) also use it.
 
-[1] e.g. http://nv-tegra.nvidia.com/gitweb/?p=linux-2.6.git;a=tree;f=arch/arm/mach-tegra/nvec;hb=android-tegra-2.6.32
+[1] e.g. https://nv-tegra.nvidia.com/gitweb/?p=linux-2.6.git;a=tree;f=arch/arm/mach-tegra/nvec;hb=android-tegra-2.6.32
 [2] http://gitorious.org/ac100, http://launchpad.net/ac100
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
