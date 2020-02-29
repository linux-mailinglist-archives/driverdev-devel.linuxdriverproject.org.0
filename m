Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF9D174934
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Feb 2020 21:34:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D78F7204D6;
	Sat, 29 Feb 2020 20:34:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QLx+yQhJVFaw; Sat, 29 Feb 2020 20:34:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2073B204CD;
	Sat, 29 Feb 2020 20:34:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 390CE1BF31C
 for <devel@linuxdriverproject.org>; Sat, 29 Feb 2020 20:33:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 324C98721E
 for <devel@linuxdriverproject.org>; Sat, 29 Feb 2020 20:33:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IK7JFaQyExgw for <devel@linuxdriverproject.org>;
 Sat, 29 Feb 2020 20:33:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4BA9A87155
 for <devel@driverdev.osuosl.org>; Sat, 29 Feb 2020 20:33:58 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id r7so7636612wro.2
 for <devel@driverdev.osuosl.org>; Sat, 29 Feb 2020 12:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=Zt3dq1OUkMEUcUXW65qyxooApGG+qBeaodqKhZlMmPE=;
 b=JbBDTY++uSsVrcYM05asL6cIXEST1QQi6vSxyskSsjGDkrsnZGvIJcvG/XPIPBnqKp
 PFrt7L1A0B0Hy99+rv8yAw8SEE5sPCtfVHnHb4pj7Nnlwxu6AoaDbNrozSJ61KZOmvNd
 JFi3S1nTzfTvXGmssIJVRK0MySvv3RtvGCxdAIgBK7taVUakmntRsp2oHat26dfDy43l
 7TRmgM9WFxH0wjV8XJKA+74DEEIllSN8Gvb3IGoJz9EZ6TMgbOC0l+sTZnW0YORtqGAo
 uTYo9o0OLtSw6SFzznqxP20u6VmHOOAriwO9hP+gdKQqma65k7Lw4sB6DU4lNOLvw3ax
 2hcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=Zt3dq1OUkMEUcUXW65qyxooApGG+qBeaodqKhZlMmPE=;
 b=fPXjEwmUTi4rgRnTIdl2mlOs9K8uyjY/clbx3netxqwFK2+kVPzUnfRjZVwVBCA3Di
 0P1Q/5jds6ywfUGWsXoxKmnzzlN7/oe8rl/PV1EKugSHbQgLljMNS2LJwnLGhbzzGKVE
 ZbidydNSoSTmvWmmMpU+sleNWwO6x6MN6bEnvDcskGxLQNTXjSAFJNYEEyctBX02t7od
 1UbW8xQJ21SHGMWTwmuAbqVOPM36/ZxmDAjrgnnB3AMmGOD6SKepPXr5VxkilO0ErDfv
 M3cfuob72VaSMujGCVJYOA0yQ9UvmvDW5TWXN9hwmFB7nrOEzSBh7qBBqhXbSfk6aDaM
 zTDg==
X-Gm-Message-State: APjAAAX49vsrw8Nyj3MGGQZyTWrDnwYEExyrneoPhgSKmnn45itIFTJ7
 zO3Kw99qE7heRvKi4YHeMc8=
X-Google-Smtp-Source: APXvYqxzp+Dj+OvCiZn/aP2YmRrI+t1wRiYoB6g1TCn+nuk3NEGo5KZXit5wv97r9XkPXnV3L3VIMw==
X-Received: by 2002:adf:9282:: with SMTP id 2mr12657562wrn.124.1583008436742; 
 Sat, 29 Feb 2020 12:33:56 -0800 (PST)
Received: from [192.168.43.18] (94.197.121.166.threembb.co.uk.
 [94.197.121.166])
 by smtp.gmail.com with ESMTPSA id a9sm19644051wrn.3.2020.02.29.12.33.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 29 Feb 2020 12:33:56 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/2] staging: vt6656: use vnt_vt3184_agc array directly
Message-ID: <4b455ee4-7ac7-e1ff-4a10-2d99f2e30714@gmail.com>
Date: Sat, 29 Feb 2020 20:33:54 +0000
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

vnt_vt3184_agc is always the same regardless of rf type
so use the array directly removing from stack buffer.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/baseband.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index f18e059ce66b..48a624bf00c0 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -367,8 +367,6 @@ int vnt_vt3184_init(struct vnt_private *priv)
 	int ret = 0;
 	u16 length;
 	u8 *addr;
-	u8 *agc;
-	u16 length_agc;
 	u8 array[256];
 	u8 data;
 
@@ -386,8 +384,6 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		priv->bb_rx_conf = vnt_vt3184_al2230[10];
 		length = sizeof(vnt_vt3184_al2230);
 		addr = vnt_vt3184_al2230;
-		agc = vnt_vt3184_agc;
-		length_agc = sizeof(vnt_vt3184_agc);
 
 		priv->bb_vga[0] = 0x1C;
 		priv->bb_vga[1] = 0x10;
@@ -398,8 +394,6 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		priv->bb_rx_conf = vnt_vt3184_al2230[10];
 		length = sizeof(vnt_vt3184_al2230);
 		addr = vnt_vt3184_al2230;
-		agc = vnt_vt3184_agc;
-		length_agc = sizeof(vnt_vt3184_agc);
 
 		addr[0xd7] = 0x06;
 
@@ -413,8 +407,6 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		priv->bb_rx_conf = vnt_vt3184_vt3226d0[10];
 		length = sizeof(vnt_vt3184_vt3226d0);
 		addr = vnt_vt3184_vt3226d0;
-		agc = vnt_vt3184_agc;
-		length_agc = sizeof(vnt_vt3184_agc);
 
 		priv->bb_vga[0] = 0x20;
 		priv->bb_vga[1] = 0x10;
@@ -430,8 +422,6 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		priv->bb_rx_conf = vnt_vt3184_vt3226d0[10];
 		length = sizeof(vnt_vt3184_vt3226d0);
 		addr = vnt_vt3184_vt3226d0;
-		agc = vnt_vt3184_agc;
-		length_agc = sizeof(vnt_vt3184_agc);
 
 		priv->bb_vga[0] = 0x20;
 		priv->bb_vga[1] = 0x10;
@@ -454,10 +444,9 @@ int vnt_vt3184_init(struct vnt_private *priv)
 	if (ret)
 		goto end;
 
-	memcpy(array, agc, length_agc);
-
 	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-			      MESSAGE_REQUEST_BBAGC, length_agc, array);
+			      MESSAGE_REQUEST_BBAGC,
+			      sizeof(vnt_vt3184_agc), vnt_vt3184_agc);
 	if (ret)
 		goto end;
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
