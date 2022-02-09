Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 170544AF54A
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Feb 2022 16:32:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FE1F82F51;
	Wed,  9 Feb 2022 15:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 48pPMGstHD2d; Wed,  9 Feb 2022 15:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 484A382F49;
	Wed,  9 Feb 2022 15:32:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 22B0C1BF5AE
 for <devel@linuxdriverproject.org>; Wed,  9 Feb 2022 15:31:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FA3860A98
 for <devel@linuxdriverproject.org>; Wed,  9 Feb 2022 15:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rl7XFSE7XqN5 for <devel@linuxdriverproject.org>;
 Wed,  9 Feb 2022 15:31:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEF5660A88
 for <devel@driverdev.osuosl.org>; Wed,  9 Feb 2022 15:31:56 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id c192so1709103wma.4
 for <devel@driverdev.osuosl.org>; Wed, 09 Feb 2022 07:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=ZyAttm7EWbqNG67CUDg8UPYwEYfS+Y2vi8G1ZAG6NcE=;
 b=RDqrhnCrVs2cy1RLpuK6nwaQFgj423rToOLIXbkpypkJM667N2WSwDimCP0mSqPCeQ
 EGTvGluh8N/yHOL5mrdSr6/5y+WgJvk6BJeAneMtafAHX4dN5Jo+hlPJeEroJP46HMaU
 Ckej5RHBnY3v++NS1SvQbCdf8Rx3q0c+rNYsFVa3ncq0bIqmXi7MmOsGi35r9TTFqAuo
 rgm/9AlLh6Qw0lXbvKq8CSp4WIkj/KUeu5GjqydWvyAVHMw/tJqN6ymygtrSkJqm6BuS
 XStOlwNtwE4Z7E7vYJ0gaxrnXORdOeQVDuP4vFQYC1Z69VBMpg6dmzCvbR43jUeXIWt+
 78IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZyAttm7EWbqNG67CUDg8UPYwEYfS+Y2vi8G1ZAG6NcE=;
 b=V41u4VVVSPgHdrKEL2AImd8/iLXTZhJWB8+KkT66vDxRKkLdrASe7TXXAy5klPzE5R
 qdg9MPKb/45QnPoYEnf6sL0KV8oMAfma2IrPuG6tV1NlINQb8wrg7hyT8lZejtSgcj/L
 8CFkcnP3ZbNayGnht2EOZ6e5hsc0u9NR43qs0xFV2oNzpLbkgW5jVL2vJBD0AxOPAa1f
 31GZhW1CtMIpc+qTOnkonp6FDWrogDiWBvVTzA8C2Y0Jh4SpdTqcfFxqxoT1+qCO91m1
 /iH8V//xDwsEyDePQvLzQIVjVBeD0SEKnjnP6h5RsJa06gruYx1XGW+tG//oiad9JEQm
 dRpA==
X-Gm-Message-State: AOAM530PrFtzMc/olVB5oGm23C8WWZxvDBgOheeICklM0WurmIJdKwIi
 UzsRKocutQWGc4Cjd1GTuc8=
X-Google-Smtp-Source: ABdhPJxG8wN3QTxvyDPuUUetA/tjTXSz97RI/agJ/gioycGkSAkQhODQCe4UpRBeH/mRvSk0Ax2veg==
X-Received: by 2002:a05:600c:4f53:: with SMTP id
 m19mr2529899wmq.45.1644420714828; 
 Wed, 09 Feb 2022 07:31:54 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id o125sm2875729wme.37.2022.02.09.07.31.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 07:31:54 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drivers: meson: vdec: add VP9 support to GXM
Date: Wed,  9 Feb 2022 15:31:50 +0000
Message-Id: <20220209153150.30688-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VP9 support for GXM appears to have been missed from the original
codec submission [0] but it works well, so let's add support.

[0] https://github.com/torvalds/linux/commit/00c43088aa680989407b6afbda295f67b3f123f1

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
Tested with LibreELEC 11 nightly 'AMLGX' dev images for Khadas VIM2
and WeTek Core2 GXM devices which can be found here [1]. The images
combine Linux 5.16.y [2] with Kodi v20 [3] and FFmpeg 4.4 [4] which
notably includes many V4L2 refinements for stability and usability.

[1] https://test.libreelec.tv/
[2] https://github.com/chewitt/linux/commits/amlogic-5.16.y
[3] https://github.com/xbmc/xbmc/
[4] https://github.com/jc-kynesim/rpi-ffmpeg/commits/dev/4.4/rpi_import_1

 drivers/staging/media/meson/vdec/vdec_platform.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/staging/media/meson/vdec/vdec_platform.c b/drivers/staging/media/meson/vdec/vdec_platform.c
index eabbebab2da2..88c9d72e1c83 100644
--- a/drivers/staging/media/meson/vdec/vdec_platform.c
+++ b/drivers/staging/media/meson/vdec/vdec_platform.c
@@ -103,6 +103,18 @@ static const struct amvdec_format vdec_formats_gxl[] = {
 
 static const struct amvdec_format vdec_formats_gxm[] = {
 	{
+		.pixfmt = V4L2_PIX_FMT_VP9,
+		.min_buffers = 16,
+		.max_buffers = 24,
+		.max_width = 3840,
+		.max_height = 2160,
+		.vdec_ops = &vdec_hevc_ops,
+		.codec_ops = &codec_vp9_ops,
+		.firmware_path = "meson/vdec/gxl_vp9.bin",
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED |
+			 V4L2_FMT_FLAG_DYN_RESOLUTION,
+	}, {
 		.pixfmt = V4L2_PIX_FMT_H264,
 		.min_buffers = 2,
 		.max_buffers = 24,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
