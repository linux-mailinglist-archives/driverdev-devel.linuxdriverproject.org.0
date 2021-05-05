Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 782E3373E4F
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 May 2021 17:18:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9A5740F71;
	Wed,  5 May 2021 15:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RwqUY0NfufmC; Wed,  5 May 2021 15:18:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B58E40388;
	Wed,  5 May 2021 15:18:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D1CE1BF3AD
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 15:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0305040381
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 15:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y0jIeAHCJtoE for <devel@linuxdriverproject.org>;
 Wed,  5 May 2021 15:18:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E1F9840388
 for <devel@driverdev.osuosl.org>; Wed,  5 May 2021 15:18:08 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 s5-20020a7bc0c50000b0290147d0c21c51so1355118wmh.4
 for <devel@driverdev.osuosl.org>; Wed, 05 May 2021 08:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynesim-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:references:in-reply-to
 :user-agent:mime-version:content-transfer-encoding;
 bh=TfAnoiyhV+Z09G0GA+tcCNjs/YV2vvtrOh2X+fFwA7A=;
 b=UyzvQD43RrH8HN0tRXh+S4kPKxLLqTxcAsoAzHIlVsqJGmrIFeDVHf/QgT13vdRJFx
 3xOJa6Ucez9q2GObA0jOjUJfFQsrCJ/WapRgcOs08uE/2eTes1FZrAIUMK9Ci9HxSusI
 rzrj02MCjK/eZtWqF9AH1oQSWGEqgAeq+uhmYd1joS7snD9lXUMBqyqGSbWCeNAXI2UC
 AI1QWUr5Ks8meduoKRF+pSSniBQjkM1sxIfDUCLe+JQLv514GldGM+lTjzCLGo+BaxRn
 zblddZUMOk1zGS+qPYmko93lZ85kFypxtb/XvVC+upJa/XFgqOno/L0ggZCBQ4InZWUb
 00Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:references
 :in-reply-to:user-agent:mime-version:content-transfer-encoding;
 bh=TfAnoiyhV+Z09G0GA+tcCNjs/YV2vvtrOh2X+fFwA7A=;
 b=YFSeiqDI22OZIvEg9PcCNcAx15Bk1gt2EhpP8FQcaBtlp6qoEJ+ZY5nPlJL1dMCn2G
 km6HpR227Ur06SCVfgzsjB13mZLT5UbrozAH8XOzuDMoLSvf2FUvXmBcCh6rS9RwzGaY
 6R4GqheknSPuX2E9kzSAWMztDWOtclDzOMQOrl7S6vT4XFppX8QONnu0dGSgCMLTisHr
 2IoCiRcq8UoFxQvLnDkjEgRTK5wf8lY70ndGEn5pKqDYk0DRTvL/s9RQ1fiH7w+Ch0Bf
 1hObpYcmo0BSF/OWyZw+o7ptcBci2ZAeaPdBv0BFNykhyojmhUf5D9lbVcgMcKRCPlDU
 ipOQ==
X-Gm-Message-State: AOAM533xnxc47akVK9PNw+i49Xhng9dQ75yE+OrbIUgnk4oFy95S49Wk
 VUL9lpQJFJLZ7YEOJ5YfQi5EBQ==
X-Google-Smtp-Source: ABdhPJyHndaGkURk6bVTdnyc6vFbT0sT8jqvwJ4aoftxCkncVRQimQ9YzkMukIQrIcenRhYqY439CQ==
X-Received: by 2002:a05:600c:284:: with SMTP id
 4mr20003728wmk.88.1620227886676; 
 Wed, 05 May 2021 08:18:06 -0700 (PDT)
Received: from CTHALPA.outer.uphall.net
 (cpc1-cmbg20-2-0-cust759.5-4.cable.virginm.net. [86.21.218.248])
 by smtp.gmail.com with ESMTPSA id l21sm6008566wme.10.2021.05.05.08.18.05
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Wed, 05 May 2021 08:18:06 -0700 (PDT)
From: John Cox <jc@kynesim.co.uk>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
Date: Wed, 05 May 2021 16:18:06 +0100
Message-ID: <6bd59glrp4fq3j3ngmbl5p4u7aethvrv34@4ax.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
In-Reply-To: <20210420121046.181889-7-benjamin.gaignard@collabora.com>
User-Agent: ForteAgent/8.00.32.1272
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 cphealy@gmail.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>The HEVC HANTRO driver needs to know the number of bits to skip at
>the beginning of the slice header.
>That is a hardware specific requirement so create a dedicated control
>for this purpose.
>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
> .../userspace-api/media/drivers/hantro.rst    | 19 +++++++++++++++++++
> .../userspace-api/media/drivers/index.rst     |  1 +
> include/media/hevc-ctrls.h                    | 13 +++++++++++++
> 3 files changed, 33 insertions(+)
> create mode 100644 Documentation/userspace-api/media/drivers/hantro.rst
>
>diff --git a/Documentation/userspace-api/media/drivers/hantro.rst b/Documentation/userspace-api/media/drivers/hantro.rst
>new file mode 100644
>index 000000000000..cd9754b4e005
>--- /dev/null
>+++ b/Documentation/userspace-api/media/drivers/hantro.rst
>@@ -0,0 +1,19 @@
>+.. SPDX-License-Identifier: GPL-2.0
>+
>+Hantro video decoder driver
>+===========================
>+
>+The Hantro video decoder driver implements the following driver-specific controls:
>+
>+``V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP (integer)``
>+    Specifies to Hantro HEVC video decoder driver the number of data (in bits) to
>+    skip in the slice segment header.
>+    If non-IDR, the bits to be skipped go from syntax element "pic_output_flag"
>+    to before syntax element "slice_temporal_mvp_enabled_flag".
>+    If IDR, the skipped bits are just "pic_output_flag"
>+    (separate_colour_plane_flag is not supported).

What happens if it is a dependant_slice_segement or
output_flag_present_flag?  Those flags are all dependant on
dependant_slice_segement being false.  I'm guessing 0 but it maybe
should be documented.
Likewise if output_flag_present_flag is false pic_output_flag will not
be coded, so maybe express it as "after slice_type" rather than "before
pic_output_flag"?

Regards

John Cox

>+.. note::
>+
>+        This control is not yet part of the public kernel API and
>+        it is expected to change.
>diff --git a/Documentation/userspace-api/media/drivers/index.rst b/Documentation/userspace-api/media/drivers/index.rst
>index 1a9038f5f9fa..12e3c512d718 100644
>--- a/Documentation/userspace-api/media/drivers/index.rst
>+++ b/Documentation/userspace-api/media/drivers/index.rst
>@@ -33,6 +33,7 @@ For more details see the file COPYING in the source distribution of Linux.
> 
> 	ccs
> 	cx2341x-uapi
>+        hantro
> 	imx-uapi
> 	max2175
> 	meye-uapi
>diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
>index 8e0109eea454..b713eeed1915 100644
>--- a/include/media/hevc-ctrls.h
>+++ b/include/media/hevc-ctrls.h
>@@ -224,4 +224,17 @@ struct v4l2_ctrl_hevc_decode_params {
> 	__u64	flags;
> };
> 
>+/*  MPEG-class control IDs specific to the Hantro driver as defined by V4L2 */
>+#define V4L2_CID_CODEC_HANTRO_BASE				(V4L2_CTRL_CLASS_CODEC | 0x1200)
>+/*
>+ * V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP -
>+ * the number of data (in bits) to skip in the
>+ * slice segment header.
>+ * If non-IDR, the bits to be skipped go from syntax element "pic_output_flag"
>+ * to before syntax element "slice_temporal_mvp_enabled_flag".
>+ * If IDR, the skipped bits are just "pic_output_flag"
>+ * (separate_colour_plane_flag is not supported).
>+ */
>+#define V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP	(V4L2_CID_CODEC_HANTRO_BASE + 0)
>+
> #endif
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
