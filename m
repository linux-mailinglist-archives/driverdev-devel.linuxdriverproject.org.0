Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEB925B0D4
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:11:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1254586A39;
	Wed,  2 Sep 2020 16:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qHgSV3nkVfaK; Wed,  2 Sep 2020 16:11:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E327869F3;
	Wed,  2 Sep 2020 16:11:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10ACE1BF3D4
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0D00A857C2
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LjrFjzfwQbQI for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D833869B6
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6881221ED;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599063047;
 bh=GAlwvOTWagFOHTqnAPoOMGOMg/mmP3hK//YYhZMJvZw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1m9XVSPHBFmbcM4uqnEyjOVSrsYNS0XaIkpqZzFcRUaJ4sETi7oQ3ZzJR98Go51nW
 3lJP1cPWenHTWeslBaBUDc0tgUReoFwQZ1rauzO+TAp0tlP3X/iLtDS2pxo0Y/ekxi
 9uYfWF8IBHjTrfTvwz876ZzGN6adE9Yt2kPLLP4U=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kDVLQ-000tBJ-Pz; Wed, 02 Sep 2020 18:10:44 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 35/38] media: atomisp: fix some bad indents
Date: Wed,  2 Sep 2020 18:10:38 +0200
Message-Id: <efb689f6286a99a9959fe4c8fdb5cdff504a608d.1599062230.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@chromium.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As smatch reports, there are several bad indents:

    drivers/staging/media/atomisp/pci/hmm/hmm.c:271 hmm_alloc() warn: inconsistent indenting
    drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c:390 ia_css_bufq_enqueue_psys_event() warn: inconsistent indenting
    drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c:2132 ia_css_debug_dump_isys_state() warn: inconsistent indenting
    drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c:246 sh_css_binary_get_sc_requirements() warn: inconsistent indenting
    drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c:565 ia_css_binary_get_shading_info_type_1() warn: inconsistent indenting
    drivers/staging/media/atomisp/pci/sh_css.c:5109 sh_css_pipes_stop() warn: inconsistent indenting
    drivers/staging/media/atomisp/pci/sh_css.c:8791 ia_css_pipe_create() warn: inconsistent indenting

Some of them are due to ifdefs. Get rid of them by either getting
a common code that would work for both ISP2400 and ISP2401 or
by creating separate functions, one for each ISP version.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/hmm/hmm.c   |   6 +-
 .../atomisp/pci/runtime/binary/src/binary.c   | 917 +++++++++---------
 .../media/atomisp/pci/runtime/bufq/src/bufq.c |   3 +-
 .../pci/runtime/debug/src/ia_css_debug.c      |   4 +-
 drivers/staging/media/atomisp/pci/sh_css.c    |  77 +-
 5 files changed, 489 insertions(+), 518 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm.c b/drivers/staging/media/atomisp/pci/hmm/hmm.c
index 2bd39b4939f1..e0eaff0f8a22 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm.c
@@ -268,9 +268,9 @@ ia_css_ptr hmm_alloc(size_t bytes, enum hmm_bo_type type,
 	if (attrs & ATOMISP_MAP_FLAG_CLEARED)
 		hmm_set(bo->start, 0, bytes);
 
-	    dev_dbg(atomisp_dev,
-	    "%s: pages: 0x%08x (%ld bytes), type: %d from highmem %d, user ptr %p, cached %d\n",
-	    __func__, bo->start, bytes, type, from_highmem, userptr, cached);
+	dev_dbg(atomisp_dev,
+		"%s: pages: 0x%08x (%ld bytes), type: %d from highmem %d, user ptr %p, cached %d\n",
+		__func__, bo->start, bytes, type, from_highmem, userptr, cached);
 
 	return bo->start;
 
diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
index a77c2072db13..060d38749570 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
@@ -135,52 +135,30 @@ struct sh_css_binary_sc_requirements {
 								at shading correction. */
 };
 
-/* Get the requirements for the shading correction. */
+/* ISP2400: Get the requirements for the shading correction. */
 static int
-#ifndef ISP2401
 ia_css_binary_compute_shading_table_bayer_origin(
     const struct ia_css_binary *binary,				/* [in] */
     unsigned int required_bds_factor,				/* [in] */
     const struct ia_css_stream_config *stream_config,		/* [in] */
     struct sh_css_shading_table_bayer_origin_compute_results *res)	/* [out] */
-#else
-sh_css_binary_get_sc_requirements(
-    const struct ia_css_binary *binary,			/* [in] */
-    unsigned int required_bds_factor,			/* [in] */
-    const struct ia_css_stream_config *stream_config,	/* [in] */
-    struct sh_css_binary_sc_requirements *scr)		/* [out] */
-#endif
 {
 	int err;
 
-#ifndef ISP2401
 	/* Numerator and denominator of the fixed bayer downscaling factor.
 	(numerator >= denominator) */
-#else
-	/* Numerator and denominator of the fixed bayer downscaling factor. (numerator >= denominator) */
-#endif
 	unsigned int bds_num, bds_den;
 
-#ifndef ISP2401
 	/* Horizontal/Vertical ratio of bayer scaling
 	between input area and output area. */
 	unsigned int bs_hor_ratio_in;
 	unsigned int bs_hor_ratio_out;
 	unsigned int bs_ver_ratio_in;
 	unsigned int bs_ver_ratio_out;
-#else
-	/* Horizontal/Vertical ratio of bayer scaling between input area and output area. */
-	unsigned int bs_hor_ratio_in, bs_hor_ratio_out, bs_ver_ratio_in, bs_ver_ratio_out;
-#endif
 
 	/* Left padding set by InputFormatter. */
-#ifndef ISP2401
 	unsigned int left_padding_bqs;			/* in bqs */
-#else
-	unsigned int left_padding_bqs;
-#endif
 
-#ifndef ISP2401
 	/* Flag for the NEED_BDS_FACTOR_2_00 macro defined in isp kernels. */
 	unsigned int need_bds_factor_2_00;
 
@@ -201,7 +179,106 @@ sh_css_binary_get_sc_requirements(
 	err = sh_css_bds_factor_get_numerator_denominator
 	(required_bds_factor, &bds_num, &bds_den);
 	if (err)
-#else
+		return err;
+
+	/* Set the horizontal/vertical ratio of bayer scaling
+	between input area and output area. */
+	bs_hor_ratio_in  = bds_num;
+	bs_hor_ratio_out = bds_den;
+	bs_ver_ratio_in  = bds_num;
+	bs_ver_ratio_out = bds_den;
+
+	/* Set the left padding set by InputFormatter. (ifmtr.c) */
+	if (stream_config->left_padding == -1)
+		left_padding_bqs = _ISP_BQS(binary->left_padding);
+	else
+		left_padding_bqs = (unsigned int)((int)ISP_VEC_NELEMS
+				   - _ISP_BQS(stream_config->left_padding));
+
+	/* Set the left padding adjusted inside the isp.
+	When bds_factor 2.00 is needed, some padding is added to left_padding
+	inside the isp, before bayer downscaling. (raw.isp.c)
+	(Hopefully, left_crop/left_padding/top_crop should be defined in css
+	appropriately, depending on bds_factor.)
+	*/
+	need_bds_factor_2_00 = ((binary->info->sp.bds.supported_bds_factors &
+				(PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_2_00) |
+				 PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_2_50) |
+				 PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_3_00) |
+				 PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_4_00) |
+				 PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_4_50) |
+				 PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_5_00) |
+				 PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_6_00) |
+				 PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_8_00))) != 0);
+
+	if (need_bds_factor_2_00 && binary->info->sp.pipeline.left_cropping > 0)
+		left_padding_adjusted_bqs = left_padding_bqs + ISP_VEC_NELEMS;
+	else
+		left_padding_adjusted_bqs = left_padding_bqs;
+
+	/* Currently, the bad pixel caused by filters before bayer scaling
+	is NOT considered, because the bad pixel is subtle.
+	When some large filter is used in the future,
+	we need to consider the bad pixel.
+
+	Currently, when bds_factor isn't 1.00, 3x3 anti-alias filter is applied
+	to each color plane(Gr/R/B/Gb) before bayer downscaling.
+	This filter moves each color plane to right/bottom directions
+	by 1 pixel at the most, depending on downscaling factor.
+	*/
+	bad_bqs_on_left_before_bs = 0;
+	bad_bqs_on_top_before_bs = 0;
+
+	/* Currently, the bad pixel caused by filters after bayer scaling
+	is NOT considered, because the bad pixel is subtle.
+	When some large filter is used in the future,
+	we need to consider the bad pixel.
+
+	Currently, when DPC&BNR is processed between bayer scaling and
+	shading correction, DPC&BNR moves each color plane to
+	right/bottom directions by 1 pixel.
+	*/
+	bad_bqs_on_left_after_bs = 0;
+	bad_bqs_on_top_after_bs = 0;
+
+	/* Calculate the origin of bayer (real sensor data area)
+	located on the shading table during the shading correction. */
+	res->sc_bayer_origin_x_bqs_on_shading_table =
+		((left_padding_adjusted_bqs + bad_bqs_on_left_before_bs)
+		* bs_hor_ratio_out + bs_hor_ratio_in / 2) / bs_hor_ratio_in
+		+ bad_bqs_on_left_after_bs;
+	/* "+ bs_hor_ratio_in/2": rounding for division by bs_hor_ratio_in */
+	res->sc_bayer_origin_y_bqs_on_shading_table =
+		(bad_bqs_on_top_before_bs * bs_ver_ratio_out + bs_ver_ratio_in / 2) / bs_ver_ratio_in
+		+ bad_bqs_on_top_after_bs;
+	/* "+ bs_ver_ratio_in/2": rounding for division by bs_ver_ratio_in */
+
+	res->bayer_scale_hor_ratio_in  = (uint32_t)bs_hor_ratio_in;
+	res->bayer_scale_hor_ratio_out = (uint32_t)bs_hor_ratio_out;
+	res->bayer_scale_ver_ratio_in  = (uint32_t)bs_ver_ratio_in;
+	res->bayer_scale_ver_ratio_out = (uint32_t)bs_ver_ratio_out;
+
+	return err;
+}
+
+/* ISP2401: Get the requirements for the shading correction. */
+static int
+sh_css_binary_get_sc_requirements(const struct ia_css_binary *binary, /* [in] */
+				  unsigned int required_bds_factor,   /* [in] */
+				  const struct ia_css_stream_config *stream_config, /* [in] */
+				  struct sh_css_binary_sc_requirements *scr) /* [out] */
+{
+	int err;
+
+	/* Numerator and denominator of the fixed bayer downscaling factor. (numerator >= denominator) */
+	unsigned int bds_num, bds_den;
+
+	/* Horizontal/Vertical ratio of bayer scaling between input area and output area. */
+	unsigned int bs_hor_ratio_in, bs_hor_ratio_out, bs_ver_ratio_in, bs_ver_ratio_out;
+
+	/* Left padding set by InputFormatter. */
+	unsigned int left_padding_bqs;
+
 	/* Flags corresponding to NEED_BDS_FACTOR_2_00/NEED_BDS_FACTOR_1_50/NEED_BDS_FACTOR_1_25 macros
 	 * defined in isp kernels. */
 	unsigned int need_bds_factor_2_00, need_bds_factor_1_50, need_bds_factor_1_25;
@@ -225,318 +302,201 @@ sh_css_binary_get_sc_requirements(
 	unsigned int sensor_data_origin_x_bqs_on_internal;
 	unsigned int sensor_data_origin_y_bqs_on_internal;
 
-	IA_CSS_ENTER_PRIVATE("binary=%p, required_bds_factor=%d, stream_config=%p",
-			     binary, required_bds_factor, stream_config);
-
-	/* Get the numerator and denominator of the required bayer downscaling factor. */
-	err = sh_css_bds_factor_get_numerator_denominator(required_bds_factor, &bds_num, &bds_den);
-	if (err)
-	{
-		IA_CSS_LEAVE_ERR_PRIVATE(err);
-#endif
-		return err;
-#ifdef ISP2401
-}
-#endif
-
-#ifndef ISP2401
-/* Set the horizontal/vertical ratio of bayer scaling
-between input area and output area. */
-#else
-IA_CSS_LOG("bds_num=%d, bds_den=%d", bds_num, bds_den);
-
-/* Set the horizontal/vertical ratio of bayer scaling between input area and output area. */
-#endif
-bs_hor_ratio_in  = bds_num;
-bs_hor_ratio_out = bds_den;
-bs_ver_ratio_in  = bds_num;
-bs_ver_ratio_out = bds_den;
-
-#ifndef ISP2401
-/* Set the left padding set by InputFormatter. (ifmtr.c) */
-#else
-/* Set the left padding set by InputFormatter. (ia_css_ifmtr_configure() in ifmtr.c) */
-#endif
-if (stream_config->left_padding == -1)
-	left_padding_bqs = _ISP_BQS(binary->left_padding);
-else
-#ifndef ISP2401
-	left_padding_bqs = (unsigned int)((int)ISP_VEC_NELEMS
-					  - _ISP_BQS(stream_config->left_padding));
-#else
-	left_padding_bqs = (unsigned int)((int)ISP_VEC_NELEMS - _ISP_BQS(stream_config->left_padding));
-#endif
-
-#ifndef ISP2401
-/* Set the left padding adjusted inside the isp.
-When bds_factor 2.00 is needed, some padding is added to left_padding
-inside the isp, before bayer downscaling. (raw.isp.c)
-(Hopefully, left_crop/left_padding/top_crop should be defined in css
-appropriately, depending on bds_factor.)
-*/
-#else
-IA_CSS_LOG("stream.left_padding=%d, binary.left_padding=%d, left_padding_bqs=%d",
-	   stream_config->left_padding, binary->left_padding, left_padding_bqs);
-
-/* Set the left padding adjusted inside the isp kernels.
- * When the bds_factor isn't 1.00, the left padding size is adjusted inside the isp,
- * before bayer downscaling. (scaled_hor_plane_index(), raw_compute_hphase() in raw.isp.c)
- */
-#endif
-need_bds_factor_2_00 = ((binary->info->sp.bds.supported_bds_factors &
-			 (PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_2_00) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_2_50) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_3_00) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_4_00) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_4_50) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_5_00) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_6_00) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_8_00))) != 0);
-
-#ifndef ISP2401
-if (need_bds_factor_2_00 && binary->info->sp.pipeline.left_cropping > 0)
-	left_padding_adjusted_bqs = left_padding_bqs + ISP_VEC_NELEMS;
-else
-#else
-need_bds_factor_1_50 = ((binary->info->sp.bds.supported_bds_factors &
-			 (PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_1_50) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_2_25) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_3_00) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_4_50) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_6_00))) != 0);
-
-need_bds_factor_1_25 = ((binary->info->sp.bds.supported_bds_factors &
-			 (PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_1_25) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_2_50) |
-			  PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_5_00))) != 0);
-
-if (binary->info->sp.pipeline.left_cropping > 0 &&
-    (need_bds_factor_2_00 || need_bds_factor_1_50 || need_bds_factor_1_25))
-{
-	/*
-	 * downscale 2.0  -> first_vec_adjusted_bqs = 128
-	 * downscale 1.5  -> first_vec_adjusted_bqs = 96
-	 * downscale 1.25 -> first_vec_adjusted_bqs = 80
-	 */
-	unsigned int first_vec_adjusted_bqs
-	= ISP_VEC_NELEMS * bs_hor_ratio_in / bs_hor_ratio_out;
-	left_padding_adjusted_bqs = first_vec_adjusted_bqs
-	- _ISP_BQS(binary->info->sp.pipeline.left_cropping);
-} else
-#endif
-	left_padding_adjusted_bqs = left_padding_bqs;
-
-#ifndef ISP2401
-/* Currently, the bad pixel caused by filters before bayer scaling
-is NOT considered, because the bad pixel is subtle.
-When some large filter is used in the future,
-we need to consider the bad pixel.
-
-Currently, when bds_factor isn't 1.00, 3x3 anti-alias filter is applied
-to each color plane(Gr/R/B/Gb) before bayer downscaling.
-This filter moves each color plane to right/bottom directions
-by 1 pixel at the most, depending on downscaling factor.
-*/
-bad_bqs_on_left_before_bs = 0;
-bad_bqs_on_top_before_bs = 0;
-#else
-IA_CSS_LOG("supported_bds_factors=%d, need_bds_factor:2_00=%d, 1_50=%d, 1_25=%d",
-	   binary->info->sp.bds.supported_bds_factors,
-	   need_bds_factor_2_00, need_bds_factor_1_50, need_bds_factor_1_25);
-IA_CSS_LOG("left_cropping=%d, left_padding_adjusted_bqs=%d",
-	   binary->info->sp.pipeline.left_cropping, left_padding_adjusted_bqs);
-
-/* Set the top padding padded inside the isp kernel for bayer downscaling binaries.
- * When the bds_factor isn't 1.00, the top padding is padded inside the isp
- * before bayer downscaling, because the top cropping size (input margin) is not enough.
- * (calculate_input_line(), raw_compute_vphase(), dma_read_raw() in raw.isp.c)
- * NOTE: In dma_read_raw(), the factor passed to raw_compute_vphase() is got by get_bds_factor_for_dma_read().
- *       This factor is BDS_FPVAL_100/BDS_FPVAL_125/BDS_FPVAL_150/BDS_FPVAL_200.
- */
-top_padding_bqs = 0;
-if (binary->info->sp.pipeline.top_cropping > 0 &&
-    (required_bds_factor == SH_CSS_BDS_FACTOR_1_25 ||
-     required_bds_factor == SH_CSS_BDS_FACTOR_1_50 ||
-     required_bds_factor == SH_CSS_BDS_FACTOR_2_00))
-{
-	/* Calculation from calculate_input_line() and raw_compute_vphase() in raw.isp.c. */
-	int top_cropping_bqs = _ISP_BQS(binary->info->sp.pipeline.top_cropping);
-	/* top cropping (in bqs) */
-	int factor = bds_num * bds_frac_acc /
-	bds_den;	/* downscaling factor by fixed-point */
-	int top_padding_bqsxfrac_acc = (top_cropping_bqs * factor - top_cropping_bqs *
-					bds_frac_acc)
-	+ (2 * bds_frac_acc - factor);	/* top padding by fixed-point (in bqs) */
-
-	top_padding_bqs = (unsigned int)((top_padding_bqsxfrac_acc + bds_frac_acc / 2 -
-					  1) / bds_frac_acc);
-}
-
-IA_CSS_LOG("top_cropping=%d, top_padding_bqs=%d", binary->info->sp.pipeline.top_cropping, top_padding_bqs);
-
-/* Set the right/down shift amount caused by filters applied BEFORE bayer scaling,
- * which scaling is applied BEFORE shading corrertion.
- *
- * When the bds_factor isn't 1.00, 3x3 anti-alias filter is applied to each color plane(Gr/R/B/Gb)
- * before bayer downscaling.
- * This filter shifts each color plane (Gr/R/B/Gb) to right/down directions by 1 pixel.
- */
-right_shift_bqs_before_bs = 0;
-down_shift_bqs_before_bs = 0;
-#endif
-
-#ifndef ISP2401
-/* Currently, the bad pixel caused by filters after bayer scaling
-is NOT considered, because the bad pixel is subtle.
-When some large filter is used in the future,
-we need to consider the bad pixel.
-
-Currently, when DPC&BNR is processed between bayer scaling and
-shading correction, DPC&BNR moves each color plane to
-right/bottom directions by 1 pixel.
-*/
-bad_bqs_on_left_after_bs = 0;
-bad_bqs_on_top_after_bs = 0;
-#else
-if (need_bds_factor_2_00 || need_bds_factor_1_50 || need_bds_factor_1_25)
-{
-	right_shift_bqs_before_bs = 1;
-	down_shift_bqs_before_bs = 1;
-}
-
-IA_CSS_LOG("right_shift_bqs_before_bs=%d, down_shift_bqs_before_bs=%d",
-	   right_shift_bqs_before_bs, down_shift_bqs_before_bs);
-
-/* Set the right/down shift amount caused by filters applied AFTER bayer scaling,
- * which scaling is applied BEFORE shading corrertion.
- *
- * When DPC&BNR is processed between bayer scaling and shading correction,
- * DPC&BNR moves each color plane (Gr/R/B/Gb) to right/down directions by 1 pixel.
- */
-right_shift_bqs_after_bs = 0;
-down_shift_bqs_after_bs = 0;
-#endif
-
-#ifndef ISP2401
-/* Calculate the origin of bayer (real sensor data area)
-located on the shading table during the shading correction. */
-res->sc_bayer_origin_x_bqs_on_shading_table
-= ((left_padding_adjusted_bqs + bad_bqs_on_left_before_bs)
-   * bs_hor_ratio_out + bs_hor_ratio_in / 2) / bs_hor_ratio_in
-+ bad_bqs_on_left_after_bs;
-/* "+ bs_hor_ratio_in/2": rounding for division by bs_hor_ratio_in */
-res->sc_bayer_origin_y_bqs_on_shading_table
-= (bad_bqs_on_top_before_bs
-   * bs_ver_ratio_out + bs_ver_ratio_in / 2) / bs_ver_ratio_in
-+ bad_bqs_on_top_after_bs;
-/* "+ bs_ver_ratio_in/2": rounding for division by bs_ver_ratio_in */
-
-res->bayer_scale_hor_ratio_in  = (uint32_t)bs_hor_ratio_in;
-res->bayer_scale_hor_ratio_out = (uint32_t)bs_hor_ratio_out;
-res->bayer_scale_ver_ratio_in  = (uint32_t)bs_ver_ratio_in;
-res->bayer_scale_ver_ratio_out = (uint32_t)bs_ver_ratio_out;
-#else
-if (binary->info->mem_offsets.offsets.param->dmem.dp.size != 0)   /* if DPC&BNR is enabled in the binary */
-{
-	right_shift_bqs_after_bs = 1;
-	down_shift_bqs_after_bs = 1;
-}
-
-IA_CSS_LOG("right_shift_bqs_after_bs=%d, down_shift_bqs_after_bs=%d",
-	   right_shift_bqs_after_bs, down_shift_bqs_after_bs);
-
-/* Set the origin of the sensor data area on the internal frame at shading correction. */
-{
 	unsigned int bs_frac = bds_frac_acc;	/* scaling factor 1.0 in fixed point */
 	unsigned int bs_out, bs_in;		/* scaling ratio in fixed point */
 
+	IA_CSS_ENTER_PRIVATE("binary=%p, required_bds_factor=%d, stream_config=%p",
+			     binary, required_bds_factor, stream_config);
+
+	/* Get the numerator and denominator of the required bayer downscaling factor. */
+	err = sh_css_bds_factor_get_numerator_denominator(required_bds_factor,
+							  &bds_num, &bds_den);
+	if (err) {
+		IA_CSS_LEAVE_ERR_PRIVATE(err);
+		return err;
+	}
+
+	IA_CSS_LOG("bds_num=%d, bds_den=%d", bds_num, bds_den);
+
+	/* Set the horizontal/vertical ratio of bayer scaling between input area and output area. */
+	bs_hor_ratio_in  = bds_num;
+	bs_hor_ratio_out = bds_den;
+	bs_ver_ratio_in  = bds_num;
+	bs_ver_ratio_out = bds_den;
+
+	/* Set the left padding set by InputFormatter. (ia_css_ifmtr_configure() in ifmtr.c) */
+	if (stream_config->left_padding == -1)
+		left_padding_bqs = _ISP_BQS(binary->left_padding);
+	else
+		left_padding_bqs = (unsigned int)((int)ISP_VEC_NELEMS - _ISP_BQS(stream_config->left_padding));
+
+	IA_CSS_LOG("stream.left_padding=%d, binary.left_padding=%d, left_padding_bqs=%d",
+		   stream_config->left_padding, binary->left_padding,
+		   left_padding_bqs);
+
+	/* Set the left padding adjusted inside the isp kernels.
+	* When the bds_factor isn't 1.00, the left padding size is adjusted inside the isp,
+	* before bayer downscaling. (scaled_hor_plane_index(), raw_compute_hphase() in raw.isp.c)
+	*/
+	need_bds_factor_2_00 = ((binary->info->sp.bds.supported_bds_factors &
+				(PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_2_00) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_2_50) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_3_00) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_4_00) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_4_50) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_5_00) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_6_00) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_8_00))) != 0);
+
+	need_bds_factor_1_50 = ((binary->info->sp.bds.supported_bds_factors &
+				(PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_1_50) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_2_25) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_3_00) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_4_50) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_6_00))) != 0);
+
+	need_bds_factor_1_25 = ((binary->info->sp.bds.supported_bds_factors &
+				(PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_1_25) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_2_50) |
+				PACK_BDS_FACTOR(SH_CSS_BDS_FACTOR_5_00))) != 0);
+
+	if (binary->info->sp.pipeline.left_cropping > 0 &&
+	    (need_bds_factor_2_00 || need_bds_factor_1_50 || need_bds_factor_1_25)) {
+		/*
+		* downscale 2.0  -> first_vec_adjusted_bqs = 128
+		* downscale 1.5  -> first_vec_adjusted_bqs = 96
+		* downscale 1.25 -> first_vec_adjusted_bqs = 80
+		*/
+		unsigned int first_vec_adjusted_bqs = ISP_VEC_NELEMS * bs_hor_ratio_in / bs_hor_ratio_out;
+		left_padding_adjusted_bqs = first_vec_adjusted_bqs
+			    - _ISP_BQS(binary->info->sp.pipeline.left_cropping);
+	} else {
+		left_padding_adjusted_bqs = left_padding_bqs;
+	}
+
+	IA_CSS_LOG("supported_bds_factors=%d, need_bds_factor:2_00=%d, 1_50=%d, 1_25=%d",
+		   binary->info->sp.bds.supported_bds_factors,
+		   need_bds_factor_2_00, need_bds_factor_1_50,
+		   need_bds_factor_1_25);
+	IA_CSS_LOG("left_cropping=%d, left_padding_adjusted_bqs=%d",
+		   binary->info->sp.pipeline.left_cropping,
+		   left_padding_adjusted_bqs);
+
+	/* Set the top padding padded inside the isp kernel for bayer downscaling binaries.
+	* When the bds_factor isn't 1.00, the top padding is padded inside the isp
+	* before bayer downscaling, because the top cropping size (input margin) is not enough.
+	* (calculate_input_line(), raw_compute_vphase(), dma_read_raw() in raw.isp.c)
+	* NOTE: In dma_read_raw(), the factor passed to raw_compute_vphase() is got by get_bds_factor_for_dma_read().
+	*       This factor is BDS_FPVAL_100/BDS_FPVAL_125/BDS_FPVAL_150/BDS_FPVAL_200.
+	*/
+	top_padding_bqs = 0;
+	if (binary->info->sp.pipeline.top_cropping > 0 &&
+	    (required_bds_factor == SH_CSS_BDS_FACTOR_1_25 ||
+	    required_bds_factor == SH_CSS_BDS_FACTOR_1_50 ||
+	    required_bds_factor == SH_CSS_BDS_FACTOR_2_00)) {
+		/* Calculation from calculate_input_line() and raw_compute_vphase() in raw.isp.c. */
+		int top_cropping_bqs = _ISP_BQS(binary->info->sp.pipeline.top_cropping);
+		/* top cropping (in bqs) */
+		int factor = bds_num * bds_frac_acc /
+		bds_den;	/* downscaling factor by fixed-point */
+		int top_padding_bqsxfrac_acc = (top_cropping_bqs * factor - top_cropping_bqs *
+						bds_frac_acc)
+		+ (2 * bds_frac_acc - factor);	/* top padding by fixed-point (in bqs) */
+
+		top_padding_bqs = (unsigned int)((top_padding_bqsxfrac_acc + bds_frac_acc / 2 -
+						1) / bds_frac_acc);
+	}
+
+	IA_CSS_LOG("top_cropping=%d, top_padding_bqs=%d",
+		   binary->info->sp.pipeline.top_cropping, top_padding_bqs);
+
+	/* Set the right/down shift amount caused by filters applied BEFORE bayer scaling,
+	* which scaling is applied BEFORE shading corrertion.
+	*
+	* When the bds_factor isn't 1.00, 3x3 anti-alias filter is applied to each color plane(Gr/R/B/Gb)
+	* before bayer downscaling.
+	* This filter shifts each color plane (Gr/R/B/Gb) to right/down directions by 1 pixel.
+	*/
+	right_shift_bqs_before_bs = 0;
+	down_shift_bqs_before_bs = 0;
+
+	if (need_bds_factor_2_00 || need_bds_factor_1_50 || need_bds_factor_1_25) {
+		right_shift_bqs_before_bs = 1;
+		down_shift_bqs_before_bs = 1;
+	}
+
+	IA_CSS_LOG("right_shift_bqs_before_bs=%d, down_shift_bqs_before_bs=%d",
+		   right_shift_bqs_before_bs, down_shift_bqs_before_bs);
+
+	/* Set the right/down shift amount caused by filters applied AFTER bayer scaling,
+	* which scaling is applied BEFORE shading corrertion.
+	*
+	* When DPC&BNR is processed between bayer scaling and shading correction,
+	* DPC&BNR moves each color plane (Gr/R/B/Gb) to right/down directions by 1 pixel.
+	*/
+	right_shift_bqs_after_bs = 0;
+	down_shift_bqs_after_bs = 0;
+
+	/* if DPC&BNR is enabled in the binary */
+	if (binary->info->mem_offsets.offsets.param->dmem.dp.size != 0) {
+		right_shift_bqs_after_bs = 1;
+		down_shift_bqs_after_bs = 1;
+	}
+
+	IA_CSS_LOG("right_shift_bqs_after_bs=%d, down_shift_bqs_after_bs=%d",
+		   right_shift_bqs_after_bs, down_shift_bqs_after_bs);
+
 	bs_out = bs_hor_ratio_out * bs_frac;
 	bs_in = bs_hor_ratio_in * bs_frac;
-	sensor_data_origin_x_bqs_on_internal
-	= ((left_padding_adjusted_bqs + right_shift_bqs_before_bs) * bs_out + bs_in / 2) / bs_in
-	+ right_shift_bqs_after_bs;	/* "+ bs_in/2": rounding */
+	sensor_data_origin_x_bqs_on_internal =
+		((left_padding_adjusted_bqs + right_shift_bqs_before_bs) * bs_out + bs_in / 2) / bs_in
+		+ right_shift_bqs_after_bs;	/* "+ bs_in/2": rounding */
 
 	bs_out = bs_ver_ratio_out * bs_frac;
 	bs_in = bs_ver_ratio_in * bs_frac;
-	sensor_data_origin_y_bqs_on_internal
-	= ((top_padding_bqs + down_shift_bqs_before_bs) * bs_out + bs_in / 2) / bs_in
-	+ down_shift_bqs_after_bs;	/* "+ bs_in/2": rounding */
-}
+	sensor_data_origin_y_bqs_on_internal =
+		((top_padding_bqs + down_shift_bqs_before_bs) * bs_out + bs_in / 2) / bs_in
+		+ down_shift_bqs_after_bs;	/* "+ bs_in/2": rounding */
 
-scr->bayer_scale_hor_ratio_in			= (uint32_t)bs_hor_ratio_in;
-scr->bayer_scale_hor_ratio_out			= (uint32_t)bs_hor_ratio_out;
-scr->bayer_scale_ver_ratio_in			= (uint32_t)bs_ver_ratio_in;
-scr->bayer_scale_ver_ratio_out			= (uint32_t)bs_ver_ratio_out;
-scr->sensor_data_origin_x_bqs_on_internal	= (uint32_t)sensor_data_origin_x_bqs_on_internal;
-scr->sensor_data_origin_y_bqs_on_internal	= (uint32_t)sensor_data_origin_y_bqs_on_internal;
+	scr->bayer_scale_hor_ratio_in			= (uint32_t)bs_hor_ratio_in;
+	scr->bayer_scale_hor_ratio_out			= (uint32_t)bs_hor_ratio_out;
+	scr->bayer_scale_ver_ratio_in			= (uint32_t)bs_ver_ratio_in;
+	scr->bayer_scale_ver_ratio_out			= (uint32_t)bs_ver_ratio_out;
+	scr->sensor_data_origin_x_bqs_on_internal	= (uint32_t)sensor_data_origin_x_bqs_on_internal;
+	scr->sensor_data_origin_y_bqs_on_internal	= (uint32_t)sensor_data_origin_y_bqs_on_internal;
 
-IA_CSS_LOG("sc_requirements: %d, %d, %d, %d, %d, %d",
-	   scr->bayer_scale_hor_ratio_in, scr->bayer_scale_hor_ratio_out,
-	   scr->bayer_scale_ver_ratio_in, scr->bayer_scale_ver_ratio_out,
-	   scr->sensor_data_origin_x_bqs_on_internal, scr->sensor_data_origin_y_bqs_on_internal);
-#endif
+	IA_CSS_LOG("sc_requirements: %d, %d, %d, %d, %d, %d",
+		   scr->bayer_scale_hor_ratio_in,
+		   scr->bayer_scale_hor_ratio_out,
+		   scr->bayer_scale_ver_ratio_in, scr->bayer_scale_ver_ratio_out,
+		   scr->sensor_data_origin_x_bqs_on_internal,
+		   scr->sensor_data_origin_y_bqs_on_internal);
 
-#ifdef ISP2401
-IA_CSS_LEAVE_ERR_PRIVATE(err);
-#endif
-return err;
+	IA_CSS_LEAVE_ERR_PRIVATE(err);
+	return err;
 }
 
 /* Get the shading information of Shading Correction Type 1. */
 static int
-ia_css_binary_get_shading_info_type_1(const struct ia_css_binary
-				      *binary,	/* [in] */
-				      unsigned int required_bds_factor,			/* [in] */
-				      const struct ia_css_stream_config *stream_config,	/* [in] */
-#ifndef ISP2401
-				      struct ia_css_shading_info *info)			/* [out] */
-#else
-				      struct ia_css_shading_info *shading_info,		/* [out] */
-				      struct ia_css_pipe_config *pipe_config)			/* [out] */
-#endif
+isp2400_binary_get_shading_info_type_1(const struct ia_css_binary *binary,	/* [in] */
+				       unsigned int required_bds_factor,			/* [in] */
+				       const struct ia_css_stream_config *stream_config,	/* [in] */
+				       struct ia_css_shading_info *info)			/* [out] */
 {
 	int err;
-#ifndef ISP2401
 	struct sh_css_shading_table_bayer_origin_compute_results res;
-#else
-	struct sh_css_binary_sc_requirements scr;
-#endif
 
-#ifndef ISP2401
 	assert(binary);
 	assert(info);
-#else
-	u32 in_width_bqs, in_height_bqs, internal_width_bqs, internal_height_bqs;
-	u32 num_hor_grids, num_ver_grids, bqs_per_grid_cell, tbl_width_bqs, tbl_height_bqs;
-	u32 sensor_org_x_bqs_on_internal, sensor_org_y_bqs_on_internal, sensor_width_bqs, sensor_height_bqs;
-	u32 sensor_center_x_bqs_on_internal, sensor_center_y_bqs_on_internal;
-	u32 left, right, upper, lower;
-	u32 adjust_left, adjust_right, adjust_upper, adjust_lower, adjust_width_bqs, adjust_height_bqs;
-	u32 internal_org_x_bqs_on_tbl, internal_org_y_bqs_on_tbl;
-	u32 sensor_org_x_bqs_on_tbl, sensor_org_y_bqs_on_tbl;
-#endif
 
-#ifndef ISP2401
 	info->type = IA_CSS_SHADING_CORRECTION_TYPE_1;
-#else
-	assert(binary);
-	assert(stream_config);
-	assert(shading_info);
-	assert(pipe_config);
-#endif
 
-#ifndef ISP2401
 	info->info.type_1.enable	    = binary->info->sp.enable.sc;
 	info->info.type_1.num_hor_grids	    = binary->sctbl_width_per_color;
 	info->info.type_1.num_ver_grids	    = binary->sctbl_height;
 	info->info.type_1.bqs_per_grid_cell = (1 << binary->deci_factor_log2);
-#else
-	IA_CSS_ENTER_PRIVATE("binary=%p, required_bds_factor=%d, stream_config=%p",
-			     binary, required_bds_factor, stream_config);
-#endif
 
 	/* Initialize by default values. */
-#ifndef ISP2401
 	info->info.type_1.bayer_scale_hor_ratio_in	= 1;
 	info->info.type_1.bayer_scale_hor_ratio_out	= 1;
 	info->info.type_1.bayer_scale_ver_ratio_in	= 1;
@@ -550,157 +510,185 @@ ia_css_binary_get_shading_info_type_1(const struct ia_css_binary
 	    stream_config,
 	    &res);
 	if (err)
-#else
+		return err;
+
+	info->info.type_1.bayer_scale_hor_ratio_in	= res.bayer_scale_hor_ratio_in;
+	info->info.type_1.bayer_scale_hor_ratio_out	= res.bayer_scale_hor_ratio_out;
+	info->info.type_1.bayer_scale_ver_ratio_in	= res.bayer_scale_ver_ratio_in;
+	info->info.type_1.bayer_scale_ver_ratio_out	= res.bayer_scale_ver_ratio_out;
+	info->info.type_1.sc_bayer_origin_x_bqs_on_shading_table = res.sc_bayer_origin_x_bqs_on_shading_table;
+	info->info.type_1.sc_bayer_origin_y_bqs_on_shading_table = res.sc_bayer_origin_y_bqs_on_shading_table;
+
+	return err;
+}
+
+/* Get the shading information of Shading Correction Type 1. */
+static int
+isp2401_binary_get_shading_info_type_1(const struct ia_css_binary *binary,	/* [in] */
+				       unsigned int required_bds_factor,			/* [in] */
+				       const struct ia_css_stream_config *stream_config,	/* [in] */
+				       struct ia_css_shading_info *shading_info,		/* [out] */
+				       struct ia_css_pipe_config *pipe_config)			/* [out] */
+{
+	int err;
+	struct sh_css_binary_sc_requirements scr;
+
+	u32 in_width_bqs, in_height_bqs, internal_width_bqs, internal_height_bqs;
+	u32 num_hor_grids, num_ver_grids, bqs_per_grid_cell, tbl_width_bqs, tbl_height_bqs;
+	u32 sensor_org_x_bqs_on_internal, sensor_org_y_bqs_on_internal, sensor_width_bqs, sensor_height_bqs;
+	u32 sensor_center_x_bqs_on_internal, sensor_center_y_bqs_on_internal;
+	u32 left, right, upper, lower;
+	u32 adjust_left, adjust_right, adjust_upper, adjust_lower, adjust_width_bqs, adjust_height_bqs;
+	u32 internal_org_x_bqs_on_tbl, internal_org_y_bqs_on_tbl;
+	u32 sensor_org_x_bqs_on_tbl, sensor_org_y_bqs_on_tbl;
+
+	assert(binary);
+	assert(stream_config);
+	assert(shading_info);
+	assert(pipe_config);
+
+	IA_CSS_ENTER_PRIVATE("binary=%p, required_bds_factor=%d, stream_config=%p",
+			     binary, required_bds_factor, stream_config);
+
+	/* Initialize by default values. */
 	*shading_info = DEFAULT_SHADING_INFO_TYPE_1;
 
 	err = sh_css_binary_get_sc_requirements(binary, required_bds_factor, stream_config, &scr);
-	if (err)
-	{
+	if (err) {
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
-#endif
 		return err;
-#ifdef ISP2401
+	}
+
+	IA_CSS_LOG("binary: id=%d, sctbl=%dx%d, deci=%d",
+		binary->info->sp.id, binary->sctbl_width_per_color, binary->sctbl_height, binary->deci_factor_log2);
+	IA_CSS_LOG("binary: in=%dx%d, in_padded_w=%d, int=%dx%d, int_padded_w=%d, out=%dx%d, out_padded_w=%d",
+		binary->in_frame_info.res.width, binary->in_frame_info.res.height, binary->in_frame_info.padded_width,
+		binary->internal_frame_info.res.width, binary->internal_frame_info.res.height,
+		binary->internal_frame_info.padded_width,
+		binary->out_frame_info[0].res.width, binary->out_frame_info[0].res.height,
+		binary->out_frame_info[0].padded_width);
+
+	/* Set the input size from sensor, which includes left/top crop size. */
+	in_width_bqs	    = _ISP_BQS(binary->in_frame_info.res.width);
+	in_height_bqs	    = _ISP_BQS(binary->in_frame_info.res.height);
+
+	/*
+	 * Frame size internally used in ISP, including sensor data and padding.
+	 * This is the frame size, to which the shading correction is applied.
+	 */
+	internal_width_bqs  = _ISP_BQS(binary->internal_frame_info.res.width);
+	internal_height_bqs = _ISP_BQS(binary->internal_frame_info.res.height);
+
+	/* Shading table. */
+	num_hor_grids = binary->sctbl_width_per_color;
+	num_ver_grids = binary->sctbl_height;
+	bqs_per_grid_cell = (1 << binary->deci_factor_log2);
+	tbl_width_bqs  = (num_hor_grids - 1) * bqs_per_grid_cell;
+	tbl_height_bqs = (num_ver_grids - 1) * bqs_per_grid_cell;
+
+	IA_CSS_LOG("tbl_width_bqs=%d, tbl_height_bqs=%d", tbl_width_bqs, tbl_height_bqs);
+
+	/*
+	 * Real sensor data area on the internal frame at shading correction.
+	 * Filters and scaling are applied to the internal frame before
+	 * shading correction, depending on the binary.
+	 */
+	sensor_org_x_bqs_on_internal = scr.sensor_data_origin_x_bqs_on_internal;
+	sensor_org_y_bqs_on_internal = scr.sensor_data_origin_y_bqs_on_internal;
+	{
+		unsigned int bs_frac = 8;	/* scaling factor 1.0 in fixed point (8 == FRAC_ACC macro in ISP) */
+		unsigned int bs_out, bs_in;	/* scaling ratio in fixed point */
+
+		bs_out = scr.bayer_scale_hor_ratio_out * bs_frac;
+		bs_in = scr.bayer_scale_hor_ratio_in * bs_frac;
+		sensor_width_bqs  = (in_width_bqs * bs_out + bs_in / 2) / bs_in; /* "+ bs_in/2": rounding */
+
+		bs_out = scr.bayer_scale_ver_ratio_out * bs_frac;
+		bs_in = scr.bayer_scale_ver_ratio_in * bs_frac;
+		sensor_height_bqs = (in_height_bqs * bs_out + bs_in / 2) / bs_in; /* "+ bs_in/2": rounding */
+	}
+
+	/* Center of the sensor data on the internal frame at shading correction. */
+	sensor_center_x_bqs_on_internal = sensor_org_x_bqs_on_internal + sensor_width_bqs / 2;
+	sensor_center_y_bqs_on_internal = sensor_org_y_bqs_on_internal + sensor_height_bqs / 2;
+
+	/* Size of left/right/upper/lower sides of the sensor center on the internal frame. */
+	left  = sensor_center_x_bqs_on_internal;
+	right = internal_width_bqs - sensor_center_x_bqs_on_internal;
+	upper = sensor_center_y_bqs_on_internal;
+	lower = internal_height_bqs - sensor_center_y_bqs_on_internal;
+
+	/* Align the size of left/right/upper/lower sides to a multiple of the grid cell size. */
+	adjust_left  = CEIL_MUL(left,  bqs_per_grid_cell);
+	adjust_right = CEIL_MUL(right, bqs_per_grid_cell);
+	adjust_upper = CEIL_MUL(upper, bqs_per_grid_cell);
+	adjust_lower = CEIL_MUL(lower, bqs_per_grid_cell);
+
+	/* Shading table should cover the adjusted frame size. */
+	adjust_width_bqs  = adjust_left + adjust_right;
+	adjust_height_bqs = adjust_upper + adjust_lower;
+
+	IA_CSS_LOG("adjust_width_bqs=%d, adjust_height_bqs=%d", adjust_width_bqs, adjust_height_bqs);
+
+	if (adjust_width_bqs > tbl_width_bqs || adjust_height_bqs > tbl_height_bqs) {
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
+	}
+
+	/* Origin of the internal frame on the shading table. */
+	internal_org_x_bqs_on_tbl = adjust_left - left;
+	internal_org_y_bqs_on_tbl = adjust_upper - upper;
+
+	/* Origin of the real sensor data area on the shading table. */
+	sensor_org_x_bqs_on_tbl = internal_org_x_bqs_on_tbl + sensor_org_x_bqs_on_internal;
+	sensor_org_y_bqs_on_tbl = internal_org_y_bqs_on_tbl + sensor_org_y_bqs_on_internal;
+
+	/* The shading information necessary as API is stored in the shading_info. */
+	shading_info->info.type_1.num_hor_grids	    = num_hor_grids;
+	shading_info->info.type_1.num_ver_grids	    = num_ver_grids;
+	shading_info->info.type_1.bqs_per_grid_cell = bqs_per_grid_cell;
+
+	shading_info->info.type_1.bayer_scale_hor_ratio_in  = scr.bayer_scale_hor_ratio_in;
+	shading_info->info.type_1.bayer_scale_hor_ratio_out = scr.bayer_scale_hor_ratio_out;
+	shading_info->info.type_1.bayer_scale_ver_ratio_in  = scr.bayer_scale_ver_ratio_in;
+	shading_info->info.type_1.bayer_scale_ver_ratio_out = scr.bayer_scale_ver_ratio_out;
+
+	shading_info->info.type_1.isp_input_sensor_data_res_bqs.width  = in_width_bqs;
+	shading_info->info.type_1.isp_input_sensor_data_res_bqs.height = in_height_bqs;
+
+	shading_info->info.type_1.sensor_data_res_bqs.width  = sensor_width_bqs;
+	shading_info->info.type_1.sensor_data_res_bqs.height = sensor_height_bqs;
+
+	shading_info->info.type_1.sensor_data_origin_bqs_on_sctbl.x = (int32_t)sensor_org_x_bqs_on_tbl;
+	shading_info->info.type_1.sensor_data_origin_bqs_on_sctbl.y = (int32_t)sensor_org_y_bqs_on_tbl;
+
+	/* The shading information related to ISP (but, not necessary as API) is stored in the pipe_config. */
+	pipe_config->internal_frame_origin_bqs_on_sctbl.x = (int32_t)internal_org_x_bqs_on_tbl;
+	pipe_config->internal_frame_origin_bqs_on_sctbl.y = (int32_t)internal_org_y_bqs_on_tbl;
+
+	IA_CSS_LOG("shading_info: grids=%dx%d, cell=%d, scale=%d,%d,%d,%d, input=%dx%d, data=%dx%d, origin=(%d,%d)",
+		   shading_info->info.type_1.num_hor_grids,
+		   shading_info->info.type_1.num_ver_grids,
+		   shading_info->info.type_1.bqs_per_grid_cell,
+		   shading_info->info.type_1.bayer_scale_hor_ratio_in,
+		   shading_info->info.type_1.bayer_scale_hor_ratio_out,
+		   shading_info->info.type_1.bayer_scale_ver_ratio_in,
+		   shading_info->info.type_1.bayer_scale_ver_ratio_out,
+		   shading_info->info.type_1.isp_input_sensor_data_res_bqs.width,
+		   shading_info->info.type_1.isp_input_sensor_data_res_bqs.height,
+		   shading_info->info.type_1.sensor_data_res_bqs.width,
+		   shading_info->info.type_1.sensor_data_res_bqs.height,
+		   shading_info->info.type_1.sensor_data_origin_bqs_on_sctbl.x,
+		   shading_info->info.type_1.sensor_data_origin_bqs_on_sctbl.y);
+
+	IA_CSS_LOG("pipe_config: origin=(%d,%d)",
+		   pipe_config->internal_frame_origin_bqs_on_sctbl.x,
+		   pipe_config->internal_frame_origin_bqs_on_sctbl.y);
+
+	IA_CSS_LEAVE_ERR_PRIVATE(err);
+	return err;
 }
 
-IA_CSS_LOG("binary: id=%d, sctbl=%dx%d, deci=%d",
-	   binary->info->sp.id, binary->sctbl_width_per_color, binary->sctbl_height, binary->deci_factor_log2);
-IA_CSS_LOG("binary: in=%dx%d, in_padded_w=%d, int=%dx%d, int_padded_w=%d, out=%dx%d, out_padded_w=%d",
-	   binary->in_frame_info.res.width, binary->in_frame_info.res.height, binary->in_frame_info.padded_width,
-	   binary->internal_frame_info.res.width, binary->internal_frame_info.res.height,
-	   binary->internal_frame_info.padded_width,
-	   binary->out_frame_info[0].res.width, binary->out_frame_info[0].res.height,
-	   binary->out_frame_info[0].padded_width);
-
-/* Set the input size from sensor, which includes left/top crop size. */
-in_width_bqs	    = _ISP_BQS(binary->in_frame_info.res.width);
-in_height_bqs	    = _ISP_BQS(binary->in_frame_info.res.height);
-
-/* Frame size internally used in ISP, including sensor data and padding.
- * This is the frame size, to which the shading correction is applied.
- */
-internal_width_bqs  = _ISP_BQS(binary->internal_frame_info.res.width);
-internal_height_bqs = _ISP_BQS(binary->internal_frame_info.res.height);
-
-/* Shading table. */
-num_hor_grids = binary->sctbl_width_per_color;
-num_ver_grids = binary->sctbl_height;
-bqs_per_grid_cell = (1 << binary->deci_factor_log2);
-tbl_width_bqs  = (num_hor_grids - 1) * bqs_per_grid_cell;
-tbl_height_bqs = (num_ver_grids - 1) * bqs_per_grid_cell;
-#endif
-
-#ifndef ISP2401
-info->info.type_1.bayer_scale_hor_ratio_in	= res.bayer_scale_hor_ratio_in;
-info->info.type_1.bayer_scale_hor_ratio_out	= res.bayer_scale_hor_ratio_out;
-info->info.type_1.bayer_scale_ver_ratio_in	= res.bayer_scale_ver_ratio_in;
-info->info.type_1.bayer_scale_ver_ratio_out	= res.bayer_scale_ver_ratio_out;
-info->info.type_1.sc_bayer_origin_x_bqs_on_shading_table = res.sc_bayer_origin_x_bqs_on_shading_table;
-info->info.type_1.sc_bayer_origin_y_bqs_on_shading_table = res.sc_bayer_origin_y_bqs_on_shading_table;
-#else
-IA_CSS_LOG("tbl_width_bqs=%d, tbl_height_bqs=%d", tbl_width_bqs, tbl_height_bqs);
-#endif
-
-#ifdef ISP2401
-/* Real sensor data area on the internal frame at shading correction.
- * Filters and scaling are applied to the internal frame before shading correction, depending on the binary.
- */
-sensor_org_x_bqs_on_internal = scr.sensor_data_origin_x_bqs_on_internal;
-sensor_org_y_bqs_on_internal = scr.sensor_data_origin_y_bqs_on_internal;
-{
-	unsigned int bs_frac = 8;	/* scaling factor 1.0 in fixed point (8 == FRAC_ACC macro in ISP) */
-	unsigned int bs_out, bs_in;	/* scaling ratio in fixed point */
-
-	bs_out = scr.bayer_scale_hor_ratio_out * bs_frac;
-	bs_in = scr.bayer_scale_hor_ratio_in * bs_frac;
-	sensor_width_bqs  = (in_width_bqs * bs_out + bs_in / 2) / bs_in; /* "+ bs_in/2": rounding */
-
-	bs_out = scr.bayer_scale_ver_ratio_out * bs_frac;
-	bs_in = scr.bayer_scale_ver_ratio_in * bs_frac;
-	sensor_height_bqs = (in_height_bqs * bs_out + bs_in / 2) / bs_in; /* "+ bs_in/2": rounding */
-}
-
-/* Center of the sensor data on the internal frame at shading correction. */
-sensor_center_x_bqs_on_internal = sensor_org_x_bqs_on_internal + sensor_width_bqs / 2;
-sensor_center_y_bqs_on_internal = sensor_org_y_bqs_on_internal + sensor_height_bqs / 2;
-
-/* Size of left/right/upper/lower sides of the sensor center on the internal frame. */
-left  = sensor_center_x_bqs_on_internal;
-right = internal_width_bqs - sensor_center_x_bqs_on_internal;
-upper = sensor_center_y_bqs_on_internal;
-lower = internal_height_bqs - sensor_center_y_bqs_on_internal;
-
-/* Align the size of left/right/upper/lower sides to a multiple of the grid cell size. */
-adjust_left  = CEIL_MUL(left,  bqs_per_grid_cell);
-adjust_right = CEIL_MUL(right, bqs_per_grid_cell);
-adjust_upper = CEIL_MUL(upper, bqs_per_grid_cell);
-adjust_lower = CEIL_MUL(lower, bqs_per_grid_cell);
-
-/* Shading table should cover the adjusted frame size. */
-adjust_width_bqs  = adjust_left + adjust_right;
-adjust_height_bqs = adjust_upper + adjust_lower;
-
-IA_CSS_LOG("adjust_width_bqs=%d, adjust_height_bqs=%d", adjust_width_bqs, adjust_height_bqs);
-
-if (adjust_width_bqs > tbl_width_bqs || adjust_height_bqs > tbl_height_bqs)
-{
-	IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
-	return -EINVAL;
-}
-
-/* Origin of the internal frame on the shading table. */
-internal_org_x_bqs_on_tbl = adjust_left - left;
-internal_org_y_bqs_on_tbl = adjust_upper - upper;
-
-/* Origin of the real sensor data area on the shading table. */
-sensor_org_x_bqs_on_tbl = internal_org_x_bqs_on_tbl + sensor_org_x_bqs_on_internal;
-sensor_org_y_bqs_on_tbl = internal_org_y_bqs_on_tbl + sensor_org_y_bqs_on_internal;
-
-/* The shading information necessary as API is stored in the shading_info. */
-shading_info->info.type_1.num_hor_grids	    = num_hor_grids;
-shading_info->info.type_1.num_ver_grids	    = num_ver_grids;
-shading_info->info.type_1.bqs_per_grid_cell = bqs_per_grid_cell;
-
-shading_info->info.type_1.bayer_scale_hor_ratio_in  = scr.bayer_scale_hor_ratio_in;
-shading_info->info.type_1.bayer_scale_hor_ratio_out = scr.bayer_scale_hor_ratio_out;
-shading_info->info.type_1.bayer_scale_ver_ratio_in  = scr.bayer_scale_ver_ratio_in;
-shading_info->info.type_1.bayer_scale_ver_ratio_out = scr.bayer_scale_ver_ratio_out;
-
-shading_info->info.type_1.isp_input_sensor_data_res_bqs.width  = in_width_bqs;
-shading_info->info.type_1.isp_input_sensor_data_res_bqs.height = in_height_bqs;
-
-shading_info->info.type_1.sensor_data_res_bqs.width  = sensor_width_bqs;
-shading_info->info.type_1.sensor_data_res_bqs.height = sensor_height_bqs;
-
-shading_info->info.type_1.sensor_data_origin_bqs_on_sctbl.x = (int32_t)sensor_org_x_bqs_on_tbl;
-shading_info->info.type_1.sensor_data_origin_bqs_on_sctbl.y = (int32_t)sensor_org_y_bqs_on_tbl;
-
-/* The shading information related to ISP (but, not necessary as API) is stored in the pipe_config. */
-pipe_config->internal_frame_origin_bqs_on_sctbl.x = (int32_t)internal_org_x_bqs_on_tbl;
-pipe_config->internal_frame_origin_bqs_on_sctbl.y = (int32_t)internal_org_y_bqs_on_tbl;
-
-IA_CSS_LOG("shading_info: grids=%dx%d, cell=%d, scale=%d,%d,%d,%d, input=%dx%d, data=%dx%d, origin=(%d,%d)",
-	   shading_info->info.type_1.num_hor_grids,
-	   shading_info->info.type_1.num_ver_grids,
-	   shading_info->info.type_1.bqs_per_grid_cell,
-	   shading_info->info.type_1.bayer_scale_hor_ratio_in,
-	   shading_info->info.type_1.bayer_scale_hor_ratio_out,
-	   shading_info->info.type_1.bayer_scale_ver_ratio_in,
-	   shading_info->info.type_1.bayer_scale_ver_ratio_out,
-	   shading_info->info.type_1.isp_input_sensor_data_res_bqs.width,
-	   shading_info->info.type_1.isp_input_sensor_data_res_bqs.height,
-	   shading_info->info.type_1.sensor_data_res_bqs.width,
-	   shading_info->info.type_1.sensor_data_res_bqs.height,
-	   shading_info->info.type_1.sensor_data_origin_bqs_on_sctbl.x,
-	   shading_info->info.type_1.sensor_data_origin_bqs_on_sctbl.y);
-
-IA_CSS_LOG("pipe_config: origin=(%d,%d)",
-	   pipe_config->internal_frame_origin_bqs_on_sctbl.x,
-	   pipe_config->internal_frame_origin_bqs_on_sctbl.y);
-
-IA_CSS_LEAVE_ERR_PRIVATE(err);
-#endif
-return err;
-}
 
 int
 ia_css_binary_get_shading_info(const struct ia_css_binary *binary,			/* [in] */
@@ -718,20 +706,25 @@ ia_css_binary_get_shading_info(const struct ia_css_binary *binary,			/* [in] */
 	IA_CSS_ENTER_PRIVATE("binary=%p, type=%d, required_bds_factor=%d, stream_config=%p",
 			     binary, type, required_bds_factor, stream_config);
 
-	if (type == IA_CSS_SHADING_CORRECTION_TYPE_1)
-#ifndef ISP2401
-		err = ia_css_binary_get_shading_info_type_1(binary, required_bds_factor, stream_config,
-							    shading_info);
-#else
-		err = ia_css_binary_get_shading_info_type_1(binary, required_bds_factor, stream_config,
-			shading_info, pipe_config);
-#endif
-
-	/* Other function calls can be added here when other shading correction types will be added in the future. */
-
-	else
+	if (type != IA_CSS_SHADING_CORRECTION_TYPE_1) {
 		err = -ENOTSUPP;
 
+		IA_CSS_LEAVE_ERR_PRIVATE(err);
+		return err;
+	}
+
+	if (!IS_ISP2401)
+		err = isp2400_binary_get_shading_info_type_1(binary,
+							     required_bds_factor,
+							     stream_config,
+							     shading_info);
+	else
+		err = isp2401_binary_get_shading_info_type_1(binary,
+							     required_bds_factor,
+							     stream_config,
+							     shading_info,
+							     pipe_config);
+
 	IA_CSS_LEAVE_ERR_PRIVATE(err);
 	return err;
 }
diff --git a/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c b/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c
index 0901c932bf28..6a75cba4886f 100644
--- a/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c
+++ b/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c
@@ -385,8 +385,7 @@ int ia_css_bufq_enqueue_psys_event(
     u8 evt_payload_1,
     uint8_t evt_payload_2)
 {
-
-    int error = 0;
+	int error = 0;
 	ia_css_queue_t *q;
 
 	IA_CSS_ENTER_PRIVATE("evt_id=%d", evt_id);
diff --git a/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c b/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
index ec598a1697b1..4f637e7219a6 100644
--- a/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
+++ b/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
@@ -2127,9 +2127,9 @@ void ia_css_debug_dump_isys_state(void)
 	input_system_get_state(INPUT_SYSTEM0_ID, &state);
 
 #ifndef ISP2401
-		debug_print_isys_state(&state);
+	debug_print_isys_state(&state);
 #else
-		input_system_dump_state(INPUT_SYSTEM0_ID, &state);
+	input_system_dump_state(INPUT_SYSTEM0_ID, &state);
 #endif
 }
 
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index 87347013b747..2fb817e3d756 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -5091,24 +5091,23 @@ sh_css_pipes_stop(struct ia_css_stream *stream)
 			stream->pipes[i]->pipeline.pipe_id);
 		err = ia_css_pipeline_request_stop(&stream->pipes[i]->pipeline);
 
-	/*
-	 * Exit this loop if "ia_css_pipeline_request_stop()"
-	 * returns the error code.
-	 *
-	 * The error code would be generated in the following
-	 * two cases:
-	 * (1) The Scalar Processor has already been stopped.
-	 * (2) The "Host->SP" event queue is full.
-	 *
-	 * As the convention of using CSS API 2.0/2.1, such CSS
-	 * error code would be propogated from the CSS-internal
-	 * API returned value to the CSS API returned value. Then
-	 * the CSS driver should capture these error code and
-	 * handle it in the driver exception handling mechanism.
-	 */
-	if (err) {
-		goto ERR;
-	}
+		/*
+		* Exit this loop if "ia_css_pipeline_request_stop()"
+		* returns the error code.
+		*
+		* The error code would be generated in the following
+		* two cases:
+		* (1) The Scalar Processor has already been stopped.
+		* (2) The "Host->SP" event queue is full.
+		*
+		* As the convention of using CSS API 2.0/2.1, such CSS
+		* error code would be propogated from the CSS-internal
+		* API returned value to the CSS API returned value. Then
+		* the CSS driver should capture these error code and
+		* handle it in the driver exception handling mechanism.
+		*/
+		if (err)
+			goto ERR;
 	}
 
 	/*
@@ -8768,47 +8767,27 @@ ia_css_acc_pipe_create(struct ia_css_pipe *pipe) {
 	return err;
 }
 
-int
-ia_css_pipe_create(const struct ia_css_pipe_config *config,
-		    struct ia_css_pipe **pipe) {
-#ifndef ISP2401
-	if (!config)
-#else
+int ia_css_pipe_create(const struct ia_css_pipe_config *config,
+		       struct ia_css_pipe **pipe)
+{
 	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("config = %p, pipe = %p", config, pipe);
 
-	if (!config)
-	{
+	if (!config || !pipe) {
 		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
-#endif
 		return -EINVAL;
-#ifndef ISP2401
-	if (!pipe)
-#else
-}
+	}
 
-if (!pipe)
-{
-	IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
-#endif
-		return -EINVAL;
-#ifndef ISP2401
-	return ia_css_pipe_create_extra(config, NULL, pipe);
-#else
-}
-
-err = ia_css_pipe_create_extra(config, NULL, pipe);
+	err = ia_css_pipe_create_extra(config, NULL, pipe);
 
-if (err == 0)
-{
-	IA_CSS_LOG("pipe created successfully = %p", *pipe);
-}
+	if (err == 0) {
+		IA_CSS_LOG("pipe created successfully = %p", *pipe);
+	}
 
-IA_CSS_LEAVE_ERR_PRIVATE(err);
+	IA_CSS_LEAVE_ERR_PRIVATE(err);
 
-return err;
-#endif
+	return err;
 }
 
 int
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
