Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D111E8E5A
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 08:56:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F14889414;
	Sat, 30 May 2020 06:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hAh36Hw+eBcD; Sat, 30 May 2020 06:56:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0EE91893C1;
	Sat, 30 May 2020 06:56:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F258D1BF2C8
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EEDB5893B9
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8sJ1gdit8TQ0 for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 06:56:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C1DF8893E9
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 06:56:03 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F235216FD;
 Sat, 30 May 2020 06:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590821763;
 bh=jGa0K4jAfjvu7CM/n6ae+n+jjVMsWoaupSnckrLq8m8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cskN+cgyTE2pBgLkIrFfoBzRknUbbFnF1IdcmmfC+tz00sIL63URk7imagwpe4qKg
 x9ZKa8kL9Jw85wIPMiS6+oJnMLSoNR+nQEjz3T9+OjAt53gwZfOgHj35xDrTJ2tJ/M
 SHnoV8aeJ9YwiB8NloB3iTpE0FbQvu5s2R5HT/6k=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jevPV-001hpf-CL; Sat, 30 May 2020 08:56:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 20/41] media: atomisp: avoid OOPS due to non-existing
 ref_frames
Date: Sat, 30 May 2020 08:55:37 +0200
Message-Id: <9b16e673413e2793018f815cb5a77444445048e5.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
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

stage->args->delay_frames array could point to NULL frames.

What's weird is that we didn't notice this behavior with the
Intel Aero Yocto code.

Handle it, while adding a notice at the code, as this could
be due to some broken pipeline setup.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c   | 13 +++++++++----
 drivers/staging/media/atomisp/pci/sh_css_sp.c       | 11 +++++++++++
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c
index 38594741321c..cbe3836419a2 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c
@@ -29,10 +29,15 @@ ia_css_ref_config(
 {
 	unsigned int elems_a = ISP_VEC_NELEMS, i;
 
-	(void)size;
-	ia_css_dma_configure_from_info(&to->port_b, &from->ref_frames[0]->info);
-	to->width_a_over_b = elems_a / to->port_b.elems;
-	to->dvs_frame_delay = from->dvs_frame_delay;
+	if (from->ref_frames[0]) {
+		ia_css_dma_configure_from_info(&to->port_b, &from->ref_frames[0]->info);
+		to->width_a_over_b = elems_a / to->port_b.elems;
+		to->dvs_frame_delay = from->dvs_frame_delay;
+	} else {
+		to->width_a_over_b = 1;
+		to->dvs_frame_delay = 0;
+		to->port_b.elems = elems_a;
+	}
 	for (i = 0; i < MAX_NUM_VIDEO_DELAY_FRAMES; i++) {
 		if (from->ref_frames[i]) {
 			to->ref_frame_addr_y[i] = from->ref_frames[i]->data +
diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
index 1ed060d6d855..db543c3fec51 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
@@ -839,6 +839,17 @@ configure_isp_from_args(
 	ia_css_dvs_configure(binary, &args->out_frame[0]->info);
 	ia_css_output_configure(binary, &args->out_frame[0]->info);
 	ia_css_raw_configure(pipeline, binary, &args->in_frame->info, &binary->in_frame_info, two_ppc, deinterleaved);
+
+	/*
+	 * FIXME: args->delay_frames can be NULL here
+	 *
+	 * Somehow, the driver at the Intel Atom Yocto tree doesn't seem to
+	 * suffer from the same issue.
+	 *
+	 * Anyway, the function below should now handle a NULL delay_frames
+	 * without crashing, but the pipeline should likely be built without
+	 * adding it at the first place (or there are a hidden bug somewhere)
+	 */
 	ia_css_ref_configure(binary, args->delay_frames, pipeline->dvs_frame_delay);
 	ia_css_tnr_configure(binary, args->tnr_frames);
 	ia_css_bayer_io_config(binary, args);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
