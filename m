Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C4A1E39F1
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 09:12:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAD6286B18;
	Wed, 27 May 2020 07:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8qNlFu4DY_8b; Wed, 27 May 2020 07:12:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 961EA86B1A;
	Wed, 27 May 2020 07:12:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0006A1BF423
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F08178846B
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qcPgz055YGb7 for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 07:12:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 749608833F
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 07:12:15 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id y198so11445634pfb.4
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 00:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TS7T0GnvahIo34Ueh1mEB91ydpyvQ6Kv78CuMyjghNI=;
 b=TF+ZnVGlHYlycvaTVaXADyYL0RJeFIrCgBOXxgVjtkEbW1aFo47roQVqe4rimM5XaO
 0jyPywtYKRd5OylJ6q2ztpi5amDIDSk4F/HP1rcZS61pV+2bP3Et1MOVRJECN4eq3V8K
 FhE0s9dL0s1W8dAdY7kR8nRl9Cae8qgIRE7TTpJvULSdbuSW46zLeHNOj6acvZ2i0BfU
 pyr8DtUCyPOWPD0v9PLq5XCcVmfBlD0cEbSbuEt9ikkbHzhXwLtO6p2lZgfzYwu/t6dL
 vDoVwfTgGtDeyjnENBL9+L74uybPBlYZvUrtsfs5J6Wrz90fcfapibK46F9n+2Hs1C3F
 Tw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TS7T0GnvahIo34Ueh1mEB91ydpyvQ6Kv78CuMyjghNI=;
 b=P7J7IDeHKUNJr55dMPxz0hvrvgpgQ77+0J97gOKnesyKL10lME3BjPG4xAWMLfrMBR
 w6T0U1sUbwCuP0U0RSYIjvL+Xnro598nEFTUboeYBlTgdslPhgt2j1ukJgwtEKz0T3im
 S7anrCc7qLk+0fIIYdm7C7lxNbC2+M3Q8Hwc9nEUF/slTc2epQt/beN5ws9SXmmeASLy
 SZshIzUAc6HxxqpFUP2sySvbDKaRFDVHsrgMy5U8K4E6094lwNcj/4b27pcmaWKCTMHy
 FeWocfcB6wtBXHvzUG4LCUqryJVR4tIPn12NxtCpDIjdaHHugGm140RJURLM+zE8IenK
 uLJw==
X-Gm-Message-State: AOAM5335IQs6yuXlFhfNDpsbp/1iQw0r3+v8kymHEkHhEyi+c1tD7dAd
 YK3ApF605PRs4XiePsFbFn0=
X-Google-Smtp-Source: ABdhPJwQC4jQeNUEVSfWcbDH8TBVkeO48J33ab8uL53x2ElsZaurgFDeuYMlkbqz8HFBeHrwQ0mRWQ==
X-Received: by 2002:a62:a50a:: with SMTP id v10mr2720546pfm.134.1590563535044; 
 Wed, 27 May 2020 00:12:15 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 00:12:14 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 3/7] media: atomisp: Add stub for atomisp_mrfld_power
Date: Wed, 27 May 2020 00:11:46 -0700
Message-Id: <20200527071150.3381228-4-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
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
 clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clang warns:

../drivers/staging/media/atomisp/pci/atomisp_v4l2.c:764:12: warning:
unused function 'atomisp_mrfld_power' [-Wunused-function]
static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
           ^

Use an '#if 0' preprocessor define to hide the broken code, leaving the
FIXME comment intact, and creating an atomisp_mrfld_power stub function
that just returns 0.

Fixes: 95d1f398c4dc ("media: atomisp: keep the ISP powered on when setting it")
Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index c42999a55303..41aa6018d254 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -736,6 +736,8 @@ static int atomisp_mrfld_pre_power_down(struct atomisp_device *isp)
 * WA for DDR DVFS enable/disable
 * By default, ISP will force DDR DVFS 1600MHz before disable DVFS
 */
+/* FIXME: at least with ISP2401, the code below causes the driver to break */
+#if 0
 static void punit_ddr_dvfs_enable(bool enable)
 {
 	int door_bell = 1 << 8;
@@ -820,20 +822,23 @@ static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
 	dev_err(isp->dev, "IUNIT power-%s timeout.\n", enable ? "on" : "off");
 	return -EBUSY;
 }
+#else
+static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
+{
+	return 0;
+}
+#endif
 
 /* Workaround for pmu_nc_set_power_state not ready in MRFLD */
 int atomisp_mrfld_power_down(struct atomisp_device *isp)
 {
-	return 0;
-// FIXME: at least with ISP2401, the code below causes the driver to break
-//	return atomisp_mrfld_power(isp, false);
+	return atomisp_mrfld_power(isp, false);
 }
 
 /* Workaround for pmu_nc_set_power_state not ready in MRFLD */
 int atomisp_mrfld_power_up(struct atomisp_device *isp)
 {
 	return 0;
-// FIXME: at least with ISP2401, the code below causes the driver to break
 //	return atomisp_mrfld_power(isp, true);
 }
 
-- 
2.27.0.rc0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
