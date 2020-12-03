Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 292C32CD5E0
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 13:51:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9240B2E37C;
	Thu,  3 Dec 2020 12:51:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BM9jEl3T24kb; Thu,  3 Dec 2020 12:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0B54A2E35F;
	Thu,  3 Dec 2020 12:50:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5771A1BF9B6
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5433787AAC
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E2QPjPp8JeJT for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 12:50:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 11A0E87AA6
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 12:50:52 +0000 (UTC)
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MQy0N-1kZRNh0hRX-00NvnC; Thu, 03 Dec 2020 13:48:06 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 02/11] drivers: staging: gasket: remove unneeded
 MODULE_VERSION() call
Date: Thu,  3 Dec 2020 13:47:54 +0100
Message-Id: <20201203124803.23390-2-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201203124803.23390-1-info@metux.net>
References: <20201203124803.23390-1-info@metux.net>
X-Provags-ID: V03:K1:5cNNaj3L1/oSaoHWBOWl0bfD/3mFxrG/x2hhKeTIwCx0/LVUkqJ
 9NVSdVPi4tZ8L7wKa7HtR7+OYYkwTIuZXgExz+2yWHIHjzhMXdwkO221R8mu8e3PmZ3gxGh
 KVPomrKpJKUobLqzoQICc41cHBibPpHdW0AblAT4iJkB/TZQGkencXQEj2T/2HetV82Yyph
 PD7FG5NSALtrKTRLxAo+A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ch9o7BlYNY0=:PCQG1wY9TcGzs26MLv2lEQ
 JI/cf0W1LfysAd/VFg13X3YS5gKmsaf3j9MEDQEMb5cNyUKy4CQqjdekZG0SxCW2dE62/VfPl
 xTtXC5ypyvj/C1VNLHFuavsgs4xmO3lRF26k8gKGTS7ZSfW55AjQ7ntjoFWjrL2sU3W9C6Twj
 p3t2OVVPRHH0oqA5WWFfBeN77/Pk45kF5WCzNclG0FJgCz/S63wcjXL6GEUgga+or2MtkPUAY
 O9PygrJ8tBk+sDOpX6KMNbKyRm0tTc7fgdawzvC75cNjo+FsAmuj4uLwZ6QpQQuRwzXRniWaZ
 2PnovUxiYTTcJuUu8cbmygnPsYvZmIcvCozRwU3nieAYD1UWyw16aZjcTwOxlaKrlIwZD521m
 OuxFxIWDTyckIpwES9kNKA3PhBhQ5QJHmLqZrgYwc2BIP/Y+i3wV8/W+qIVEk
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
Cc: devel@driverdev.osuosl.org, toddpoynor@google.com, sbranden@broadcom.com,
 rjui@broadcom.com, speakup@linux-speakup.org, rcy@google.com,
 f.fainelli@gmail.com, rspringer@google.com, laurent.pinchart@ideasonboard.com,
 netdev@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 mchehab@kernel.org, nsaenzjulienne@suse.de, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove MODULE_VERSION(), as it doesn't seem to serve any practical purpose.
For in-tree drivers, the kernel version matters. The code has received lots
of changes, w/o the versions being actively maintained, so it doesn't seem
to have much practical meaning.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/staging/gasket/apex_driver.c | 1 -
 drivers/staging/gasket/gasket_core.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index f12f81c8dd2f..66ae99bebfd8 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -718,7 +718,6 @@ static void apex_exit(void)
 	gasket_unregister_device(&apex_desc);
 }
 MODULE_DESCRIPTION("Google Apex driver");
-MODULE_VERSION(APEX_DRIVER_VERSION);
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("John Joseph <jnjoseph@google.com>");
 MODULE_DEVICE_TABLE(pci, apex_pci_ids);
diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index 28dab302183b..763d5ea45e68 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -1809,7 +1809,6 @@ static int __init gasket_init(void)
 }
 
 MODULE_DESCRIPTION("Google Gasket driver framework");
-MODULE_VERSION(GASKET_FRAMEWORK_VERSION);
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Rob Springer <rspringer@google.com>");
 module_init(gasket_init);
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
