Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AC71E0754
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:56:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C8E686637;
	Mon, 25 May 2020 06:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 00ZBJwQpfMSD; Mon, 25 May 2020 06:56:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C290085F5B;
	Mon, 25 May 2020 06:56:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66D7A1BF95D
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 63F0687DAF
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zlgrfYicqbzf for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C36A587E27
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:56:16 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82F3E208B8;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590389776;
 bh=zMLXYnk/SvfDxCHuJ1q86m5n6TFTBQ/PNNksWiN30tQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bl/JPd1wU3ATIc0uGSkPjp7qj2Sr7PbNPQN3tn2dB0+GvRNdcUm7HSiPwbsPRrH1g
 n1gnWoBJT3DMhuNmUzZHRYy4IABwS7gqqnWcYNED9RK5YoGb0gkBkONMxS/cf5huMC
 RfgbdPPK6S1iFUm/3Z29VbP+PSv6kX09fZ2Skpwg=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jd71y-001d7O-Gr; Mon, 25 May 2020 08:56:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 10/11] media: atomisp: drop a cast for a const argument
Date: Mon, 25 May 2020 08:56:09 +0200
Message-Id: <43bea41e0deac2129591a3f35dfccb108b99babc.1590389536.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590389536.git.mchehab+huawei@kernel.org>
References: <cover.1590389536.git.mchehab+huawei@kernel.org>
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

Some arguments for tnf and ref settings are meant to be const, but
they're defined without such annotation. Due to that, there's an
ugly cast at sh_css_sp.c.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c     | 2 +-
 .../atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.h     | 2 +-
 .../atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c     | 2 +-
 .../atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h     | 2 +-
 .../media/atomisp/pci/runtime/debug/src/ia_css_debug.c        | 2 +-
 drivers/staging/media/atomisp/pci/sh_css_internal.h           | 4 ++--
 drivers/staging/media/atomisp/pci/sh_css_sp.c                 | 4 ++--
 7 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c
index c3f43fd327d4..38594741321c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.c
@@ -52,7 +52,7 @@ ia_css_ref_config(
 void
 ia_css_ref_configure(
     const struct ia_css_binary     *binary,
-    const struct ia_css_frame **ref_frames,
+    const struct ia_css_frame * const *ref_frames,
     const uint32_t dvs_frame_delay)
 {
 	struct ia_css_ref_configuration config;
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.h
index 4f48a8cfc604..55bd7aabf6aa 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/ref/ref_1.0/ia_css_ref.host.h
@@ -31,7 +31,7 @@ ia_css_ref_config(
 void
 ia_css_ref_configure(
     const struct ia_css_binary     *binary,
-    const struct ia_css_frame **ref_frames,
+    const struct ia_css_frame * const *ref_frames,
     const uint32_t dvs_frame_delay);
 
 void
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c
index ecbd3042951a..4f386186e2d6 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c
@@ -95,7 +95,7 @@ ia_css_tnr_config(
 void
 ia_css_tnr_configure(
     const struct ia_css_binary     *binary,
-    const struct ia_css_frame **frames)
+    const struct ia_css_frame * const *frames)
 {
 	struct ia_css_tnr_configuration config;
 	unsigned int i;
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h
index 3dbf962089d0..0e72b6fd50db 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h
@@ -47,7 +47,7 @@ ia_css_tnr_config(
 void
 ia_css_tnr_configure(
     const struct ia_css_binary     *binary,
-    const struct ia_css_frame **frames);
+    const struct ia_css_frame * const *frames);
 
 void
 ia_css_init_tnr_state(
diff --git a/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c b/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
index 4d7fb67007ed..0f0d9d88e1fe 100644
--- a/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
+++ b/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
@@ -2662,7 +2662,7 @@ void sh_css_dump_pipe_stripe_info(void)
 
 static void
 ia_css_debug_pipe_graph_dump_frame(
-    struct ia_css_frame *frame,
+    const struct ia_css_frame *frame,
     enum ia_css_pipe_id id,
     char const *blob_name,
     char const *frame_name,
diff --git a/drivers/staging/media/atomisp/pci/sh_css_internal.h b/drivers/staging/media/atomisp/pci/sh_css_internal.h
index 5f271d9ae485..731611971420 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_internal.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_internal.h
@@ -279,9 +279,9 @@ struct ia_css_isp_parameter_set_info {
    a binary. It depends on the binary which ones are used. */
 struct sh_css_binary_args {
 	struct ia_css_frame *in_frame;	     /* input frame */
-	struct ia_css_frame
+	const struct ia_css_frame
 		*delay_frames[MAX_NUM_VIDEO_DELAY_FRAMES];   /* reference input frame */
-	struct ia_css_frame *tnr_frames[NUM_TNR_FRAMES];   /* tnr frames */
+	const struct ia_css_frame *tnr_frames[NUM_TNR_FRAMES];   /* tnr frames */
 	struct ia_css_frame
 		*out_frame[IA_CSS_BINARY_MAX_OUTPUT_PORTS];      /* output frame */
 	struct ia_css_frame *out_vf_frame;   /* viewfinder output frame */
diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
index e574396ad0f4..5970a660456c 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
@@ -838,8 +838,8 @@ configure_isp_from_args(
 	ia_css_dvs_configure(binary, &args->out_frame[0]->info);
 	ia_css_output_configure(binary, &args->out_frame[0]->info);
 	ia_css_raw_configure(pipeline, binary, &args->in_frame->info, &binary->in_frame_info, two_ppc, deinterleaved);
-	ia_css_ref_configure(binary, (const struct ia_css_frame **)args->delay_frames, pipeline->dvs_frame_delay);
-	ia_css_tnr_configure(binary, (const struct ia_css_frame **)args->tnr_frames);
+	ia_css_ref_configure(binary, args->delay_frames, pipeline->dvs_frame_delay);
+	ia_css_tnr_configure(binary, args->tnr_frames);
 	ia_css_bayer_io_config(binary, args);
 	return IA_CSS_SUCCESS;
 }
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
