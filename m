Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 534871BE8D9
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 22:42:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D35A23509;
	Wed, 29 Apr 2020 20:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wY2AQ4V37wTJ; Wed, 29 Apr 2020 20:42:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DD2EE204AB;
	Wed, 29 Apr 2020 20:42:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22E761BF963
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 20:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1F20E86B16
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 20:42:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h692yvTaRuzf for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 20:42:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 84BFC86AC6
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 20:42:31 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id z6so3546178wml.2
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 13:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=qvNqW9VZY66NQpuYi1BXOqqn8Ol0ghGRclu1yj76a0g=;
 b=mI1jxagVTde/2+QB8gtV8Urph7bI+p+XTMxzhrzTl0+5UA7qrcpJbZd31OOwH1M8vN
 4+5l+AsL/MwI+C8Hy+/Ml0KmIJn5k0MnZtRDy4hHft9QCi6fpcCUNQy7mOS4jDN77+eq
 KDw26U0ESjng/XsujG5zH2mGgfcZlF1is7CuOgcSBmy81sdQJiOnD16okUZ+KmltwI4S
 HpfqwUhuC7Hth+ksDw3md/X1MCK0VCxpkXM+JiT6OEqSW02Oeat5tGYX8zoXsWFN1Tzh
 xZQd2Xyu6X/XDSwC+50lI77fsz+C3vQaTKJKO2JW83P9a4AetDevAX9JrJ4VN1wNVS18
 j3xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=qvNqW9VZY66NQpuYi1BXOqqn8Ol0ghGRclu1yj76a0g=;
 b=s3vuT+8/3f3PMCZS07OIl6lSSgh70E6TczdePv0ZlFcch5CXRSceCB86Ts+vftWr9G
 7uG6tweAnMhUbWwtJ0piJLgBqouBzo2EErJqZazVZBSxtnqoNmmh3bG+AEfbASao79PH
 6T1INdQNoAE8mKArD6do7Rj8fAjvp1JgPEPYiSZmB7WqIbooCGe7gSMML+9nIGBfxeWX
 5AB4MXusFw+z8NmPFbifwUUuzK0LisoYMGWBmuUri7DqmWxiO1DJvP+UatGSlnn+X0hx
 iz1vDzpmrR3kUqva8J2+2jV0lJ0twu07xAic9BdYOUPG8EPhu+R1SQHuFFmnsFR2KXm6
 kgxA==
X-Gm-Message-State: AGi0PuYF6EcHtgRMU5hSwW9hd/xunXBWggtRcVDAZ215ZfUOeDDIGI43
 mojP6Th3qQ1S2Ua6Ar/kppw=
X-Google-Smtp-Source: APiQypJ7lb8uaUfck/aZZAepxN5DdNIHQ9nKKlza+wq00+O7uKr7Hnb3k06Q05law0YNY7agvXTwaA==
X-Received: by 2002:a7b:c118:: with SMTP id w24mr5004212wmi.173.1588192950047; 
 Wed, 29 Apr 2020 13:42:30 -0700 (PDT)
Received: from [192.168.43.18] (188.29.164.11.threembb.co.uk. [188.29.164.11])
 by smtp.gmail.com with ESMTPSA id
 c25sm9095214wmb.44.2020.04.29.13.42.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Apr 2020 13:42:29 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: PATCH] staging: vt6656: use struct wiphy retry short and long
 settings.
Message-ID: <fbb8da09-ee46-2249-ff29-daaaff1a64e6@gmail.com>
Date: Wed, 29 Apr 2020 21:42:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
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
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove driver options for short and long retry and use the ones
set by user in wiphy.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h   | 3 ---
 drivers/staging/vt6656/main_usb.c | 8 ++------
 2 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index d1c6e9594a19..d19d802b5d4f 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -351,9 +351,6 @@ struct vnt_private {
 	u16 tx_rate_fb0;
 	u16 tx_rate_fb1;
 
-	u8 short_retry_limit;
-	u8 long_retry_limit;
-
 	enum nl80211_iftype op_mode;
 
 	int short_slot_time;
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index b1a7a6709ca7..03873a877d9a 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -59,8 +59,6 @@ MODULE_PARM_DESC(tx_buffers, "Number of receive usb tx buffers");
 
 #define RTS_THRESH_DEF     2347
 #define FRAG_THRESH_DEF     2346
-#define SHORT_RETRY_DEF     8
-#define LONG_RETRY_DEF     4
 
 /* BasebandType[] baseband type selected
  * 0: indicate 802.11a type
@@ -93,8 +91,6 @@ static void vnt_set_options(struct vnt_private *priv)
 	else
 		priv->num_rcb = vnt_rx_buffers;
 
-	priv->short_retry_limit = SHORT_RETRY_DEF;
-	priv->long_retry_limit = LONG_RETRY_DEF;
 	priv->op_mode = NL80211_IFTYPE_UNSPECIFIED;
 	priv->bb_type = BBP_TYPE_DEF;
 	priv->packet_type = priv->bb_type;
@@ -223,8 +219,8 @@ static int vnt_init_registers(struct vnt_private *priv)
 	init_cmd->exist_sw_net_addr = priv->exist_sw_net_addr;
 	for (ii = 0; ii < ARRAY_SIZE(init_cmd->sw_net_addr); ii++)
 		init_cmd->sw_net_addr[ii] = priv->current_net_addr[ii];
-	init_cmd->short_retry_limit = priv->short_retry_limit;
-	init_cmd->long_retry_limit = priv->long_retry_limit;
+	init_cmd->short_retry_limit = priv->hw->wiphy->retry_short;
+	init_cmd->long_retry_limit = priv->hw->wiphy->retry_long;
 
 	/* issue card_init command to device */
 	ret = vnt_control_out(priv, MESSAGE_TYPE_CARDINIT, 0, 0,
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
