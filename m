Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2F5242C6E
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4947486A78;
	Wed, 12 Aug 2020 15:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRpMGBlW5JbR; Wed, 12 Aug 2020 15:57:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 719DF86A73;
	Wed, 12 Aug 2020 15:57:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DF7B1BF2F5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6A27987E5C
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hutelH0wOPtW for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:56:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E591187CCB
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:56:59 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65381208B3;
 Wed, 12 Aug 2020 15:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247819;
 bh=YA6rDvPkB9plySCOtoMtymWrTx+8xxcc3Q+JZYeOX3A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E8KJQ7FQAUzQjeNj8JKJtHOfkEmpbYb2Vu6s2gZEfM2aB5XYM53TpRzvoOQpY94+C
 IvQ3/qzcmnF/ohMinB0eZPlLTVYpfSMamHB+SYMxNryVnJr9+PN99wQgfhRI30fB2r
 jQUzqXrSjKwY/YD6+zRcK7qaRNFx851BfDAelAkY=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7Z-005t5j-HC; Wed, 12 Aug 2020 17:56:57 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 05/44] staging: spmi: hisi-spmi-controller: adjust whitespaces
 at defines
Date: Wed, 12 Aug 2020 17:56:15 +0200
Message-Id: <0df3bc58fb2e35b32fc317eab0e26cebe87a52ea.1597247164.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597247164.git.mchehab+huawei@kernel.org>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some defines are not aligned with tab=8, which is the
style defined on Linux. Adjust them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hisi-spmi-controller.c   | 26 ++++++++++---------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index 99cf757d76fe..7fae267a6062 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -18,10 +18,10 @@
 /*
  * SPMI register addr
  */
-#define SPMI_CHANNEL_OFFSET					0x0300
-#define SPMI_SLAVE_OFFSET						0x20
+#define SPMI_CHANNEL_OFFSET				0x0300
+#define SPMI_SLAVE_OFFSET				0x20
 
-#define SPMI_APB_SPMI_CMD_BASE_ADDR				0x0100
+#define SPMI_APB_SPMI_CMD_BASE_ADDR			0x0100
 
 #define SPMI_APB_SPMI_WDATA0_BASE_ADDR			0x0104
 #define SPMI_APB_SPMI_WDATA1_BASE_ADDR			0x0108
@@ -35,21 +35,21 @@
 #define SPMI_APB_SPMI_RDATA2_BASE_ADDR			0x020c
 #define SPMI_APB_SPMI_RDATA3_BASE_ADDR			0x0210
 
-#define SPMI_PER_DATAREG_BYTE					4
+#define SPMI_PER_DATAREG_BYTE				4
 /*
  * SPMI cmd register
  */
-#define SPMI_APB_SPMI_CMD_EN						BIT(31)
+#define SPMI_APB_SPMI_CMD_EN				BIT(31)
 #define SPMI_APB_SPMI_CMD_TYPE_OFFSET			24
 #define SPMI_APB_SPMI_CMD_LENGTH_OFFSET			20
-#define SPMI_APB_SPMI_CMD_SLAVEID_OFFSET			16
-#define SPMI_APB_SPMI_CMD_ADDR_OFFSET				0
 
 #define bswap_32(X)   \
     ((((u32)(X) & 0xff000000) >> 24) | \
      (((u32)(X) & 0x00ff0000) >> 8) | \
      (((u32)(X) & 0x0000ff00) << 8) | \
      (((u32)(X) & 0x000000ff) << 24))
+#define SPMI_APB_SPMI_CMD_SLAVEID_OFFSET		16
+#define SPMI_APB_SPMI_CMD_ADDR_OFFSET			0
 
 /* Command Opcodes */
 
@@ -70,15 +70,15 @@ enum spmi_controller_cmd_op_code {
 /*
  * SPMI status register
  */
-#define SPMI_APB_TRANS_DONE						BIT(0)
-#define SPMI_APB_TRANS_FAIL						BIT(2)
+#define SPMI_APB_TRANS_DONE			BIT(0)
+#define SPMI_APB_TRANS_FAIL			BIT(2)
 
 /* Command register fields */
 #define SPMI_CONTROLLER_CMD_MAX_BYTE_COUNT	16
 
 /* Maximum number of support PMIC peripherals */
 #define SPMI_CONTROLLER_TIMEOUT_US		1000
-#define SPMI_CONTROLLER_MAX_TRANS_BYTES	(16)
+#define SPMI_CONTROLLER_MAX_TRANS_BYTES		16
 
 /*
  * @base base address of the PMIC Arbiter core registers.
@@ -114,8 +114,10 @@ static int spmi_controller_wait_for_done(struct spmi_controller_dev *ctrl_dev,
 {
 	u32 status = 0;
 	u32 timeout = SPMI_CONTROLLER_TIMEOUT_US;
-	u32 offset = SPMI_APB_SPMI_STATUS_BASE_ADDR + SPMI_CHANNEL_OFFSET * ctrl_dev->channel
-		+ SPMI_SLAVE_OFFSET * sid;
+	u32 offset;
+
+	offset  = SPMI_APB_SPMI_STATUS_BASE_ADDR;
+	offset += SPMI_CHANNEL_OFFSET * ctrl_dev->channel + SPMI_SLAVE_OFFSET * sid;
 
 	while (timeout--) {
 		status = readl(base + offset);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
