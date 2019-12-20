Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 852121283A8
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 22:15:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 37B138745B;
	Fri, 20 Dec 2019 21:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lNEXLKpaSvKf; Fri, 20 Dec 2019 21:15:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C94AC87434;
	Fri, 20 Dec 2019 21:15:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D7F9B1BF358
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 21:15:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CCFBD8743E
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 21:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pcJ1VSIczcLb for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 21:15:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F28BF86B4F
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 21:15:27 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c9so10718187wrw.8
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 13:15:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=KwwbCxeP1cf/2lPa7knPHdUz0jhxiyzVcphdByR7/TU=;
 b=HNUrFlHOnV3ep9+VIM6YYBiCaAks1iX6XLlMCHBVluq6w1Bub4ffgS324PmldK+uzy
 OdfU4OF1Ld8d81Cg6/v5eBtV0/rnNj8URmWlQ6O9QfHW+nV5UqiHFiK+0OCBwsUctgxw
 5LnQJ2VthinD/1ZnGP7HkdwCOjM7FDTFONPsTizsVYgNRw1UBdE1VURyr1E3yAZGnWP8
 sR/VBz5Gwo1jd6MKUJ1aDb9QYhvs24wcQk9xkyfo1XTEz1EDkgvF2z24ZLeVd65E4Onh
 mB524JTy17gjigC49WXwLKxCnEuolV037KYYyjzAmTfpvikYPINafKPB9ZkqMCXeFXSv
 VU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=KwwbCxeP1cf/2lPa7knPHdUz0jhxiyzVcphdByR7/TU=;
 b=puF1btFoQx5CK1p/MPcgzeWg0F5aO4L6+VTqznXlqsXZpFuvw1n0HN2RUPLTJorIus
 jrVHSZEAMI/fp/1j1LbwzKJAza9aSxJHkb2K2Sd+eJUshrCMOBTmg9HyHN3ZavCumrWT
 Fm/j5b6I2imtW/gbn/v1xHU9QkT1YeUNCBWy3FtvyPhOtv9dKENlGyURijcNkXcfqfyO
 Q+D6seWUBaIj2zFr95GCwqvfciTTby5zJUryiSKIXrl/stvTJzjmGTuu/jok8ibnWHGA
 8jOjVfPL3JYI2Bq+/gCh6oMHwzYoL9A8NaBOdrQVxnsXpSsXNUlJAdeolGu9sAuoL43E
 Yzyg==
X-Gm-Message-State: APjAAAUf6nnqP0ehsevgmHD3l5JMZvcUAmAu9eNY7LBL0JXCq/nOr/j+
 /TBTpDNdKbaU5W86w3pjp+FqsJsf
X-Google-Smtp-Source: APXvYqym9odFqClwaXq6Ux5xAdpZG/PltCmpJdCFB+xxaAetK3BzGbO7y/QTSyAGVjLBHqakv0SGzA==
X-Received: by 2002:adf:a109:: with SMTP id o9mr18409142wro.189.1576876526115; 
 Fri, 20 Dec 2019 13:15:26 -0800 (PST)
Received: from [192.168.43.18] (92.40.248.136.threembb.co.uk. [92.40.248.136])
 by smtp.gmail.com with ESMTPSA id
 v14sm10899635wrm.28.2019.12.20.13.15.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2019 13:15:25 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 3/5] staging: vt6656: limit reg output to block size
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <a41f0601-df46-ce6e-ab7c-35e697946e2a@gmail.com>
Date: Fri, 20 Dec 2019 21:15:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

vnt_control_out appears to fail when BBREG is greater than 64 writes.

Create new function that will relay an array in no larger than
the indicated block size.

It appears that this command has always failed but was ignored by
driver until the introduction of error checking.

Cc: stable <stable@vger.kernel.org> # v5.3+
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/baseband.c |  4 ++--
 drivers/staging/vt6656/usbpipe.c  | 17 +++++++++++++++++
 drivers/staging/vt6656/usbpipe.h  |  5 +++++
 3 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 8d19ae71e7cc..4e651b698617 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -449,8 +449,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
 
 	memcpy(array, addr, length);
 
-	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-			      MESSAGE_REQUEST_BBREG, length, array);
+	ret = vnt_control_out_blocks(priv, VNT_REG_BLOCK_SIZE,
+				     MESSAGE_REQUEST_BBREG, length, array);
 	if (ret)
 		goto end;
 
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 488ebd98773d..d977d4777e4f 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -76,6 +76,23 @@ int vnt_control_out_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 data)
 			       reg_off, reg, sizeof(u8), &data);
 }
 
+int vnt_control_out_blocks(struct vnt_private *priv,
+			   u16 block, u8 reg, u16 length, u8 *data)
+{
+	int ret = 0, i;
+
+	for (i = 0; i < length; i += block) {
+		u16 len = min_t(int, length - i, block);
+
+		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE,
+				      i, reg, len, data + i);
+		if (ret)
+			goto end;
+	}
+end:
+	return ret;
+}
+
 int vnt_control_in(struct vnt_private *priv, u8 request, u16 value,
 		   u16 index, u16 length, u8 *buffer)
 {
diff --git a/drivers/staging/vt6656/usbpipe.h b/drivers/staging/vt6656/usbpipe.h
index 95147ec7b96a..b65d9c01a211 100644
--- a/drivers/staging/vt6656/usbpipe.h
+++ b/drivers/staging/vt6656/usbpipe.h
@@ -18,6 +18,8 @@
 
 #include "device.h"
 
+#define VNT_REG_BLOCK_SIZE	64
+
 int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
 		    u16 index, u16 length, u8 *buffer);
 int vnt_control_in(struct vnt_private *priv, u8 request, u16 value,
@@ -26,6 +28,9 @@ int vnt_control_in(struct vnt_private *priv, u8 request, u16 value,
 int vnt_control_out_u8(struct vnt_private *priv, u8 reg, u8 ref_off, u8 data);
 int vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data);
 
+int vnt_control_out_blocks(struct vnt_private *priv,
+			   u16 block, u8 reg, u16 len, u8 *data);
+
 int vnt_start_interrupt_urb(struct vnt_private *priv);
 int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb);
 int vnt_tx_context(struct vnt_private *priv,
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
