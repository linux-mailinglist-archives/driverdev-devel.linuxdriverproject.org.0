Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF06D25B135
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7E7112309D;
	Wed,  2 Sep 2020 16:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tKutn-7xlj2j; Wed,  2 Sep 2020 16:16:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2280D228E2;
	Wed,  2 Sep 2020 16:16:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 171121BF3D4
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:16:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13DCE8717B
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jcce570kAgQY for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:16:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D2D6871A0
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:16:39 +0000 (UTC)
Received: (wp-smtpd smtp.wp.pl 628 invoked from network);
 2 Sep 2020 18:16:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1599063396; bh=fCRMYNQmfFvrAJR8Oni60wZOyAz0/8t7DxsWGn6A+RU=;
 h=From:To:Cc:Subject;
 b=l/NCsyz62EM4EDtcZZXnEXJt+wOYXEZRm40mwglleSzpJGKSpos8xbj6g1hi7ZnAS
 1BL5g0Vn2XguZjdaqj0T9h216rUDA0pV16KKYKaVPQE5V3egVHE9ppzq2cjGS6DHoh
 H2J5bbmL3WUecKqFxndvtEFk4e+W4vjbYNuMo5WQ=
Received: from 188.146.102.178.nat.umts.dynamic.t-mobile.pl (HELO localhost)
 (antoni.przybylik@wp.pl@[188.146.102.178])
 (envelope-sender <antoni.przybylik@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <gregkh@linuxfoundation.org>; 2 Sep 2020 18:16:36 +0200
From: Antoni Przybylik <antoni.przybylik@wp.pl>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/2] staging: gdm724x: gdm_tty: replaced macro with a
 function
Date: Wed,  2 Sep 2020 18:16:27 +0200
Message-Id: <20200902161627.64686-1-antoni.przybylik@wp.pl>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-WP-DKIM-Status: good (id: wp.pl)                                      
X-WP-MailID: bd263fd383ace842bc314464e6a3863f
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000002 [UTGx]                               
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Antoni Przybylik <antoni.przybylik@wp.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Changed return type to bool and removed inline specifier. Also added
 static specifier.

Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
---
 drivers/staging/gdm724x/gdm_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index 34a13d98c029..179fc9b9400b 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -34,7 +34,7 @@ static DEFINE_MUTEX(gdm_table_lock);
 static const char *DRIVER_STRING[TTY_MAX_COUNT] = {"GCTATC", "GCTDM"};
 static char *DEVICE_STRING[TTY_MAX_COUNT] = {"GCT-ATC", "GCT-DM"};
 
-inline int gdm_tty_ready(struct gdm *gdm)
+static bool gdm_tty_ready(struct gdm *gdm)
 {
 	return (gdm && gdm->tty_dev && gdm->port.count);
 }
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
