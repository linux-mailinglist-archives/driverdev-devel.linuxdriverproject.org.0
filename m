Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7594B249C3E
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 13:47:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A69F8712D;
	Wed, 19 Aug 2020 11:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KoQBjuMdwTzd; Wed, 19 Aug 2020 11:47:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4C4586C03;
	Wed, 19 Aug 2020 11:47:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 755DC1BF30D
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6413A20348
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JM3q7bl-dTD0 for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 11:46:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 975BB2094E
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5095422CAD;
 Wed, 19 Aug 2020 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597837582;
 bh=o+dPk81+NMDdJSOsQwMp59v7Nb6GFnjf15Zj5YFTNyI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pxTMjf6viao+UPOT3FObbISMahb7HiZubwoMpjhYHlgFLC1S3o0d8cWuYsx5i4SWq
 5hx25kaLQqM8powYJVX//5OdWTui8WxYAUhJqVkpzKN3bJ11MoCOvQP3G8Kq5yU0IX
 9MhZQ2Q1Eizc8S5mmUdVS1mc+dS2HvaLjZfbD0RI=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k8MXs-00Euan-6z; Wed, 19 Aug 2020 13:46:20 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 20/49] staging: hikey9xx/gpu: get rid of ION headers
Date: Wed, 19 Aug 2020 13:45:48 +0200
Message-Id: <322525a4e4cd9d594cfaf003d11fa100e813c6bc.1597833138.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597833138.git.mchehab+huawei@kernel.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Liwei Cai <cailiwei@hisilicon.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chen Feng <puck.chen@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Liuyao An <anliuyao@huawei.com>,
 John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel@ffwll.ch>,
 mauro.chehab@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is not used anymore on this version, so let's get rid
of them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h | 3 ---
 drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h | 3 ---
 drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h | 2 --
 3 files changed, 8 deletions(-)

diff --git a/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h b/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h
index 995ab8f7c9f4..a0f7732063a3 100644
--- a/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h
+++ b/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h
@@ -27,9 +27,6 @@
 #include <drm/drm_plane.h>
 #include <drm/drm_crtc.h>
 
-#include <linux/ion.h>
-#include <linux/hisi/hisi_ion.h>
-
 #define FB_ACCEL_HI62xx 	0x1
 #define FB_ACCEL_HI363x 	0x2
 #define FB_ACCEL_HI365x 	0x4
diff --git a/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h b/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h
index ece49b99dca7..84293d2d462e 100644
--- a/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h
+++ b/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h
@@ -27,9 +27,6 @@
 #include <drm/drm_plane.h>
 #include <drm/drm_crtc.h>
 
-#include <linux/ion.h>
-#include <linux/hisi/hisi_ion.h>
-
 #define FB_ACCEL_HI62xx 	0x1
 #define FB_ACCEL_HI363x 	0x2
 #define FB_ACCEL_HI365x 	0x4
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h
index 15ef96840e9f..b704f025d64b 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h
@@ -17,8 +17,6 @@
 #include <drm/drm_print.h>
 
 #include <linux/iommu.h>
-#include <linux/ion.h>
-#include <linux/hisi/hisi_ion.h>
 #include <linux/hisi/hisi-iommu.h>
 
 #define MAX_CRTC	2
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
