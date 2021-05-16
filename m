Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BB8381E5F
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD9D240239;
	Sun, 16 May 2021 10:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uy-YPccBOV_f; Sun, 16 May 2021 10:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20876401FA;
	Sun, 16 May 2021 10:57:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0FD71BF332
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79B6740173
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g_4aQnd_4E6E for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C66F40222
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5CAC761352;
 Sun, 16 May 2021 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=21CCoTvk0P2nJNZOW0CE5KdGJy4Om6wkSpbdQjM6tQE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jh0QJfnixOHk8arKkDDHxCVbP5npvVzJVxnUcpLmtf2vx5NPm3v2DwoJuA0iu+k0N
 Ly/4kjcqVUm+0rrnWc/GpHIEzjoOXPGQOLtAoFinU1rJo54Bs6UJ/mEe/bLcx6iUrH
 QhVk9XC+JJ9UDFHEBn2cB8T/VxaWoEnI1xydgmfixhnm/lcwgOhElhbGRmLFPfeNU9
 0g0Yvc6yIWtkfBo2XRFouGgINFsDC9DmiooFNQ6lMlumoy+3iL5cFSwwcBwC0qR9T3
 A7wBnpZA6Ncm7AW8Ll4cRB8Bn2sATVlPdvUDGIiryp6MsTATZ7nJgE4DB0nkq55zgl
 GpvHyWEnTChOg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP9-003s92-C4; Sun, 16 May 2021 12:53:51 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 17/17] staging: nuc-led: update the TODOs
Date: Sun, 16 May 2021 12:53:45 +0200
Message-Id: <f23fed6a89f66564f5af52f241016a4b9823ce04.1621161037.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1621161037.git.mchehab+huawei@kernel.org>
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-staging@lists.linux.dev, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Now that most functionality were merged at the driver,
update its TODO list, and add a "TODO" comment for the two
WMI API commands that are currently not implemented.

In summary:

-  on Rev 0.64, command 0x07 (LED_NOTIFICATION) is meant to store
   all config settings at EEPROM. That doesn't seem to be needed
   on Skull Canyon, but tests with different hardware would be
   nice in order to double-check it. Also, maybe Rev 1.00 would
   make it mandatory;
-  Rev 1.00 added command 0x08 to switch the LED type
   (LED_SWITCH_TYPE at the driver's nomenclature) between
   single color LED and multi color LED). Not sure how this
   should be properly implemented (if this is the case);
-  The tests for NUC6 version were using a Skull Canyon NUC.
   It allowed to check that the driver's logic runs, but
   it is not enough to see if everything is really working.
   Tests on NUC6 or NUC7 are required;
-  On a suspend test, I noticed that some controls were reset
   to the default at resume time. It is required to check
   what's happening there and address it properly.
-  Need to validate the uAPI and document it before moving
   this driver out of staging.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/nuc-led/TODO      | 12 +++++++-----
 drivers/staging/nuc-led/nuc-wmi.c |  6 ++----
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/nuc-led/TODO b/drivers/staging/nuc-led/TODO
index d5296d7186a7..df6f3f653eb0 100644
--- a/drivers/staging/nuc-led/TODO
+++ b/drivers/staging/nuc-led/TODO
@@ -1,6 +1,8 @@
-- Add support for 6th gen NUCs, like Skull Canyon
-- Improve LED core support to avoid it to try to manage the
-  LED brightness directly;
-- Test it with 8th gen NUCs;
-- Add more functionality to the driver;
+- Test it with 6th gen and 10th NUCs;
+- Add support for LED_NOTIFICATION;
+- Add support for LED_SWITCH_TYPE;
+- Some LED parameters are changing after returning
+  from suspend. Need to check what's happening there
+  (hardware bug?) and ensure that the parameters will
+  be properly restored after resume.
 - Stabilize and document its sysfs interface.
diff --git a/drivers/staging/nuc-led/nuc-wmi.c b/drivers/staging/nuc-led/nuc-wmi.c
index 2d9c49d72703..e87e97d56364 100644
--- a/drivers/staging/nuc-led/nuc-wmi.c
+++ b/drivers/staging/nuc-led/nuc-wmi.c
@@ -42,16 +42,14 @@ enum led_cmds {
 	LED_OLD_SET_LED                 = 0x02,
 
 	/* Rev 0.64 and 1.0 cmds */
-
 	LED_QUERY			= 0x03,
 	LED_NEW_GET_STATUS		= 0x04,
 	LED_SET_INDICATOR		= 0x05,
 	LED_SET_VALUE			= 0x06,
-	LED_NOTIFICATION		= 0x07,
-	LED_SWITCH_TYPE			= 0x08,
+	LED_NOTIFICATION		= 0x07, // TODO: add support for it
 
 	/* Rev 1.0 cmds */
-
+	LED_SWITCH_TYPE			= 0x08, // TODO: add support for it
 	LED_VERSION_CONTROL             = 0x09,
 };
 
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
