Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AEB27FE37
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Oct 2020 13:17:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE8C786A6A;
	Thu,  1 Oct 2020 11:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Kx6hAp77cMa; Thu,  1 Oct 2020 11:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8811286A37;
	Thu,  1 Oct 2020 11:17:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95E451BF3C5
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 11:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8DDF0204A9
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 11:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-PL2FOblaMB for <devel@linuxdriverproject.org>;
 Thu,  1 Oct 2020 11:17:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C16702048F
 for <devel@driverdev.osuosl.org>; Thu,  1 Oct 2020 11:17:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D2D0208B6;
 Thu,  1 Oct 2020 11:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601551037;
 bh=o3EbE74hz2T8t1GJ/NdLtSBGVB6g4WdhQQVmKWNfpZY=;
 h=From:To:Cc:Subject:Date:From;
 b=V5xs9xV77aOCb/iYqYip/P17aEWk/SN/EmNWCdAQiLD7aon559p1jIPlWNgA/SNnn
 0nhQzzDe7A0ogPn269L8XSWlu+TrhNV7pjN9TUhhPTpTKpxaI9VYmE1F0wpl41YDqv
 1ZNXk/07+hz86huloLxUApOKjogj6AWbZcYp730A=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kNwaI-006Odu-9I; Thu, 01 Oct 2020 13:17:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v3] media: atomisp: fixes build breakage for ISP2400 due to a
 cleanup
Date: Thu,  1 Oct 2020 13:17:13 +0200
Message-Id: <490e5002c3fea266524c31e1a94853dca9c3286c.1601551027.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A temporary var needed for building with ISP2400 was removed
by accident on a cleanup patch.

Fix the breakage.

Fixes: 852a53a02cf0 ("media: atomisp: get rid of unused vars")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/sh_css.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index e8c5caf3dfe6..ddee04c8248d 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -1365,7 +1365,6 @@ start_binary(struct ia_css_pipe *pipe,
 {
 	assert(pipe);
 	/* Acceleration uses firmware, the binary thus can be NULL */
-	/* assert(binary != NULL); */
 
 	if (binary)
 		sh_css_metrics_start_binary(&binary->metrics);
@@ -1381,10 +1380,10 @@ start_binary(struct ia_css_pipe *pipe,
 #endif
 
 #if !defined(ISP2401)
-	if (stream->reconfigure_css_rx) {
+	if (pipe->stream->reconfigure_css_rx) {
 		ia_css_isys_rx_configure(&pipe->stream->csi_rx_config,
 					 pipe->stream->config.mode);
-		stream->reconfigure_css_rx = false;
+		pipe->stream->reconfigure_css_rx = false;
 	}
 #endif
 }
@@ -2820,6 +2819,8 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
 	bool need_isp_copy_binary = false;
 #ifdef ISP2401
 	bool sensor = false;
+#else
+	bool continuous;
 #endif
 	/* preview only have 1 output pin now */
 	struct ia_css_frame_info *pipe_out_info = &pipe->output_info[0];
@@ -2833,6 +2834,8 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
 	online = pipe->stream->config.online;
 #ifdef ISP2401
 	sensor = pipe->stream->config.mode == IA_CSS_INPUT_MODE_SENSOR;
+#else
+	continuous = pipe->stream->config.continuous;
 #endif
 
 	if (mycs->preview_binary.info)
@@ -5987,6 +5990,8 @@ static int load_primary_binaries(
 	bool need_ldc = false;
 #ifdef ISP2401
 	bool sensor = false;
+#else
+	bool memory, continuous;
 #endif
 	struct ia_css_frame_info prim_in_info,
 		       prim_out_info,
@@ -6009,6 +6014,9 @@ static int load_primary_binaries(
 	online = pipe->stream->config.online;
 #ifdef ISP2401
 	sensor = (pipe->stream->config.mode == IA_CSS_INPUT_MODE_SENSOR);
+#else
+	memory = pipe->stream->config.mode == IA_CSS_INPUT_MODE_MEMORY;
+	continuous = pipe->stream->config.continuous;
 #endif
 
 	mycs = &pipe->pipe_settings.capture;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
