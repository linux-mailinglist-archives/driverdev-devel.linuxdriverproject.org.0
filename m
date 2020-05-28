Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A33061E574F
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 08:14:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2092E88ADA;
	Thu, 28 May 2020 06:14:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9kvtkkqG0pFr; Thu, 28 May 2020 06:14:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 92AFC888A4;
	Thu, 28 May 2020 06:14:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1EAC31BF27F
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C85086F13
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cNYSAtACmAie for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 06:14:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A12E686F33
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 06:14:26 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 637BE21789;
 Thu, 28 May 2020 06:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590646466;
 bh=FFacg2LI3B8uvGksofjyggRrq/IHXFJRTIjx2hOCKbk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SPtksYLIxkSgYa61xmec6R6qmo8mKlZLvBTBAv4/HgnCHCZ2p7YfizKGuTpHuDMKd
 uAyVYBr5992J/wYNsokbG1ZT9QnD8Rfp/omhjqTVZOZdYoKgmMbhhvYxHP+ftNNs16
 /M4Hg2zaljErYIR7btNumiyuMgTTxO5eTidlrsj0=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jeBo8-000VIJ-BS; Thu, 28 May 2020 08:14:24 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 17/20] media: atomisp: add debug functions for received events
Date: Thu, 28 May 2020 08:14:17 +0200
Message-Id: <6c48944c0e456c58f0bf42b6ec0a7c360719e6b8.1590646166.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646166.git.mchehab+huawei@kernel.org>
References: <cover.1590646166.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

For debugging purposes, it helps to know what event
was actually received.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_compat_css20.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index 5718010a0bf6..f7c3fdd5f670 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -4523,6 +4523,7 @@ int atomisp_css_isr_thread(struct atomisp_device *isp,
 		atomisp_css_temp_pipe_to_pipe_id(asd, &current_event);
 		switch (current_event.event.type) {
 		case IA_CSS_EVENT_TYPE_OUTPUT_FRAME_DONE:
+			dev_dbg(isp->dev, "event: Output frame done");
 			frame_done_found[asd->index] = true;
 			atomisp_buf_done(asd, 0, IA_CSS_BUFFER_TYPE_OUTPUT_FRAME,
 					 current_event.pipe, true, stream_id);
@@ -4531,6 +4532,7 @@ int atomisp_css_isr_thread(struct atomisp_device *isp,
 
 			break;
 		case IA_CSS_EVENT_TYPE_SECOND_OUTPUT_FRAME_DONE:
+			dev_dbg(isp->dev, "event: Second output frame done");
 			frame_done_found[asd->index] = true;
 			atomisp_buf_done(asd, 0, IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME,
 					 current_event.pipe, true, stream_id);
@@ -4539,18 +4541,21 @@ int atomisp_css_isr_thread(struct atomisp_device *isp,
 
 			break;
 		case IA_CSS_EVENT_TYPE_3A_STATISTICS_DONE:
+			dev_dbg(isp->dev, "event: 3A stats frame done");
 			atomisp_buf_done(asd, 0,
 					 IA_CSS_BUFFER_TYPE_3A_STATISTICS,
 					 current_event.pipe,
 					 false, stream_id);
 			break;
 		case IA_CSS_EVENT_TYPE_METADATA_DONE:
+			dev_dbg(isp->dev, "event: metadata frame done");
 			atomisp_buf_done(asd, 0,
 					 IA_CSS_BUFFER_TYPE_METADATA,
 					 current_event.pipe,
 					 false, stream_id);
 			break;
 		case IA_CSS_EVENT_TYPE_VF_OUTPUT_FRAME_DONE:
+			dev_dbg(isp->dev, "event: VF output frame done");
 			atomisp_buf_done(asd, 0,
 					 IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME,
 					 current_event.pipe, true, stream_id);
@@ -4559,6 +4564,7 @@ int atomisp_css_isr_thread(struct atomisp_device *isp,
 
 			break;
 		case IA_CSS_EVENT_TYPE_SECOND_VF_OUTPUT_FRAME_DONE:
+			dev_dbg(isp->dev, "event: second VF output frame done");
 			atomisp_buf_done(asd, 0,
 					 IA_CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME,
 					 current_event.pipe, true, stream_id);
@@ -4566,15 +4572,18 @@ int atomisp_css_isr_thread(struct atomisp_device *isp,
 
 			break;
 		case IA_CSS_EVENT_TYPE_DIS_STATISTICS_DONE:
+			dev_dbg(isp->dev, "event: dis stats frame done");
 			atomisp_buf_done(asd, 0,
 					 IA_CSS_BUFFER_TYPE_DIS_STATISTICS,
 					 current_event.pipe,
 					 false, stream_id);
 			break;
 		case IA_CSS_EVENT_TYPE_PIPELINE_DONE:
+			dev_dbg(isp->dev, "event: pipeline done");
 			css_pipe_done[asd->index] = true;
 			break;
 		case IA_CSS_EVENT_TYPE_ACC_STAGE_COMPLETE:
+			dev_dbg(isp->dev, "event: acc stage done");
 			atomisp_acc_done(asd, current_event.event.fw_handle);
 			break;
 		default:
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
