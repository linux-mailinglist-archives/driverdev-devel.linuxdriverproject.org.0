Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 567D16F3BA3
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 May 2023 03:06:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95E0441714;
	Tue,  2 May 2023 01:05:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95E0441714
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y1IzGdouYT2p; Tue,  2 May 2023 01:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C07F4149D;
	Tue,  2 May 2023 01:05:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C07F4149D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 944161BF40D
 for <devel@linuxdriverproject.org>; Tue,  2 May 2023 01:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7295B41714
 for <devel@linuxdriverproject.org>; Tue,  2 May 2023 01:05:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7295B41714
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tCrC00YRaZku for <devel@linuxdriverproject.org>;
 Tue,  2 May 2023 01:05:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1ADBC4149D
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1ADBC4149D
 for <devel@driverdev.osuosl.org>; Tue,  2 May 2023 01:05:52 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id
 d2e1a72fcca58-63d2ba63dddso2394937b3a.2
 for <devel@driverdev.osuosl.org>; Mon, 01 May 2023 18:05:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682989551; x=1685581551;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=u6KvYmG6iKLAMHd7vkBOqn94kNNGYev+CUO7axt/3Ec=;
 b=gJrMhyqC83rtQ131L1dca9EPQ63Jg/2ejgpEat2RNzW/LouBJYcae6FKy8wyJdXj1Z
 7a4npu2TzPP2GiWAhUx+P8AFN8jJcLg8jUxS3DQj/VpiYm/NIlh8OgkVzBptxkPdmaEB
 x+sFTarV4ge6GIeunkg2jiSURyMV+OpsTaeCflhugXENAyJh4Qp7jY79uWssdynTVzUw
 Kv1UyMrOKNQDxF3Ncmi1Q32jt0qUtDRLcBtgG/kBNQ8x0NZVVvywfbN3Pmd4Ok7B0nY0
 DAtlu8OgCjXauVXhZsMfKBOwOAlfIuSV8FzQLxpSF1q5f/tVSZqGomGo/5u4Nx2dHkNW
 bxLA==
X-Gm-Message-State: AC+VfDxAp6j1v3qvLkO+xcblRFh49hAZpHhIxOvuYX9veWItDT3f8YxC
 fNsE/GK4eJrNk/zR1bDMH9Q=
X-Google-Smtp-Source: ACHHUZ4ngoQ7ohSxrNtlyRwdY/M+Wmel/KQQoo9L21BpjGtXxf0YTlp8Awswni/nvFNX47qFMBMitQ==
X-Received: by 2002:a05:6a00:2e18:b0:62d:8376:3712 with SMTP id
 fc24-20020a056a002e1800b0062d83763712mr15725872pfb.28.1682989551282; 
 Mon, 01 May 2023 18:05:51 -0700 (PDT)
Received: from yoga ([2400:1f00:13:5ac8:de82:eedb:43ac:e372])
 by smtp.gmail.com with ESMTPSA id
 m15-20020a056a00080f00b00627e87f51a5sm16001440pfk.161.2023.05.01.18.05.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 May 2023 18:05:50 -0700 (PDT)
Date: Tue, 2 May 2023 06:35:43 +0530
From: Anup Sharma <anupnewsmail@gmail.com>
To: hverkuil@xs4all.nl, mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH] staging: media: usbvision: Remove comparision to NULL
Message-ID: <ZFBh54sbwiRFKyG+@yoga>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682989551; x=1685581551;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=u6KvYmG6iKLAMHd7vkBOqn94kNNGYev+CUO7axt/3Ec=;
 b=Gs+6By193FhxXRhpOqSjVLXXF7EyDRAAejY2VpLNrjFnvJlzkhj6XnGPVMwsw/Xq54
 LyYhFqDbi/OvQNt97O4SXohp7Qo221vNnI4nseGo3J3zKbwBKOu/+dGBsfBaTiDfbXcC
 BZGlPdIM+MxRu2XGepI7exzL41Kw48lPj6EVNjFDtkEjAnx/Lo5evCa8JnQrQRMg/xwi
 pb7fFeCqwVNqT8+jK+5yGu+ptWjU5iygYwDBVFBBZrKCWDkxcrgox5Q8z445S+uvUDiv
 6G//ZUlJC8UdPD3yT9Ir3R8WKMMqhPdZ/fvqKcsyPNBO3i923HA372U0ag9Yy+Tp5BCu
 m3WA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=Gs+6By19
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove comparison to null in file usbvision-core.c and usbvision-i2c.c.

Signed-off-by: Anup Sharma <anupnewsmail@gmail.com>
---
 drivers/staging/media/usbvision/usbvision-core.c | 8 ++++----
 drivers/staging/media/usbvision/usbvision-i2c.c  | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/usbvision/usbvision-core.c b/drivers/staging/media/usbvision/usbvision-core.c
index e35dee35b068..a38104b2a0f9 100644
--- a/drivers/staging/media/usbvision/usbvision-core.c
+++ b/drivers/staging/media/usbvision/usbvision-core.c
@@ -349,7 +349,7 @@ int usbvision_scratch_alloc(struct usb_usbvision *usbvision)
 {
 	usbvision->scratch = vmalloc_32(scratch_buf_size);
 	scratch_reset(usbvision);
-	if (usbvision->scratch == NULL) {
+	if (!usbvision->scratch) {
 		dev_err(&usbvision->dev->dev,
 			"%s: unable to allocate %d bytes for scratch\n",
 				__func__, scratch_buf_size);
@@ -374,7 +374,7 @@ int usbvision_decompress_alloc(struct usb_usbvision *usbvision)
 	int IFB_size = MAX_FRAME_WIDTH * MAX_FRAME_HEIGHT * 3 / 2;
 
 	usbvision->intra_frame_buffer = vmalloc_32(IFB_size);
-	if (usbvision->intra_frame_buffer == NULL) {
+	if (!usbvision->intra_frame_buffer) {
 		dev_err(&usbvision->dev->dev,
 			"%s: unable to allocate %d for compr. frame buffer\n",
 				__func__, IFB_size);
@@ -2284,7 +2284,7 @@ int usbvision_init_isoc(struct usb_usbvision *usbvision)
 		struct urb *urb;
 
 		urb = usb_alloc_urb(USBVISION_URB_FRAMES, GFP_KERNEL);
-		if (urb == NULL)
+		if (!urb)
 			return -ENOMEM;
 		usbvision->sbuf[buf_idx].urb = urb;
 		usbvision->sbuf[buf_idx].data =
@@ -2343,7 +2343,7 @@ void usbvision_stop_isoc(struct usb_usbvision *usbvision)
 	int buf_idx, err_code, reg_value;
 	int sb_size = USBVISION_URB_FRAMES * usbvision->isoc_packet_size;
 
-	if ((usbvision->streaming == stream_off) || (usbvision->dev == NULL))
+	if ((usbvision->streaming == stream_off) || (!usbvision->dev))
 		return;
 
 	/* Unschedule all of the iso td's */
diff --git a/drivers/staging/media/usbvision/usbvision-i2c.c b/drivers/staging/media/usbvision/usbvision-i2c.c
index 6e4df3335b1b..3bba93293463 100644
--- a/drivers/staging/media/usbvision/usbvision-i2c.c
+++ b/drivers/staging/media/usbvision/usbvision-i2c.c
@@ -233,7 +233,7 @@ int usbvision_i2c_register(struct usb_usbvision *usbvision)
 				&usbvision->i2c_adap,
 				"tuner", 0, v4l2_i2c_tuner_addrs(type));
 
-		if (sd == NULL)
+		if (!sd)
 			return -ENODEV;
 		if (usbvision->tuner_type != -1) {
 			tun_setup.mode_mask = T_ANALOG_TV | T_RADIO;
-- 
2.34.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
