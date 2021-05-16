Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95A2381E3D
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:54:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 503FB401EA;
	Sun, 16 May 2021 10:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b_CfuLLLoI0z; Sun, 16 May 2021 10:54:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BB1640133;
	Sun, 16 May 2021 10:54:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FF001BF332
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72E3860794
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GO2bZjN1e6zI for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A32E60763
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D41B361185;
 Sun, 16 May 2021 10:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=bQ3MnldJSx8+sco79kPklGNg7LH+HvdUVOXzNu/8s/I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=q28opKS/7NRZM/NCZVZkBIcKBjPAMhx4qof2EOdhzzDcPx+zuGFs0QPXdMIu0MNNV
 WHLbPQOvsLGkCXVbWA2S6PysQLbHS4wcRmL6oaAbm0ox4B/hWyh4EqatcKGHwCc3lu
 NO5TmD4+HZJRfj/KH9hdvVsoiWBn0iPf82LowooqYBhipK5L9j4hFCcHazngjdAIHK
 ApCvE9DDOiKBDTyO1JX3ug3YKw4O0DOz4eATPUjxEjrfNos1vXUULUQfZvxDtyQoqv
 OeaUOS6jVgnaf0PHwjYZfq8wNqspfzaslZjcyjA9QXmmSStEh7o1GnrT94GAV5qJZC
 CWnFmJI7GUUbg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP8-003s84-NE; Sun, 16 May 2021 12:53:50 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/17] staging: nuc-wmi: detect WMI API detection
Date: Sun, 16 May 2021 12:53:30 +0200
Message-Id: <602bd7c90e1e569f52db10bbe451af0436300b78.1621161037.git.mchehab+huawei@kernel.org>
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

There are currently 3 known API releases:
            - https://www.intel.com/content/www/us/en/support/articles/000023426/intel-nuc/intel-nuc-kits.html
            - https://raw.githubusercontent.com/nomego/intel_nuc_led/master/specs/INTEL_WMI_LED_0.64.pdf
            - https://www.intel.com/content/dam/support/us/en/documents/intel-nuc/WMI-Spec-Intel-NUC-NUC10ixFNx.pdf

Add a logic to detect between them, preventing the driver
to work with an unsupported version.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/nuc-led/nuc-wmi.c | 30 +++++++++++++++++++++++++++---
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/nuc-led/nuc-wmi.c b/drivers/staging/nuc-led/nuc-wmi.c
index 15d956ad8556..b75ddd47e443 100644
--- a/drivers/staging/nuc-led/nuc-wmi.c
+++ b/drivers/staging/nuc-led/nuc-wmi.c
@@ -26,6 +26,13 @@
 #define NUM_INPUT_ARGS		4
 #define NUM_OUTPUT_ARGS		3
 
+enum led_api_rev {
+	LED_API_UNKNOWN,
+	LED_API_NUC6,
+	LED_API_REV_0_64,
+	LED_API_REV_1_0,
+};
+
 enum led_cmds {
 	LED_QUERY			= 0x03,
 	LED_NEW_GET_STATUS		= 0x04,
@@ -33,6 +40,7 @@ enum led_cmds {
 	LED_SET_VALUE			= 0x06,
 	LED_NOTIFICATION		= 0x07,
 	LED_SWITCH_TYPE			= 0x08,
+	LED_VERSION_CONTROL             = 0x09,
 };
 
 enum led_query_subcmd {
@@ -195,7 +203,7 @@ static int nuc_wmi_query_leds(struct device *dev)
 	struct nuc_wmi *priv = dev_get_drvdata(dev);
 	u8 cmd, input[NUM_INPUT_ARGS] = { 0 };
 	u8 output[NUM_OUTPUT_ARGS];
-	int i, id, ret;
+	int i, id, ret, ver = LED_API_UNKNOWN;
 	u8 leds;
 
 	/*
@@ -209,12 +217,28 @@ static int nuc_wmi_query_leds(struct device *dev)
 	cmd = LED_QUERY;
 	input[0] = LED_QUERY_LIST_ALL;
 	ret = nuc_nmi_cmd(dev, cmd, input, output);
-	if (ret) {
+	if (ret == -ENOENT) {
+		ver = LED_API_NUC6;
+	} else if (ret) {
 		dev_warn(dev, "error %d while listing all LEDs\n", ret);
 		return ret;
+	} else {
+		leds = output[0];
 	}
 
-	leds = output[0];
+	if (ver != LED_API_NUC6) {
+		ret = nuc_nmi_cmd(dev, LED_VERSION_CONTROL, input, output);
+		ver = output[0] | output[1] << 16;
+		if (!ver)
+			ver = LED_API_REV_0_64;
+		else if (ver == 0x0126)
+			ver = LED_API_REV_1_0;
+	}
+
+	/* Currently, only API Revision 0.64 is supported */
+	if (ver != LED_API_REV_0_64)
+		return -ENODEV;
+
 	if (!leds) {
 		dev_warn(dev, "No LEDs found\n");
 		return -ENODEV;
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
