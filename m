Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD42627203A
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4302886102;
	Mon, 21 Sep 2020 10:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nRpPe5vgdpv5; Mon, 21 Sep 2020 10:21:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2389785F90;
	Mon, 21 Sep 2020 10:21:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA8181BF962
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E6D3A8683A
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wk3PwmObgbxg for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BFFE08685D
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:58 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id y15so12016213wmi.0
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6FJQXqYTGnFs6xSsNBr+hoN1yvRXs/bBrFwOES8jAPM=;
 b=vBugCVnWSbwdACUQOFN1afCvzNLAXk3a/HYAl9BSIGDqalr4HiI9zq9sL1JffA/cXj
 I+aMWvpMTWmSbWktvHGsFmqVeVDH0FOkqfAUtv+95mDhX0mrurF7aMZLjxoVjzY9nNlq
 Trjcq4QJGV/Ot/YRkBmxzdFXcpVV9lFC85qSkjbn+ur77n8A+ZjQCPCCU+l71S6GgTj8
 fAINR+cQ109GY2vq6DpAowfEdEyLC0pOxMoljjMwyVxXp2cJEiLQX82deZwEnRS3JJVJ
 cDz3OMypYhxfAXmQoP15C7j6ztzvAdfu66/u2BgcxFbKdKe45TBJf5IlQP6cnqsMAPMi
 Sejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6FJQXqYTGnFs6xSsNBr+hoN1yvRXs/bBrFwOES8jAPM=;
 b=RZZhSJ+zic3F6j2HlRw2nfraw2LLnull+dux5tAydPvN0QwwUje1FtQwOvB6JETsZM
 VR7ApThTtMBl4PUTI4O6LuhAt3gyt1g7YytdR2KtuD2Ey31yE+CqfJ/Y36POLKuYmRgc
 uckd0PNvJl5Y6bX18ZlQtJU0O2GvCrdJ4NFzMmthutQSTIrQkkOwQMtqdsGI09HhRCAD
 uZ9/nczB2oci010ArxLUe/4XnzGIU9P7Iemln4q9SLdGJSaEUlSKv3b6T9Hwm9cDoeuS
 Z0uBV4ZAqx8zsh4GKJyQRQ+41WRAWAaSGNiYXx7x103IKvlh1AibVtGQI/g1LL1XAaYh
 wjng==
X-Gm-Message-State: AOAM5314yfPi7GQIdYi4SdYaOn21EbxoTNQe948u6v9ZoDrjSJ9WM9kc
 mt98W8RJ05H2aEx4ZirbLkxE+w==
X-Google-Smtp-Source: ABdhPJy3JBJ82nITRQW7FeoI40pOMOYIUsRJiPlCUX5btahKih+LxvcRkcN8s7fkMOe/G2lzsTOaBw==
X-Received: by 2002:a7b:c8cc:: with SMTP id f12mr28551976wml.169.1600683657343; 
 Mon, 21 Sep 2020 03:20:57 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:56 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 26/49] staging: media: zoran: zoran does not support
 STD_ALL
Date: Mon, 21 Sep 2020 10:20:01 +0000
Message-Id: <1600683624-5863-27-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In fact, zoran does not support V4L2_STD_ALL, so let's enumerate what we
support.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index b1351455690f..6e95fbf5c7ea 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1749,7 +1749,7 @@ static int zoran_enum_input(struct file *file, void *__fh, struct v4l2_input *in
 
 	strscpy(inp->name, zr->card.input[inp->index].name, sizeof(inp->name));
 	inp->type = V4L2_INPUT_TYPE_CAMERA;
-	inp->std = V4L2_STD_ALL;
+	inp->std = V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
 
 	/* Get status of video decoder */
 	decoder_call(zr, video, g_input_status, &inp->status);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
