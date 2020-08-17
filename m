Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C9C245D68
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FC7887CD7;
	Mon, 17 Aug 2020 07:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id slb-g94fUT8o; Mon, 17 Aug 2020 07:11:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0202F87CAE;
	Mon, 17 Aug 2020 07:11:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1413C1BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0E72987447
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tsv3VRgNi25C for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 42EB387216
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC1D72080D;
 Mon, 17 Aug 2020 07:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648277;
 bh=2ySxnifEZD8oaBtv2l66MKMMUsoZY8TKt22SdNRdIOo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XfHJoodD38UbgG1EJdPi0NswB9PFpNYTTIC5/Ne4s+q6hpeVzVi7OPAY70a6a+JJu
 q3vkuxz+Hz2uQIh203wHfY1z5AzeBV5Q1ORBPUqZ5gi1mDEgin2TpfCkdrKrcmTfo0
 7tZom32E7mW7pgnyG4hot6tOnB2vIrw8ItqbmL9s=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIY-00BdjQ-Vk; Mon, 17 Aug 2020 09:11:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 06/44] staging: spmi: hisi-spmi-controller: use le32 macros
 where needed
Date: Mon, 17 Aug 2020 09:10:25 +0200
Message-Id: <927ac4f981649318dba399e46a1aa429c428cfa3.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Instead of manually using bswap_32(), just use the
le32 macros.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hisi-spmi-controller.c   | 20 +++++++------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index 7fae267a6062..cacd28150b49 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -11,7 +11,6 @@
 #include <linux/module.h>
 #include <linux/seq_file.h>
 #include <linux/spmi.h>
-#include <linux/spmi.h>
 
 #define SPMI_CONTROLLER_NAME		"spmi_controller"
 
@@ -43,11 +42,6 @@
 #define SPMI_APB_SPMI_CMD_TYPE_OFFSET			24
 #define SPMI_APB_SPMI_CMD_LENGTH_OFFSET			20
 
-#define bswap_32(X)   \
-    ((((u32)(X) & 0xff000000) >> 24) | \
-     (((u32)(X) & 0x00ff0000) >> 8) | \
-     (((u32)(X) & 0x0000ff00) << 8) | \
-     (((u32)(X) & 0x000000ff) << 24))
 #define SPMI_APB_SPMI_CMD_SLAVEID_OFFSET		16
 #define SPMI_APB_SPMI_CMD_ADDR_OFFSET			0
 
@@ -179,14 +173,15 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 
 	writel(cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
 
-	rc = spmi_controller_wait_for_done(spmi_controller, spmi_controller->base, sid, addr);
+	rc = spmi_controller_wait_for_done(spmi_controller,
+					   spmi_controller->base, sid, addr);
 	if (rc)
 		goto done;
 
 	i = 0;
 	do {
 		data = readl(spmi_controller->base + chnl_ofst + SPMI_SLAVE_OFFSET * sid + SPMI_APB_SPMI_RDATA0_BASE_ADDR + i * SPMI_PER_DATAREG_BYTE);
-		data = bswap_32(data);
+		data = be32_to_cpu((__be32)data);
 		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
 			memcpy(buf, &data, sizeof(data));
 			buf += sizeof(data);
@@ -210,8 +205,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 {
 	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
 	unsigned long flags;
-	u32 cmd;
-	u32 data = 0;
+	u32 cmd, data;
 	int rc;
 	u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
 	u8 op_code, i;
@@ -246,7 +240,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 
 	i = 0;
 	do {
-		memset(&data, 0, sizeof(data));
+		data = 0;
 		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
 			memcpy(&data, buf, sizeof(data));
 			buf += sizeof(data);
@@ -255,8 +249,8 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 			buf += (bc % SPMI_PER_DATAREG_BYTE);
 		}
 
-		data = bswap_32(data);
-		writel(data, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_WDATA0_BASE_ADDR + SPMI_PER_DATAREG_BYTE * i);
+		writel((u32)cpu_to_be32(data),
+		       spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_WDATA0_BASE_ADDR + SPMI_PER_DATAREG_BYTE * i);
 		i++;
 	} while (bc > i * SPMI_PER_DATAREG_BYTE);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
