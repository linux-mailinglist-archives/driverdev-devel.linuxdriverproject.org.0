Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD8518D406
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:18:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 48DCD25DBB;
	Fri, 20 Mar 2020 16:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZuCLEJhuOHc; Fri, 20 Mar 2020 16:18:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 82F3C22622;
	Fri, 20 Mar 2020 16:18:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C7E41BF278
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 495E086AF0
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zS-+PqtBarZC for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:18:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD92986ADB
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:18:42 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M1q8m-1jHWDQ3j1k-002JLb for <devel@driverdev.osuosl.org>; Fri, 20 Mar
 2020 17:18:40 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 544BB65035C
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j3i8Gw6ZxI1d for <devel@driverdev.osuosl.org>;
 Fri, 20 Mar 2020 17:18:39 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id D3FDC64D58D
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:18:39 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 17:18:39 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 44952804FE; Fri, 20 Mar 2020 17:11:43 +0100 (CET)
Date: Fri, 20 Mar 2020 17:11:43 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v3 02/11] media: adv748x: include everything adv748x.h needs
 into the file
Message-ID: <e37abb9c66571ad02a7d0c7903d1889d7d52ed46.1584720678.git.alexander.riesen@cetitec.com>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <cover.1584720678.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1584720678.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.41]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7662
X-Provags-ID: V03:K1:V4fJewpIMF285jR2F1DO6IRKnipakpCp1eNAOSuiyPtSobzcO2k
 qO+yqAMdM+k+4JNHSKRKOKSJA1ikHQ2acfSTCKd7Uj7e0EysEshO5LLyGnHB0HGCH5CdzIM
 Q3jUCBRVncQO41CT+bwo+QmNZ1ek+qZpShCfcq5U/SOiV+JrOSU+w45erCX11+ABWOqHwT5
 mU2num5LJt6U+uE8d/Fdg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:BQvqYsXVdPM=:+4ayR+OwZSQqMvMFCdxl64
 naGtvLJd8XKr2P99SDGCzs4xF/7O0zKiHwJkrLMiPcnqaayB0s0EWjViS5IxoZ311R2mNDBOQ
 OxmDH4wKKXwgqXYHFnvd1eLNALdZ27ABZu5z7Fxgs6klJVyHylemZdfF2X9a5qB5M8Jax85rl
 7z+Eu78LkDGaWiXfJ7LDeKIs0twYdtHORNvcdbWgfADEH9OfEaG+8A2sNOA8HN1ox/CxtQxZH
 X1teDURGnyyPemydGBv3CWP7gmfPrXRaQQ5QB24xrchSEHsvaodMloTehV0i/vQTQu/0BCWs6
 PSxyk85ORCqoejcto8nJjDHAsOBXfxshhc7UwCImIKTYdt1KCE2vbt0W307f+WPNHeztWtXby
 b1ikdbHBL+Ok+KVcZUPC1wk+jUl/h7Md8AYOIUGOdfMaMH6168IrVgpDeKAGMhPvDp9dSUVhM
 T/brjeUTfl3CE6xtDuHhE41ysrbmPrmbMZYLu2Sh8lPB8t+F9CDIfsQihLs1IWLZ7sxoXiCpb
 dEtB9VvBM2BxGqxY5SVfLgih2fgVd9W8vwcGKf8LZZcioHzphTjlQKo9myqONR9f4iGr4J5aM
 i5y7fgdgpAe5KsMcQm7lLckwoKz3ubdP3jqMMNA0s+hzfBcZwoEBOeqqpeL/uZWiwb9V4nyjm
 IstpyG8e1O+CATFZ1D2nb+epP8ooD+tAPLC11r91BKXoHABur8eDC4mOzVJKsesOplsNkZnh2
 FRAnFAQIozK+87xNNqYUfNUUSHARBvuU5w56jw0pYc0Kr8C0ZFDil2ZLzz9c/rpqILGDYxOdU
 cKmjin3owbWD7uQVNEn8q/K0ds+J7Su5CvkfpLzOCjDWQPCkI/d2kRbScPuu6QQWjAT8Gv2
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

To follow the established practice of not depending on others to
pull everything in. While at it, make sure it stays like this.

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/i2c/adv748x/adv748x-afe.c  | 6 ++----
 drivers/media/i2c/adv748x/adv748x-core.c | 6 ++----
 drivers/media/i2c/adv748x/adv748x-csi2.c | 6 ++----
 drivers/media/i2c/adv748x/adv748x-hdmi.c | 6 ++----
 drivers/media/i2c/adv748x/adv748x.h      | 2 ++
 5 files changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/media/i2c/adv748x/adv748x-afe.c b/drivers/media/i2c/adv748x/adv748x-afe.c
index dbbb1e4d6363..5a25d1fbe25f 100644
--- a/drivers/media/i2c/adv748x/adv748x-afe.c
+++ b/drivers/media/i2c/adv748x/adv748x-afe.c
@@ -6,18 +6,16 @@
  * Copyright (C) 2017 Renesas Electronics Corp.
  */
 
+#include "adv748x.h"
+
 #include <linux/delay.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/v4l2-dv-timings.h>
 
-#include <media/v4l2-ctrls.h>
-#include <media/v4l2-device.h>
 #include <media/v4l2-dv-timings.h>
 #include <media/v4l2-ioctl.h>
 
-#include "adv748x.h"
-
 /* -----------------------------------------------------------------------------
  * SDP
  */
diff --git a/drivers/media/i2c/adv748x/adv748x-core.c b/drivers/media/i2c/adv748x/adv748x-core.c
index c3fb113cef62..5c59aad319d1 100644
--- a/drivers/media/i2c/adv748x/adv748x-core.c
+++ b/drivers/media/i2c/adv748x/adv748x-core.c
@@ -10,6 +10,8 @@
  *	Kieran Bingham <kieran.bingham@ideasonboard.com>
  */
 
+#include "adv748x.h"
+
 #include <linux/delay.h>
 #include <linux/errno.h>
 #include <linux/i2c.h>
@@ -20,14 +22,10 @@
 #include <linux/slab.h>
 #include <linux/v4l2-dv-timings.h>
 
-#include <media/v4l2-ctrls.h>
-#include <media/v4l2-device.h>
 #include <media/v4l2-dv-timings.h>
 #include <media/v4l2-fwnode.h>
 #include <media/v4l2-ioctl.h>
 
-#include "adv748x.h"
-
 /* -----------------------------------------------------------------------------
  * Register manipulation
  */
diff --git a/drivers/media/i2c/adv748x/adv748x-csi2.c b/drivers/media/i2c/adv748x/adv748x-csi2.c
index c43ce5d78723..c00d4f347d95 100644
--- a/drivers/media/i2c/adv748x/adv748x-csi2.c
+++ b/drivers/media/i2c/adv748x/adv748x-csi2.c
@@ -5,15 +5,13 @@
  * Copyright (C) 2017 Renesas Electronics Corp.
  */
 
+#include "adv748x.h"
+
 #include <linux/module.h>
 #include <linux/mutex.h>
 
-#include <media/v4l2-ctrls.h>
-#include <media/v4l2-device.h>
 #include <media/v4l2-ioctl.h>
 
-#include "adv748x.h"
-
 static int adv748x_csi2_set_virtual_channel(struct adv748x_csi2 *tx,
 					    unsigned int vc)
 {
diff --git a/drivers/media/i2c/adv748x/adv748x-hdmi.c b/drivers/media/i2c/adv748x/adv748x-hdmi.c
index c557f8fdf11a..f598acec3b5c 100644
--- a/drivers/media/i2c/adv748x/adv748x-hdmi.c
+++ b/drivers/media/i2c/adv748x/adv748x-hdmi.c
@@ -5,18 +5,16 @@
  * Copyright (C) 2017 Renesas Electronics Corp.
  */
 
+#include "adv748x.h"
+
 #include <linux/module.h>
 #include <linux/mutex.h>
 
-#include <media/v4l2-ctrls.h>
-#include <media/v4l2-device.h>
 #include <media/v4l2-dv-timings.h>
 #include <media/v4l2-ioctl.h>
 
 #include <uapi/linux/v4l2-dv-timings.h>
 
-#include "adv748x.h"
-
 /* -----------------------------------------------------------------------------
  * HDMI and CP
  */
diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index fccb388ce179..09aab4138c3f 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -19,6 +19,8 @@
  */
 
 #include <linux/i2c.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-device.h>
 
 #ifndef _ADV748X_H_
 #define _ADV748X_H_
-- 
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
