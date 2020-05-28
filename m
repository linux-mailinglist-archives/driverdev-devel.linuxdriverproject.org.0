Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 409361E5758
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 08:14:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D111B88166;
	Thu, 28 May 2020 06:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kXGGnhSUo1ZH; Thu, 28 May 2020 06:14:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C486987E1D;
	Thu, 28 May 2020 06:14:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B87A11BF27F
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B5BB986F13
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S483LWZHyEe8 for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 06:14:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C9AC686E71
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 06:14:26 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A08B21919;
 Thu, 28 May 2020 06:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590646466;
 bh=WDRbGE5NQkh8UTP1t5CtKhj6caiK3SSHdqnOkDq7xss=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=T6rv0RE0HObWcu6qkymtP6S6ZDyRFZyQVhYtAvjfQeJ+1yJJUb/mDoF2XrO4RK9/X
 ZU1P3x+m08smEecaQt9X+4gq4/4twuDMb+FlD0oZlJcOvFG721Mwzg43ecjCreTBzu
 wCtE1m3WLx3Q/+u/nu1WqLFfVCRX/RhCg2WEHP7A=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jeBo8-000VIU-Fq; Thu, 28 May 2020 08:14:24 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 19/20] media: atomisp: remove kvmalloc/kvcalloc abstractions
Date: Thu, 28 May 2020 08:14:19 +0200
Message-Id: <643b8c4a2743f3917fbac9162e5f5366d0aa989b.1590646166.git.mchehab+huawei@kernel.org>
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

The sh_css layer adds an abstraction for kvmalloc/kvcalloc.

Get rid of them. Most of the work here was done by this
small coccinelle script:

<cocci>
@@
expression size;
@@

- sh_css_malloc(size)
+ kvmalloc(size, GFP_KERNEL)

@@
expression n;
expression size;
@@

- sh_css_calloc(n, size)
+ kvcalloc(n, size, GFP_KERNEL)
</cocci>

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../atomisp/pci/base/refcount/src/refcount.c  |  2 +-
 .../kernels/sdis/sdis_1.0/ia_css_sdis.host.c  |  6 ++--
 .../kernels/sdis/sdis_2/ia_css_sdis2.host.c   |  2 +-
 .../atomisp/pci/runtime/binary/src/binary.c   |  4 +--
 .../atomisp/pci/runtime/frame/src/frame.c     |  2 +-
 .../pci/runtime/isp_param/src/isp_param.c     |  4 ++-
 .../pci/runtime/pipeline/src/pipeline.c       |  2 +-
 .../atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c  |  2 +-
 drivers/staging/media/atomisp/pci/sh_css.c    | 29 -------------------
 .../media/atomisp/pci/sh_css_host_data.c      |  2 +-
 .../media/atomisp/pci/sh_css_metrics.c        |  9 ++++--
 .../media/atomisp/pci/sh_css_param_dvs.c      | 20 ++++++-------
 .../media/atomisp/pci/sh_css_param_shading.c  |  3 +-
 13 files changed, 32 insertions(+), 55 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c b/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
index 1616f3a38ddd..215f814771fb 100644
--- a/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
+++ b/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
@@ -81,7 +81,7 @@ enum ia_css_err ia_css_refcount_init(uint32_t size)
 		return IA_CSS_ERR_INTERNAL_ERROR;
 	}
 	myrefcount.items =
-	    sh_css_malloc(sizeof(struct ia_css_refcount_entry) * size);
+	    kvmalloc(sizeof(struct ia_css_refcount_entry) * size, GFP_KERNEL);
 	if (!myrefcount.items)
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 	if (err == IA_CSS_SUCCESS) {
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c
index dfd621d3f6da..1673ac013d69 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c
@@ -318,7 +318,7 @@ ia_css_isp_dvs_statistics_allocate(
 	if (!grid->enable)
 		return NULL;
 
-	me = sh_css_calloc(1, sizeof(*me));
+	me = kvcalloc(1, sizeof(*me), GFP_KERNEL);
 	if (!me)
 		goto err;
 
@@ -359,7 +359,7 @@ ia_css_isp_dvs_statistics_map_allocate(
 	 * so we use a local char * instead. */
 	char *base_ptr;
 
-	me = sh_css_malloc(sizeof(*me));
+	me = kvmalloc(sizeof(*me), GFP_KERNEL);
 	if (!me) {
 		IA_CSS_LOG("cannot allocate memory");
 		goto err;
@@ -369,7 +369,7 @@ ia_css_isp_dvs_statistics_map_allocate(
 	me->data_allocated = !data_ptr;
 
 	if (!me->data_ptr) {
-		me->data_ptr = sh_css_malloc(isp_stats->size);
+		me->data_ptr = kvmalloc(isp_stats->size, GFP_KERNEL);
 		if (!me->data_ptr) {
 			IA_CSS_LOG("cannot allocate memory");
 			goto err;
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c
index ca34299b7998..fcde376277c0 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c
@@ -285,7 +285,7 @@ ia_css_isp_dvs2_statistics_allocate(
 	if (!grid->enable)
 		return NULL;
 
-	me = sh_css_calloc(1, sizeof(*me));
+	me = kvcalloc(1, sizeof(*me), GFP_KERNEL);
 	if (!me)
 		goto err;
 
diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
index c7083d9b3f10..bedfd9f963f7 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
@@ -927,8 +927,8 @@ ia_css_binary_init_infos(void) {
 	if (num_of_isp_binaries == 0)
 		return IA_CSS_SUCCESS;
 
-	all_binaries = sh_css_malloc(num_of_isp_binaries *
-				     sizeof(*all_binaries));
+	all_binaries = kvmalloc(num_of_isp_binaries * sizeof(*all_binaries),
+				GFP_KERNEL);
 	if (!all_binaries)
 		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 
diff --git a/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c b/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
index c7d15a01ec9a..a23faa1650c5 100644
--- a/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
+++ b/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
@@ -858,7 +858,7 @@ static struct ia_css_frame *frame_create(unsigned int width,
 	bool contiguous,
 	bool valid)
 {
-	struct ia_css_frame *me = sh_css_malloc(sizeof(*me));
+	struct ia_css_frame *me = kvmalloc(sizeof(*me), GFP_KERNEL);
 
 	if (!me)
 		return NULL;
diff --git a/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c b/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
index 6f7c21bbe62d..a631e525e00a 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
@@ -122,7 +122,9 @@ ia_css_isp_param_allocate_isp_parameters(
 			css_params->params[pclass][mem].size = size;
 			css_params->params[pclass][mem].address = 0x0;
 			if (size) {
-				mem_params->params[pclass][mem].address = sh_css_calloc(1, size);
+				mem_params->params[pclass][mem].address = kvcalloc(1,
+										   size,
+										   GFP_KERNEL);
 				if (!mem_params->params[pclass][mem].address) {
 					err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 					goto cleanup;
diff --git a/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c b/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
index f65d7491abd9..c563e5e271cb 100644
--- a/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
+++ b/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
@@ -593,7 +593,7 @@ static enum ia_css_err pipeline_stage_create(
 		out_frame[i] = stage_desc->out_frame[i];
 	}
 
-	stage = sh_css_malloc(sizeof(*stage));
+	stage = kvmalloc(sizeof(*stage), GFP_KERNEL);
 	if (!stage) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
index 546988a1a42e..5be6a0b12d4d 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
@@ -152,7 +152,7 @@ enum ia_css_err ia_css_rmgr_init_vbuf(struct ia_css_rmgr_vbuf_pool *pool)
 		bytes_needed =
 		    sizeof(void *) *
 		    pool->size;
-		pool->handles = sh_css_malloc(bytes_needed);
+		pool->handles = kvmalloc(bytes_needed, GFP_KERNEL);
 		if (pool->handles)
 			memset(pool->handles, 0, bytes_needed);
 		else
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index 835da6f12309..183da5fadfce 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -1860,35 +1860,6 @@ ia_css_enable_isys_event_queue(bool enable) {
 	return IA_CSS_SUCCESS;
 }
 
-void *sh_css_malloc(size_t size)
-{
-	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "sh_css_malloc() enter: size=%zu\n",
-			    size);
-	/* FIXME: This first test can probably go away */
-	if (size == 0)
-		return NULL;
-	if (size > PAGE_SIZE)
-		return vmalloc(size);
-	return kmalloc(size, GFP_KERNEL);
-}
-
-void *sh_css_calloc(size_t N, size_t size)
-{
-	void *p;
-
-	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-			    "sh_css_calloc() enter: N=%zu, size=%zu\n", N, size);
-
-	/* FIXME: this test can probably go away */
-	if (size > 0) {
-		p = sh_css_malloc(N * size);
-		if (p)
-			memset(p, 0, size);
-		return p;
-	}
-	return NULL;
-}
-
 void sh_css_free(void *ptr)
 {
 	if (is_vmalloc_addr(ptr))
diff --git a/drivers/staging/media/atomisp/pci/sh_css_host_data.c b/drivers/staging/media/atomisp/pci/sh_css_host_data.c
index 348183a221a8..a1b1df55e5a6 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_host_data.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_host_data.c
@@ -24,7 +24,7 @@ struct ia_css_host_data *ia_css_host_data_allocate(size_t size)
 	if (!me)
 		return NULL;
 	me->size = (uint32_t)size;
-	me->address = sh_css_malloc(size);
+	me->address = kvmalloc(size, GFP_KERNEL);
 	if (!me->address) {
 		kfree(me);
 		return NULL;
diff --git a/drivers/staging/media/atomisp/pci/sh_css_metrics.c b/drivers/staging/media/atomisp/pci/sh_css_metrics.c
index 17f6dd9afab4..44a01c0db808 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_metrics.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_metrics.c
@@ -67,13 +67,16 @@ make_histogram(struct sh_css_pc_histogram *histogram, unsigned int length)
 		return;
 	if (histogram->run)
 		return;
-	histogram->run = sh_css_malloc(length * sizeof(*histogram->run));
+	histogram->run = kvmalloc(length * sizeof(*histogram->run),
+				  GFP_KERNEL);
 	if (!histogram->run)
 		return;
-	histogram->stall = sh_css_malloc(length * sizeof(*histogram->stall));
+	histogram->stall = kvmalloc(length * sizeof(*histogram->stall),
+				    GFP_KERNEL);
 	if (!histogram->stall)
 		return;
-	histogram->msink = sh_css_malloc(length * sizeof(*histogram->msink));
+	histogram->msink = kvmalloc(length * sizeof(*histogram->msink),
+				    GFP_KERNEL);
 	if (!histogram->msink)
 		return;
 
diff --git a/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c b/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c
index 025f26a40062..48e24f7c5c28 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c
@@ -30,8 +30,8 @@ alloc_dvs_6axis_table(const struct ia_css_resolution *frame_res,
 	enum ia_css_err err = IA_CSS_SUCCESS;
 	struct ia_css_dvs_6axis_config  *dvs_config = NULL;
 
-	dvs_config = (struct ia_css_dvs_6axis_config *)sh_css_malloc(sizeof(
-			 struct ia_css_dvs_6axis_config));
+	dvs_config = kvmalloc(sizeof(struct ia_css_dvs_6axis_config),
+			      GFP_KERNEL);
 	if (!dvs_config)	{
 		IA_CSS_ERROR("out of memory");
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
@@ -57,16 +57,16 @@ alloc_dvs_6axis_table(const struct ia_css_resolution *frame_res,
 		}
 
 		/* Generate Y buffers  */
-		dvs_config->xcoords_y = (uint32_t *)sh_css_malloc(width_y * height_y * sizeof(
-					    uint32_t));
+		dvs_config->xcoords_y = kvmalloc(width_y * height_y * sizeof(uint32_t),
+						 GFP_KERNEL);
 		if (!dvs_config->xcoords_y) {
 			IA_CSS_ERROR("out of memory");
 			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 			goto exit;
 		}
 
-		dvs_config->ycoords_y = (uint32_t *)sh_css_malloc(width_y * height_y * sizeof(
-					    uint32_t));
+		dvs_config->ycoords_y = kvmalloc(width_y * height_y * sizeof(uint32_t),
+						 GFP_KERNEL);
 		if (!dvs_config->ycoords_y) {
 			IA_CSS_ERROR("out of memory");
 			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
@@ -76,16 +76,16 @@ alloc_dvs_6axis_table(const struct ia_css_resolution *frame_res,
 		/* Generate UV buffers  */
 		IA_CSS_LOG("UV W %d H %d", width_uv, height_uv);
 
-		dvs_config->xcoords_uv = (uint32_t *)sh_css_malloc(width_uv * height_uv *
-					 sizeof(uint32_t));
+		dvs_config->xcoords_uv = kvmalloc(width_uv * height_uv * sizeof(uint32_t),
+						  GFP_KERNEL);
 		if (!dvs_config->xcoords_uv) {
 			IA_CSS_ERROR("out of memory");
 			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 			goto exit;
 		}
 
-		dvs_config->ycoords_uv = (uint32_t *)sh_css_malloc(width_uv * height_uv *
-					 sizeof(uint32_t));
+		dvs_config->ycoords_uv = kvmalloc(width_uv * height_uv * sizeof(uint32_t),
+						  GFP_KERNEL);
 		if (!dvs_config->ycoords_uv) {
 			IA_CSS_ERROR("out of memory");
 			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
diff --git a/drivers/staging/media/atomisp/pci/sh_css_param_shading.c b/drivers/staging/media/atomisp/pci/sh_css_param_shading.c
index 4b648df2d073..bd47b61bbe49 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_param_shading.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_param_shading.c
@@ -360,7 +360,8 @@ ia_css_shading_table_alloc(
 	me->fraction_bits = 0;
 	for (i = 0; i < IA_CSS_SC_NUM_COLORS; i++) {
 		me->data[i] =
-		    sh_css_malloc(width * height * sizeof(*me->data[0]));
+		    kvmalloc(width * height * sizeof(*me->data[0]),
+			     GFP_KERNEL);
 		if (!me->data[i]) {
 			unsigned int j;
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
