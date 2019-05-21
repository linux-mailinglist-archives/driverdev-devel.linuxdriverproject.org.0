Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DA22587D
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 21:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BB78D2E10C;
	Tue, 21 May 2019 19:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eHy2fSmctLro; Tue, 21 May 2019 19:54:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1C0792CE27;
	Tue, 21 May 2019 19:54:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF3BF1BF3AE
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 19:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DEDA786148
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 19:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TNYiCw2XcI5H for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 19:54:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E87A78612E
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 19:54:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4F46688318;
 Tue, 21 May 2019 19:54:18 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-112-25.ams2.redhat.com
 [10.36.112.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BF996600CC;
 Tue, 21 May 2019 19:54:15 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8723bs: Fix Coverity warning in rtw_dbg_port()
Date: Tue, 21 May 2019 21:54:12 +0200
Message-Id: <20190521195412.22187-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 21 May 2019 19:54:23 +0000 (UTC)
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
Cc: devel@driverdev.osuosl.org, Hans de Goede <hdegoede@redhat.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following Coverity warning:

File: drivers/staging/rtl8723bs/os_dep/ioctl_linux.c in function
rtw_dbg_port():

CID 18480: Operands don't affect result (CONSTANT_EXPRESSION_RESULT)
dead_error_condition: The condition (extra_arg & 7U) > 7U cannot be true.

        if ((extra_arg & 0x07) > 0x07)
                padapter->driver_ampdu_spacing = 0xFF;
        else
                padapter->driver_ampdu_spacing = extra_arg;

Reported-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 8fb03efd588b..5c70c17aee19 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -3101,7 +3101,7 @@ static int rtw_dbg_port(struct net_device *dev,
 
 							DBG_871X("enable driver ctrl ampdu density = %d\n", extra_arg);
 
-							if ((extra_arg & 0x07) > 0x07)
+							if (extra_arg > 0x07)
 								padapter->driver_ampdu_spacing = 0xFF;
 							else
 								padapter->driver_ampdu_spacing = extra_arg;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
