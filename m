Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 996FA24FEAA
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 15:18:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1531087AFE;
	Mon, 24 Aug 2020 13:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hKHST0kci817; Mon, 24 Aug 2020 13:18:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1306387AC9;
	Mon, 24 Aug 2020 13:18:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E22E1BF291
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 13:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5812520435
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 13:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VhPIxOH2hugX for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 13:18:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 67CD620005
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 13:18:19 +0000 (UTC)
Received: from coco.lan (unknown [95.90.213.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73B2D2078D;
 Mon, 24 Aug 2020 13:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598275099;
 bh=VtwP7fa1SFOExf15/AISSDUFrlWtXcU639kNBNqpEBc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gQdBz0IPPbd7bg2OhTv4x1YeMnQ1iAjF9tt4+1LDn3VePqtDAoVoOTh3topcIZveq
 o5/chvCoZVKxSK0JgVWd2npRIcIo+sH/rqU+9+srx6srZ3dMBHBrN4AVEoJM3XAh2x
 0XOBp0b9GvbXZkkVGND+VEiDGNaKjxvz2+99KZek=
Date: Mon, 24 Aug 2020 15:18:07 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200824151807.59ac3c48@coco.lan>
In-Reply-To: <20200824084853.10560ed1@coco.lan>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <CALAqxLU3bt6fT4nGHZFSnzyQq4xJo2On=c_Oa9ONED9-jhaFgw@mail.gmail.com>
 <CALAqxLW98nVc-=8Q6nx-wRP1z8pzkw1_zNc9M7V3GhnJQqM9rg@mail.gmail.com>
 <CALAqxLULQvW3UikCHpEzSDnpeYnBy8wDSsWZNbSrmivQTW3_Sg@mail.gmail.com>
 <20200824084853.10560ed1@coco.lan>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 driverdevel <devel@driverdev.osuosl.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 David Airlie <airlied@linux.ie>, Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Bogdan Togorean <bogdan.togorean@analog.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 linux-media <linux-media@vger.kernel.org>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Liwei Cai <cailiwei@hisilicon.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 mauro.chehab@huawei.com, Rob Clark <robdclark@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Liuyao An <anliuyao@huawei.com>,
 Daniel Vetter <daniel@ffwll.ch>, Network Development <netdev@vger.kernel.org>,
 Rongrong Zou <zourongrong@gmail.com>, BPF Mailing List <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 24 Aug 2020 08:49:30 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> Hi John,
> 
> Em Wed, 19 Aug 2020 20:28:44 -0700
> John Stultz <john.stultz@linaro.org> escreveu:
> 
> 
> > That said even with the patches I've got on top of your series, I
> > still see a few issues:
> > 1) I'm seeing red-blue swap with your driver.  I need to dig a bit to
> > see what the difference is, I know gralloc has a config option for
> > this, and maybe the version of the driver I'm carrying has it wrong?  
> 
> Maybe it is due to this:
> 
> 	drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c:      hal_fmt = HISI_FB_PIXEL_FORMAT_BGRA_8888;/* dss_get_format(fb->pixel_format); */
> 
> It sounds to me that someone added a hack hardcoding BGRA_8888 over
> there.
> 
> Btw, I removed the hack, with:
> 
> 
> diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
> index a68db1a27bbf..ba64aae371e4 100644
> --- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
> +++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
> @@ -857,7 +857,7 @@ void hisi_fb_pan_display(struct drm_plane *plane)
>         rect.right = src_w - 1;
>         rect.top = 0;
>         rect.bottom = src_h - 1;
> -       hal_fmt = HISI_FB_PIXEL_FORMAT_BGRA_8888;/* dss_get_format(fb->pixel_format); */
> +       hal_fmt = dss_get_format(fb->format->format);
>  
>         DRM_DEBUG_DRIVER("channel%d: src:(%d,%d, %dx%d) crtc:(%d,%d, %dx%d), rect(%d,%d,%d,%d),fb:%dx%d, pixel_format=%d, stride=%d, paddr=0x%x, bpp=%d.\n",
>                          chn_idx, src_x, src_y, src_w, src_h,
> 
> 
> And now red and blue are swapped on my HDMI screen too.
> 
> I'll compare this part with your version, but I guess the bug is
> on this logic.

It sounds to me that the Hikey 960 version on your tree has some color 
inversion hack, just for ARGB 32 bpp. See:

	static const struct kirin_format dpe_formats[] = {
		{ DRM_FORMAT_RGB565, DPE_RGB_565 },
		{ DRM_FORMAT_BGR565, DPE_BGR_565 },
		{ DRM_FORMAT_XRGB8888, DPE_RGBX_8888 },
		{ DRM_FORMAT_XBGR8888, DPE_BGRX_8888 },
		{ DRM_FORMAT_RGBA8888, DPE_RGBA_8888 },
		{ DRM_FORMAT_BGRA8888, DPE_BGRA_8888 },
		{ DRM_FORMAT_ARGB8888, DPE_BGRA_8888 },
		{ DRM_FORMAT_ABGR8888, DPE_RGBA_8888 },
	};

The last two lines are weird, as they're reverting the byte order,
If there's some endiannes issue (which the change from ARGB->ABGR 
seems to imply), I would expect to have something similar for the 
other formats as well.

I did some tests here: both FB and X11 sets bpp to 24 bits.

Trying to use "startx -- -depth 32" don't work:

	"Default Screen Section" for depth/fbbpp 32/32
	[   129.250] (EE) modeset(0): Given depth (32) is not supported by the driver

Which sounds weird, as the driver announces 32 bit formats. 
I suspect that this could be related to the valid modes hack at 
the driver.

Btw, there are some color shift also with --depth 16, but replacing
BGR <=> RGB didn't work.

Did you test the different bpp resolutions with the driver on your
tree? The enclosed patch makes 24 bits bpp work here.

Thanks,
Mauro

-

[PATCH] staging: kirin9xx/gpu: rework the colorspace mode setting logic

There are some problems when setting the fourcc KMS:
The original code hardcodes BGRA_8888. The real issue here seems
to be that the byte order is different than the one for Kirin 620.

Instead of addressing it, the origincla code just used a fixed
mode. A port of the Hikey 960 DPE driver based on Kernel 5.0,
found at:

	https://git.linaro.org/people/john.stultz/android-dev.git/tree/drivers/gpu/drm/hisilicon/kirin/kirin_drm_dpe.c?h=dev/hikey960-mainline-WIP

contains a hack that swaps the byte order for 32-bits
ARGB/BRGR (see the last two lines):

		{ DRM_FORMAT_RGB565, DPE_RGB_565 },
		{ DRM_FORMAT_BGR565, DPE_BGR_565 },
		{ DRM_FORMAT_XRGB8888, DPE_RGBX_8888 },
		{ DRM_FORMAT_XBGR8888, DPE_BGRX_8888 },
		{ DRM_FORMAT_RGBA8888, DPE_RGBA_8888 },
		{ DRM_FORMAT_BGRA8888, DPE_BGRA_8888 },
		{ DRM_FORMAT_ARGB8888, DPE_BGRA_8888 },
		{ DRM_FORMAT_ABGR8888, DPE_RGBA_8888 },

But the same change was not applied to other modesets.

The Hikey 960 port was tested with AOSP, which seems to
be using ABGR format. Here, the chosen fourcc was
XBGR 32 bpp instead. I suspect that the original developer
also found a similar issue and decided to hardcode the
fourcc format.

That's said, currently the drivers uses some code instead of
tables in order to seek for the register settings. The version
from John Stultz tre for Kirin 960 that does a better approach
of using tables instead of code.

I opted to use the same code as the basis for the new logic,
as it makes easier to identify what the driver is actually doing.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_dpe.h b/drivers/staging/hikey9xx/gpu/kirin9xx_dpe.h
index e05522f85df8..26add227c389 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_dpe.h
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_dpe.h
@@ -144,6 +144,39 @@ enum dss_dma_format {
 	DMA_PIXEL_FORMAT_AYUV_4444,
 };
 
+enum dpe_fb_format {
+	DPE_RGB_565 = 0,
+	DPE_RGBX_4444,
+	DPE_RGBA_4444,
+	DPE_RGBX_5551,
+	DPE_RGBA_5551,
+	DPE_RGBX_8888,
+	DPE_RGBA_8888,
+	DPE_BGR_565,
+	DPE_BGRX_4444,
+	DPE_BGRA_4444,
+	DPE_BGRX_5551,
+	DPE_BGRA_5551,
+	DPE_BGRX_8888,
+	DPE_BGRA_8888,
+	DPE_YUV_422_I,
+	/* YUV Semi-planar */
+	DPE_YCbCr_422_SP,
+	DPE_YCrCb_422_SP,
+	DPE_YCbCr_420_SP,
+	DPE_YCrCb_420_SP,
+	/* YUV Planar */
+	DPE_YCbCr_422_P,
+	DPE_YCrCb_422_P,
+	DPE_YCbCr_420_P,
+	DPE_YCrCb_420_P,
+	/* YUV Package */
+	DPE_YUYV_422_Pkg,
+	DPE_UYVY_422_Pkg,
+	DPE_YVYU_422_Pkg,
+	DPE_VYUY_422_Pkg,
+};
+
 enum dss_buf_format {
 	DSS_BUF_LINEAR = 0,
 	DSS_BUF_TILE,
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h
index 8034c5134b25..a3071388a86c 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h
@@ -22,46 +22,7 @@ enum dss_channel {
 
 #define PRIMARY_CH	DSS_CH1 /* primary plane */
 
-enum hisi_fb_pixel_format {
-	HISI_FB_PIXEL_FORMAT_RGB_565 = 0,
-	HISI_FB_PIXEL_FORMAT_RGBX_4444,
-	HISI_FB_PIXEL_FORMAT_RGBA_4444,
-	HISI_FB_PIXEL_FORMAT_RGBX_5551,
-	HISI_FB_PIXEL_FORMAT_RGBA_5551,
-	HISI_FB_PIXEL_FORMAT_RGBX_8888,
-	HISI_FB_PIXEL_FORMAT_RGBA_8888,
-
-	HISI_FB_PIXEL_FORMAT_BGR_565,
-	HISI_FB_PIXEL_FORMAT_BGRX_4444,
-	HISI_FB_PIXEL_FORMAT_BGRA_4444,
-	HISI_FB_PIXEL_FORMAT_BGRX_5551,
-	HISI_FB_PIXEL_FORMAT_BGRA_5551,
-	HISI_FB_PIXEL_FORMAT_BGRX_8888,
-	HISI_FB_PIXEL_FORMAT_BGRA_8888,
-
-	HISI_FB_PIXEL_FORMAT_YUV_422_I,
-
-	/* YUV Semi-planar */
-	HISI_FB_PIXEL_FORMAT_YCbCr_422_SP,	/* NV16 */
-	HISI_FB_PIXEL_FORMAT_YCrCb_422_SP,
-	HISI_FB_PIXEL_FORMAT_YCbCr_420_SP,
-	HISI_FB_PIXEL_FORMAT_YCrCb_420_SP,	/* NV21 */
-
-	/* YUV Planar */
-	HISI_FB_PIXEL_FORMAT_YCbCr_422_P,
-	HISI_FB_PIXEL_FORMAT_YCrCb_422_P,
-	HISI_FB_PIXEL_FORMAT_YCbCr_420_P,
-	HISI_FB_PIXEL_FORMAT_YCrCb_420_P,	/* HISI_FB_PIXEL_FORMAT_YV12 */
-
-	/* YUV Package */
-	HISI_FB_PIXEL_FORMAT_YUYV_422,
-	HISI_FB_PIXEL_FORMAT_UYVY_422,
-	HISI_FB_PIXEL_FORMAT_YVYU_422,
-	HISI_FB_PIXEL_FORMAT_VYUY_422,
-	HISI_FB_PIXEL_FORMAT_MAX,
-
-	HISI_FB_PIXEL_FORMAT_UNSUPPORT = 800
-};
+#define HISI_FB_PIXEL_FORMAT_UNSUPPORT 800
 
 struct dss_hw_ctx {
 	struct drm_device *dev;
@@ -155,12 +116,6 @@ struct dss_data {
 	struct dss_hw_ctx ctx;
 };
 
-/* ade-format info: */
-struct dss_format {
-	u32 pixel_format;
-	enum hisi_fb_pixel_format dss_format;
-};
-
 struct dss_img {
 	u32 format;
 	u32 width;
@@ -266,8 +221,10 @@ int hisi_dss_mctl_mutex_lock(struct dss_hw_ctx *ctx);
 int hisi_dss_mctl_mutex_unlock(struct dss_hw_ctx *ctx);
 int hisi_dss_ovl_base_config(struct dss_hw_ctx *ctx, u32 xres, u32 yres);
 
+u32 hisi_dss_get_channel_formats(struct drm_device *dev, u8 ch, const u32 **formats);
+
 void hisi_fb_pan_display(struct drm_plane *plane);
 
-u32 dss_get_format(struct drm_device *dev, u32 pixel_format);
+u32 dpe_get_format(struct dss_hw_ctx *ctx, u32 pixel_format);
 
 #endif
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
index 9bc114a33885..93eb9bf8b305 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
@@ -38,58 +38,6 @@
 #include "kirin9xx_drm_dpe_utils.h"
 #include "kirin9xx_dpe.h"
 
-static const struct dss_format dss_formats[] = {
-	/* 16bpp RGB: */
-	{ DRM_FORMAT_RGB565, HISI_FB_PIXEL_FORMAT_RGB_565 },
-	{ DRM_FORMAT_BGR565, HISI_FB_PIXEL_FORMAT_BGR_565 },
-	/* 32bpp [A]RGB: */
-	{ DRM_FORMAT_XRGB8888, HISI_FB_PIXEL_FORMAT_RGBX_8888 },
-	{ DRM_FORMAT_XBGR8888, HISI_FB_PIXEL_FORMAT_BGRX_8888 },
-	{ DRM_FORMAT_RGBA8888, HISI_FB_PIXEL_FORMAT_RGBA_8888 },
-	{ DRM_FORMAT_BGRA8888, HISI_FB_PIXEL_FORMAT_BGRA_8888 },
-	{ DRM_FORMAT_ARGB8888, HISI_FB_PIXEL_FORMAT_RGBA_8888 },
-	{ DRM_FORMAT_ABGR8888, HISI_FB_PIXEL_FORMAT_BGRA_8888 },
-};
-
-static const u32 channel_formats1[] = {
-	DRM_FORMAT_RGB565,
-	DRM_FORMAT_BGR565,
-	DRM_FORMAT_XRGB8888,
-	DRM_FORMAT_XBGR8888,
-	DRM_FORMAT_RGBA8888,
-	DRM_FORMAT_BGRA8888,
-	DRM_FORMAT_ARGB8888,
-	DRM_FORMAT_ABGR8888,
-};
-
-u32 dss_get_channel_formats(struct drm_device *dev, u8 ch, const u32 **formats)
-{
-	switch (ch) {
-	case DSS_CH1:
-		*formats = channel_formats1;
-		return ARRAY_SIZE(channel_formats1);
-	default:
-		drm_err(dev, "no formats for channel %d\n", ch);
-		*formats = NULL;
-		return 0;
-	}
-}
-
-/* convert from fourcc format to dss format */
-u32 dss_get_format(struct drm_device *dev, u32 pixel_format)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(dss_formats); i++)
-		if (dss_formats[i].pixel_format == pixel_format)
-			return dss_formats[i].dss_format;
-
-	/* not found */
-	drm_err(dev, "Not found pixel format!!fourcc_format= %d\n",
-		pixel_format);
-	return HISI_FB_PIXEL_FORMAT_UNSUPPORT;
-}
-
 /*****************************************************************************/
 
 int hdmi_pxl_ppll7_init(struct dss_hw_ctx *ctx, u64 pixel_clock)
@@ -616,6 +564,8 @@ static int dss_plane_atomic_check(struct drm_plane *plane,
 {
 	struct drm_framebuffer *fb = state->fb;
 	struct drm_crtc *crtc = state->crtc;
+	struct dss_crtc *acrtc = to_dss_crtc(crtc);
+	struct dss_hw_ctx *ctx = acrtc->ctx;
 	struct drm_crtc_state *crtc_state;
 	u32 src_x = state->src_x >> 16;
 	u32 src_y = state->src_y >> 16;
@@ -630,7 +580,7 @@ static int dss_plane_atomic_check(struct drm_plane *plane,
 	if (!crtc || !fb)
 		return 0;
 
-	fmt = dss_get_format(plane->dev, fb->format->format);
+	fmt = dpe_get_format(ctx, fb->format->format);
 	if (fmt == HISI_FB_PIXEL_FORMAT_UNSUPPORT)
 		return -EINVAL;
 
@@ -706,7 +656,7 @@ static int dss_plane_init(struct drm_device *dev, struct dss_plane *aplane,
 	int ret = 0;
 
 	/* get properties */
-	fmts_cnt = dss_get_channel_formats(dev, aplane->ch, &fmts);
+	fmts_cnt = hisi_dss_get_channel_formats(dev, aplane->ch, &fmts);
 	if (ret)
 		return ret;
 
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
index a68db1a27bbf..fb034337d689 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
@@ -22,168 +22,118 @@ static const int mid_array[DSS_CHN_MAX_DEFINE] = {
 	0xb, 0xa, 0x9, 0x8, 0x7, 0x6, 0x5, 0x4, 0x2, 0x1, 0x3, 0x0
 };
 
-static int hisi_pixel_format_hal2dma(int format)
+struct dpe_format {
+	u32 pixel_format;
+	enum dpe_fb_format dpe_format;
+};
+
+static const struct dpe_format dpe_formats[] = {
+	{ DRM_FORMAT_RGB565, DPE_RGB_565 },
+	{ DRM_FORMAT_BGR565, DPE_BGR_565 },
+	{ DRM_FORMAT_XRGB8888, DPE_BGRX_8888 },
+	{ DRM_FORMAT_XBGR8888, DPE_RGBX_8888 },
+	{ DRM_FORMAT_RGBA8888, DPE_RGBA_8888 },
+	{ DRM_FORMAT_BGRA8888, DPE_BGRA_8888 },
+	{ DRM_FORMAT_ARGB8888, DPE_RGBA_8888 },
+	{ DRM_FORMAT_ABGR8888, DPE_BGRA_8888 },
+};
+
+static const u32 dpe_channel_formats[] = {
+	DRM_FORMAT_RGB565,
+	DRM_FORMAT_BGR565,
+	DRM_FORMAT_XRGB8888,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_RGBA8888,
+	DRM_FORMAT_BGRA8888,
+	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_ABGR8888,
+};
+
+static u32 dpe_pixel_dma_format_map[] = {
+	DMA_PIXEL_FORMAT_RGB_565,
+	DMA_PIXEL_FORMAT_XRGB_4444,
+	DMA_PIXEL_FORMAT_ARGB_4444,
+	DMA_PIXEL_FORMAT_XRGB_5551,
+	DMA_PIXEL_FORMAT_ARGB_5551,
+	DMA_PIXEL_FORMAT_XRGB_8888,
+	DMA_PIXEL_FORMAT_ARGB_8888,
+	DMA_PIXEL_FORMAT_RGB_565,
+	DMA_PIXEL_FORMAT_XRGB_4444,
+	DMA_PIXEL_FORMAT_ARGB_4444,
+	DMA_PIXEL_FORMAT_XRGB_5551,
+	DMA_PIXEL_FORMAT_ARGB_5551,
+	DMA_PIXEL_FORMAT_XRGB_8888,
+	DMA_PIXEL_FORMAT_ARGB_8888,
+	DMA_PIXEL_FORMAT_YUYV_422,
+	DMA_PIXEL_FORMAT_YUV_422_SP_HP,
+	DMA_PIXEL_FORMAT_YUV_422_SP_HP,
+	DMA_PIXEL_FORMAT_YUV_420_SP_HP,
+	DMA_PIXEL_FORMAT_YUV_420_SP_HP,
+	DMA_PIXEL_FORMAT_YUV_422_P_HP,
+	DMA_PIXEL_FORMAT_YUV_422_P_HP,
+	DMA_PIXEL_FORMAT_YUV_420_P_HP,
+	DMA_PIXEL_FORMAT_YUV_420_P_HP,
+	DMA_PIXEL_FORMAT_YUYV_422,
+	DMA_PIXEL_FORMAT_YUYV_422,
+	DMA_PIXEL_FORMAT_YUYV_422,
+	DMA_PIXEL_FORMAT_YUYV_422,
+};
+
+static u32 dpe_pixel_dfc_format_map[] = {
+	DFC_PIXEL_FORMAT_RGB_565,
+	DFC_PIXEL_FORMAT_XBGR_4444,
+	DFC_PIXEL_FORMAT_ABGR_4444,
+	DFC_PIXEL_FORMAT_XBGR_5551,
+	DFC_PIXEL_FORMAT_ABGR_5551,
+	DFC_PIXEL_FORMAT_XBGR_8888,
+	DFC_PIXEL_FORMAT_ABGR_8888,
+	DFC_PIXEL_FORMAT_BGR_565,
+	DFC_PIXEL_FORMAT_XRGB_4444,
+	DFC_PIXEL_FORMAT_ARGB_4444,
+	DFC_PIXEL_FORMAT_XRGB_5551,
+	DFC_PIXEL_FORMAT_ARGB_5551,
+	DFC_PIXEL_FORMAT_XRGB_8888,
+	DFC_PIXEL_FORMAT_ARGB_8888,
+	DFC_PIXEL_FORMAT_YUYV422,
+	DFC_PIXEL_FORMAT_YUYV422,
+	DFC_PIXEL_FORMAT_YVYU422,
+	DFC_PIXEL_FORMAT_YUYV422,
+	DFC_PIXEL_FORMAT_YVYU422,
+	DFC_PIXEL_FORMAT_YUYV422,
+	DFC_PIXEL_FORMAT_YVYU422,
+	DFC_PIXEL_FORMAT_YUYV422,
+	DFC_PIXEL_FORMAT_YVYU422,
+	DFC_PIXEL_FORMAT_YUYV422,
+	DFC_PIXEL_FORMAT_UYVY422,
+	DFC_PIXEL_FORMAT_YVYU422,
+	DFC_PIXEL_FORMAT_VYUY422,
+};
+
+u32 dpe_get_format(struct dss_hw_ctx *ctx, u32 pixel_format)
 {
-	int ret = 0;
-
-	switch (format) {
-	case HISI_FB_PIXEL_FORMAT_RGB_565:
-	case HISI_FB_PIXEL_FORMAT_BGR_565:
-		ret = DMA_PIXEL_FORMAT_RGB_565;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBX_4444:
-	case HISI_FB_PIXEL_FORMAT_BGRX_4444:
-		ret = DMA_PIXEL_FORMAT_XRGB_4444;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBA_4444:
-	case HISI_FB_PIXEL_FORMAT_BGRA_4444:
-		ret = DMA_PIXEL_FORMAT_ARGB_4444;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBX_5551:
-	case HISI_FB_PIXEL_FORMAT_BGRX_5551:
-		ret = DMA_PIXEL_FORMAT_XRGB_5551;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBA_5551:
-	case HISI_FB_PIXEL_FORMAT_BGRA_5551:
-		ret = DMA_PIXEL_FORMAT_ARGB_5551;
-		break;
-
-	case HISI_FB_PIXEL_FORMAT_RGBX_8888:
-	case HISI_FB_PIXEL_FORMAT_BGRX_8888:
-		ret = DMA_PIXEL_FORMAT_XRGB_8888;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBA_8888:
-	case HISI_FB_PIXEL_FORMAT_BGRA_8888:
-		ret = DMA_PIXEL_FORMAT_ARGB_8888;
-		break;
-
-	case HISI_FB_PIXEL_FORMAT_YUV_422_I:
-	case HISI_FB_PIXEL_FORMAT_YUYV_422:
-	case HISI_FB_PIXEL_FORMAT_YVYU_422:
-	case HISI_FB_PIXEL_FORMAT_UYVY_422:
-	case HISI_FB_PIXEL_FORMAT_VYUY_422:
-		ret = DMA_PIXEL_FORMAT_YUYV_422;
-		break;
-
-	case HISI_FB_PIXEL_FORMAT_YCbCr_422_P:
-	case HISI_FB_PIXEL_FORMAT_YCrCb_422_P:
-		ret = DMA_PIXEL_FORMAT_YUV_422_P_HP;
-		break;
-	case HISI_FB_PIXEL_FORMAT_YCbCr_420_P:
-	case HISI_FB_PIXEL_FORMAT_YCrCb_420_P:
-		ret = DMA_PIXEL_FORMAT_YUV_420_P_HP;
-		break;
-
-	case HISI_FB_PIXEL_FORMAT_YCbCr_422_SP:
-	case HISI_FB_PIXEL_FORMAT_YCrCb_422_SP:
-		ret = DMA_PIXEL_FORMAT_YUV_422_SP_HP;
-		break;
-	case HISI_FB_PIXEL_FORMAT_YCbCr_420_SP:
-	case HISI_FB_PIXEL_FORMAT_YCrCb_420_SP:
-		ret = DMA_PIXEL_FORMAT_YUV_420_SP_HP;
-		break;
-
-	default:
-		DRM_ERROR("not support format(%d)!\n", format);
-		ret = -1;
-		break;
+	int i;
+	const struct dpe_format *fmt = dpe_formats;
+	u32 size = ARRAY_SIZE(dpe_formats);
+
+
+	for (i = 0; i < size; i++) {
+		if (fmt[i].pixel_format == pixel_format) {
+			drm_info(ctx->dev, "requested fourcc %x, dpe format %d",
+				 pixel_format, fmt[i].dpe_format);
+			return fmt[i].dpe_format;
+		}
 	}
 
-	return ret;
+	drm_err(ctx->dev, "Not found pixel format! fourcc = %x\n",
+		pixel_format);
+
+	return HISI_FB_PIXEL_FORMAT_UNSUPPORT;
 }
 
-static int hisi_pixel_format_hal2dfc(int format)
+u32 hisi_dss_get_channel_formats(struct drm_device *dev, u8 ch, const u32 **formats)
 {
-	int ret = 0;
-
-	switch (format) {
-	case HISI_FB_PIXEL_FORMAT_RGB_565:
-		ret = DFC_PIXEL_FORMAT_RGB_565;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBX_4444:
-		ret = DFC_PIXEL_FORMAT_XBGR_4444;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBA_4444:
-		ret = DFC_PIXEL_FORMAT_ABGR_4444;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBX_5551:
-		ret = DFC_PIXEL_FORMAT_XBGR_5551;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBA_5551:
-		ret = DFC_PIXEL_FORMAT_ABGR_5551;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBX_8888:
-		ret = DFC_PIXEL_FORMAT_XBGR_8888;
-		break;
-	case HISI_FB_PIXEL_FORMAT_RGBA_8888:
-		ret = DFC_PIXEL_FORMAT_ABGR_8888;
-		break;
-
-	case HISI_FB_PIXEL_FORMAT_BGR_565:
-		ret = DFC_PIXEL_FORMAT_BGR_565;
-		break;
-	case HISI_FB_PIXEL_FORMAT_BGRX_4444:
-		ret = DFC_PIXEL_FORMAT_XRGB_4444;
-		break;
-	case HISI_FB_PIXEL_FORMAT_BGRA_4444:
-		ret = DFC_PIXEL_FORMAT_ARGB_4444;
-		break;
-	case HISI_FB_PIXEL_FORMAT_BGRX_5551:
-		ret = DFC_PIXEL_FORMAT_XRGB_5551;
-		break;
-	case HISI_FB_PIXEL_FORMAT_BGRA_5551:
-		ret = DFC_PIXEL_FORMAT_ARGB_5551;
-		break;
-	case HISI_FB_PIXEL_FORMAT_BGRX_8888:
-		ret = DFC_PIXEL_FORMAT_XRGB_8888;
-		break;
-	case HISI_FB_PIXEL_FORMAT_BGRA_8888:
-		ret = DFC_PIXEL_FORMAT_ARGB_8888;
-		break;
-
-	case HISI_FB_PIXEL_FORMAT_YUV_422_I:
-	case HISI_FB_PIXEL_FORMAT_YUYV_422:
-		ret = DFC_PIXEL_FORMAT_YUYV422;
-		break;
-	case HISI_FB_PIXEL_FORMAT_YVYU_422:
-		ret = DFC_PIXEL_FORMAT_YVYU422;
-		break;
-	case HISI_FB_PIXEL_FORMAT_UYVY_422:
-		ret = DFC_PIXEL_FORMAT_UYVY422;
-		break;
-	case HISI_FB_PIXEL_FORMAT_VYUY_422:
-		ret = DFC_PIXEL_FORMAT_VYUY422;
-		break;
-
-	case HISI_FB_PIXEL_FORMAT_YCbCr_422_SP:
-		ret = DFC_PIXEL_FORMAT_YUYV422;
-		break;
-	case HISI_FB_PIXEL_FORMAT_YCrCb_422_SP:
-		ret = DFC_PIXEL_FORMAT_YVYU422;
-		break;
-	case HISI_FB_PIXEL_FORMAT_YCbCr_420_SP:
-		ret = DFC_PIXEL_FORMAT_YUYV422;
-		break;
-	case HISI_FB_PIXEL_FORMAT_YCrCb_420_SP:
-		ret = DFC_PIXEL_FORMAT_YVYU422;
-		break;
-
-	case HISI_FB_PIXEL_FORMAT_YCbCr_422_P:
-	case HISI_FB_PIXEL_FORMAT_YCbCr_420_P:
-		ret = DFC_PIXEL_FORMAT_YUYV422;
-		break;
-	case HISI_FB_PIXEL_FORMAT_YCrCb_422_P:
-	case HISI_FB_PIXEL_FORMAT_YCrCb_420_P:
-		ret = DFC_PIXEL_FORMAT_YVYU422;
-		break;
-
-	default:
-		DRM_ERROR("not support format(%d)!\n", format);
-		ret = -1;
-		break;
-	}
-
-	return ret;
+	*formats = dpe_channel_formats;
+	return ARRAY_SIZE(dpe_channel_formats);
 }
 
 static int hisi_dss_aif_ch_config(struct dss_hw_ctx *ctx, int chn_idx)
@@ -347,8 +297,10 @@ static int hisi_dss_mctl_sys_config(struct dss_hw_ctx *ctx, int chn_idx)
 }
 
 static int hisi_dss_rdma_config(struct dss_hw_ctx *ctx,
-				const struct dss_rect_ltrb *rect, u32 display_addr, u32 hal_format,
-	u32 bpp, int chn_idx, bool afbcd, bool mmu_enable)
+				const struct dss_rect_ltrb *rect,
+				u32 display_addr, u32 hal_format,
+				u32 bpp, int chn_idx, bool afbcd,
+				bool mmu_enable)
 {
 	void __iomem *rdma_base;
 
@@ -358,7 +310,6 @@ static int hisi_dss_rdma_config(struct dss_hw_ctx *ctx,
 	u32 rdma_oft_x1 = 0;
 	u32 rdma_oft_y1 = 0;
 	u32 rdma_stride = 0;
-	u32 rdma_bpp = 0;
 	u32 rdma_format = 0;
 	u32 stretch_size_vrt = 0;
 
@@ -371,18 +322,6 @@ static int hisi_dss_rdma_config(struct dss_hw_ctx *ctx,
 	u32 afbcd_payload_addr = 0;
 	u32 afbcd_payload_stride = 0;
 
-	if (!ctx) {
-		DRM_ERROR("ctx is NULL!\n");
-		return -1;
-	}
-
-	if (bpp == 4)
-		rdma_bpp = 0x5;
-	else if (bpp == 2)
-		rdma_bpp = 0x0;
-	else
-		rdma_bpp = 0x0;
-
 	rdma_base = ctx->base +
 		ctx->g_dss_module_base[chn_idx][MODULE_DMA];
 
@@ -392,11 +331,7 @@ static int hisi_dss_rdma_config(struct dss_hw_ctx *ctx,
 	rdma_oft_x1 = rect->right / aligned_pixel;
 	rdma_oft_y1 = rect->bottom;
 
-	rdma_format = hisi_pixel_format_hal2dma(hal_format);
-	if (rdma_format < 0) {
-		DRM_ERROR("layer format(%d) not support !\n", hal_format);
-		return -EINVAL;
-	}
+	rdma_format = dpe_pixel_dma_format_map[hal_format];
 
 	if (afbcd) {
 		mm_base_0 = 0;
@@ -470,10 +405,9 @@ static int hisi_dss_rdma_config(struct dss_hw_ctx *ctx,
 		set_reg(rdma_base + DMA_OFT_Y0, rdma_oft_y0, 16, 0);
 		set_reg(rdma_base + DMA_OFT_X1, rdma_oft_x1, 12, 0);
 		set_reg(rdma_base + DMA_OFT_Y1, rdma_oft_y1, 16, 0);
-		/* set_reg(rdma_base + DMA_CTRL, rdma_format, 5, 3); */
-		/* set_reg(rdma_base + DMA_CTRL, (mmu_enable ? 0x1 : 0x0), 1, 8); */
+		set_reg(rdma_base + DMA_CTRL, rdma_format, 5, 3);
+		set_reg(rdma_base + DMA_CTRL, (mmu_enable ? 0x1 : 0x0), 1, 8);
 		set_reg(rdma_base + DMA_CTRL, 0x130, 32, 0);
-		/* set_reg(rdma_base + DMA_CTRL, (mmu_enable ? 0x1 : 0x0), 1, 8); */
 		set_reg(rdma_base + DMA_STRETCH_SIZE_VRT, stretch_size_vrt, 32, 0);
 		set_reg(rdma_base + DMA_DATA_ADDR0, display_addr, 32, 0);
 		set_reg(rdma_base + DMA_STRIDE0, rdma_stride, 13, 0);
@@ -495,11 +429,6 @@ static int hisi_dss_rdfc_config(struct dss_hw_ctx *ctx,
 	u32 size_vrt = 0;
 	u32 dfc_fmt = 0;
 
-	if (!ctx) {
-		DRM_ERROR("ctx is NULL!\n");
-		return -1;
-	}
-
 	rdfc_base = ctx->base +
 		ctx->g_dss_module_base[chn_idx][MODULE_DFC];
 
@@ -507,15 +436,11 @@ static int hisi_dss_rdfc_config(struct dss_hw_ctx *ctx,
 	size_hrz = rect->right - rect->left;
 	size_vrt = rect->bottom - rect->top;
 
-	dfc_fmt = hisi_pixel_format_hal2dfc(hal_format);
-	if (dfc_fmt < 0) {
-		DRM_ERROR("layer format (%d) not support !\n", hal_format);
-		return -EINVAL;
-	}
+	dfc_fmt = dpe_pixel_dfc_format_map[hal_format];
 
-	set_reg(rdfc_base + DFC_DISP_SIZE, (size_vrt | (size_hrz << 16)), 29, 0);
+	set_reg(rdfc_base + DFC_DISP_SIZE, (size_vrt | (size_hrz << 16)),
+		29, 0);
 	set_reg(rdfc_base + DFC_PIX_IN_NUM, dfc_pix_in_num, 1, 0);
-	/* set_reg(rdfc_base + DFC_DISP_FMT, (bpp <= 2) ? 0x0 : 0x6, 5, 1); */
 	set_reg(rdfc_base + DFC_DISP_FMT, dfc_fmt, 5, 1);
 	set_reg(rdfc_base + DFC_CTL_CLIP_EN, 0x1, 1, 0);
 	set_reg(rdfc_base + DFC_ICG_MODULE, 0x1, 1, 0);
@@ -857,7 +782,7 @@ void hisi_fb_pan_display(struct drm_plane *plane)
 	rect.right = src_w - 1;
 	rect.top = 0;
 	rect.bottom = src_h - 1;
-	hal_fmt = HISI_FB_PIXEL_FORMAT_BGRA_8888;/* dss_get_format(fb->pixel_format); */
+	hal_fmt = dpe_get_format(ctx, fb->format->format);
 
 	DRM_DEBUG_DRIVER("channel%d: src:(%d,%d, %dx%d) crtc:(%d,%d, %dx%d), rect(%d,%d,%d,%d),fb:%dx%d, pixel_format=%d, stride=%d, paddr=0x%x, bpp=%d.\n",
 			 chn_idx, src_x, src_y, src_w, src_h,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
