Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C4825B0CD
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:11:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 924782266C;
	Wed,  2 Sep 2020 16:11:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e+i-17uH6YYb; Wed,  2 Sep 2020 16:10:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 41636228E3;
	Wed,  2 Sep 2020 16:10:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA3CE1BF3D4
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A537D869E2
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gPh0ykz2Lv0j for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E2B0B8627E
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A47C5221EC;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599063046;
 bh=yoQ8zZE5m2/tDG9AeXtLxMJl3im46ZkFGZeqJRxitE4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qaY1oFSYcDv+ogzDVXr3d5fhrEopUrBB+TvKnkK+8pPRIyrZ8YN7uilwgwszUJEYu
 WRNubUMqmwMnnz2wAm74KhVfPq/69qs8XxivES3DC8Tt01R7jCwS884wVvisuVIRoc
 0xOgFDGhvUwe83zUer5g3Zi3hnxdtLbswSBjmiUY=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kDVLQ-000tBN-S2; Wed, 02 Sep 2020 18:10:44 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 36/38] media: atomisp: csi_rx.c: add a missing includes
Date: Wed,  2 Sep 2020 18:10:39 +0200
Message-Id: <ee16e19b9176fb65341fd5f2b81ecbf98e5ba1b4.1599062230.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1599062230.git.mchehab+huawei@kernel.org>
References: <cover.1599062230.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Due to that, smatch warns with:

	drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c:18:11:  warning: symbol 'N_SHORT_PACKET_LUT_ENTRIES' was not declared. Should it be static?
	drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c:24:11:  warning: symbol 'N_LONG_PACKET_LUT_ENTRIES' was not declared. Should it be static?
	drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c:30:11:  warning: symbol 'N_CSI_RX_FE_CTRL_DLANES' was not declared. Should it be static?
	drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c:37:11:  warning: symbol 'N_CSI_RX_BE_SID_WIDTH' was not declared. Should it be static?
	drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c:19:11:  warning: symbol 'N_IBUF_CTRL_PROCS' was not declared. Should it be static?

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c  | 1 +
 .../staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c   | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
index 8e661091f7d9..9a8d8f546da7 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
@@ -14,6 +14,7 @@
  */
 
 #include "system_global.h"
+#include "csi_rx_global.h"
 
 const u32 N_SHORT_PACKET_LUT_ENTRIES[N_CSI_RX_BACKEND_ID] = {
 	4,	/* 4 entries at CSI_RX_BACKEND0_ID*/
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c
index 58fec54a914d..8d19c9875a71 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl.c
@@ -15,6 +15,7 @@
 
 #include <type_support.h>
 #include "system_global.h"
+#include "ibuf_ctrl_global.h"
 
 const u32 N_IBUF_CTRL_PROCS[N_IBUF_CTRL_ID] = {
 	8,	/* IBUF_CTRL0_ID supports at most 8 processes */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
