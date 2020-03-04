Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7104E179924
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 20:42:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C512220785;
	Wed,  4 Mar 2020 19:42:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EZn5yQo9YrGe; Wed,  4 Mar 2020 19:42:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 294BB20493;
	Wed,  4 Mar 2020 19:42:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D601D1BF589
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 19:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D23A620402
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 19:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id su4UsnjEpKmW for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 19:42:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id CF995203E2
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 19:41:59 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id v4so3953716wrs.8
 for <devel@driverdev.osuosl.org>; Wed, 04 Mar 2020 11:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=6qRC4ZEtbivWf7pTzAk5IxR4VdJwhvQpCG+0bFg+YM8=;
 b=ktEiW56xdeKdtuxV6JycjdIeSOuDU+DLJkql6lFehEQ6ipsd3gxfTfN13k6vkyk/oU
 fiTD1gkRHSacfSo2cd/Kty+URVgl5nPRgjI8+VN/P0tzw7O/UJvkxcPBhdpBkaWa+/G+
 HiSXqdGoL86b2rRYjTz1MYQudJhVEcEGLHaqLKwssKSOfbF4R1M4780YsmpC8MNKVDe7
 rY+XC8byCFDx7pbmI3BkcRX+oCcKzo+5NLlcRFMgJsHhweVUkcgjR3IEWSybIjH71XYQ
 kgT+BdHAzF/dcq7bfPNO5KfxFQ9E14uqleMZNy7rSJNqzUm8r2phryqjSQxIsFVAqb19
 1OHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=6qRC4ZEtbivWf7pTzAk5IxR4VdJwhvQpCG+0bFg+YM8=;
 b=AChbLGuKkhT/eHZ/6DVa1jLUEYZiofitzEOo7etinOGD/oNEpf5khZdrqN6LVfm9Az
 kNcmwObxPpwnrtUpyXoqlaehqMeYM0tMA9qElbzP4YPMrwWqUJztdH9i4yp7O0XHKQHB
 VNpn5E3WtmdchGd/IVUW6mY3fXbmFlek74Vex52AI1O/ViSdmKOShG/0djKXykqjfApZ
 iTclBHmoSwapulUA9Czlnqom1GrkXkAJ/pFtS8+XIXmH/jy4W7WIh/snZSxz1hRl2RsH
 +xWlzffg2LVBjpMrX+Hay13MC02qAQuOVCIFq2eeok4rhlaIr9GLJy+OBr7fkQqAMyoI
 QUyg==
X-Gm-Message-State: ANhLgQ0/LiJD1GYAcz+xskTplk7GN/VMYUxcQUYh1BsaG72EJPUm8mvI
 jWBoRnkhJcIde9HnSwwBH3A=
X-Google-Smtp-Source: ADFU+vs59BIina8af35nFwom2zL+4XxJ4Hy5d3D0d+YfcTrWe3Bnxi9Vker7DxPtPdFCIT95KLagbw==
X-Received: by 2002:adf:8b1b:: with SMTP id n27mr5670686wra.324.1583350918287; 
 Wed, 04 Mar 2020 11:41:58 -0800 (PST)
Received: from [192.168.43.18] (92.40.168.8.threembb.co.uk. [92.40.168.8])
 by smtp.gmail.com with ESMTPSA id i12sm26546110wrw.64.2020.03.04.11.41.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Mar 2020 11:41:57 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/2] staging: vt6656: Remove vnt_interrupt_buffer in_use flag.
Message-ID: <69585034-4318-4bec-7d9b-f64a167df237@gmail.com>
Date: Wed, 4 Mar 2020 19:41:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

mac80211 is the only user of in_use to start it and should
not be true when so.

So internal toggling of this variable is not relevant.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h  |  1 -
 drivers/staging/vt6656/usbpipe.c | 28 +++-------------------------
 2 files changed, 3 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 5c9991415432..e94df4685b25 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -253,7 +253,6 @@ struct vnt_usb_send_context {
  */
 struct vnt_interrupt_buffer {
 	u8 *data_buf;
-	bool in_use;
 };
 
 /* flags for options */
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index b9e79755e7fa..fd2c9d9d6eb4 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -221,8 +221,6 @@ static void vnt_int_process_data(struct vnt_private *priv)
 		low_stats->dot11ACKFailureCount += int_data->ack_fail;
 		low_stats->dot11FCSErrorCount += int_data->fcs_err;
 	}
-
-	priv->int_buf.in_use = false;
 }
 
 static void vnt_start_interrupt_urb_complete(struct urb *urb)
@@ -237,25 +235,19 @@ static void vnt_start_interrupt_urb_complete(struct urb *urb)
 	case -ECONNRESET:
 	case -ENOENT:
 	case -ESHUTDOWN:
-		priv->int_buf.in_use = false;
 		return;
 	default:
 		break;
 	}
 
-	if (status) {
-		priv->int_buf.in_use = false;
-
+	if (status)
 		dev_dbg(&priv->usb->dev, "%s status = %d\n", __func__, status);
-	} else {
+	else
 		vnt_int_process_data(priv);
-	}
 
 	status = usb_submit_urb(priv->interrupt_urb, GFP_ATOMIC);
 	if (status)
 		dev_dbg(&priv->usb->dev, "Submit int URB failed %d\n", status);
-	else
-		priv->int_buf.in_use = true;
 }
 
 int vnt_start_interrupt_urb(struct vnt_private *priv)
@@ -264,13 +256,6 @@ int vnt_start_interrupt_urb(struct vnt_private *priv)
 
 	dev_dbg(&priv->usb->dev, "---->Interrupt Polling Thread\n");
 
-	if (priv->int_buf.in_use) {
-		ret = -EBUSY;
-		goto err;
-	}
-
-	priv->int_buf.in_use = true;
-
 	usb_fill_int_urb(priv->interrupt_urb,
 			 priv->usb,
 			 usb_rcvintpipe(priv->usb, 1),
@@ -281,16 +266,9 @@ int vnt_start_interrupt_urb(struct vnt_private *priv)
 			 priv->int_interval);
 
 	ret = usb_submit_urb(priv->interrupt_urb, GFP_ATOMIC);
-	if (ret) {
+	if (ret)
 		dev_dbg(&priv->usb->dev, "Submit int URB failed %d\n", ret);
-		goto err_submit;
-	}
-
-	return 0;
 
-err_submit:
-	priv->int_buf.in_use = false;
-err:
 	return ret;
 }
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
