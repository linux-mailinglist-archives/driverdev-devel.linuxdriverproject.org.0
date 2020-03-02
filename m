Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2941765AA
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 22:13:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90A0B85259;
	Mon,  2 Mar 2020 21:13:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n8adzHabZeBb; Mon,  2 Mar 2020 21:13:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34567850E1;
	Mon,  2 Mar 2020 21:13:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 733B21BF366
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 21:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F5DD86252
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 21:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4tLP+JZnZKW5 for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 21:13:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9629E8624E
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 21:13:32 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id f15so646031wml.3
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 13:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=/+jAgbqODV6zfZn8QYllJrAWqpbAilb+ByG1dEQFoTI=;
 b=Z57J+9Mw7IFmL3JLrP8T7LAr056lkwB99n9qv4N2C/H7ReTKRNDU8nGtCvcQRo3cdN
 tjYtQd+nxYBpgYK6b1fUn6oJ0DVZWL17pZinObzpI/Dfe6HPKT7pwvVxYTnEqzbph6Vn
 MW6ZzN77hvb1STkpoDqMdR0XbNHDhwQF335RcwEiny6EtaWwFosxvNsUWiyOt0zzHBaZ
 3sa7RUOvRvma6ILhlFvg5KzNePYzEgxWGy6xOoFBCYpnf22HkVC8TlxCRW7uESAuHPv7
 5s8P04i8esgi+LA5D1RtOmiqLug//1+J3ZMVsxAAVD/nNiwVQsdgB1N4JAhQ0jGYBrDq
 a+4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=/+jAgbqODV6zfZn8QYllJrAWqpbAilb+ByG1dEQFoTI=;
 b=L7rKQ9SkbPm+cxCuXVohXbgxcSHU3Mi7JTLEypwuA1eCsPqiDibkyBSYDn1awN3Qgb
 qOK9nj5y/fatiDN4oh9C3SATugke1FgMIOMHGxyYnyG+kJ3ilsos2/x3ZBfCZdzI7xU4
 Mzhm8XG3hw5aslm9byUtdUwWhT1ILV3CaiMn2/g6KFbA+16qNFuNKIfk9xLXWyIIl5ec
 NjBjCKHClyEo5+KCHS+r3Lv8p+6UHVFF+jfzxFmYlcljtkcFtWQjibARV4gFJUwO4XjE
 B3CwcvYZ+eJb5zv68+O9pH3btKL5GMpekoV8WwlwdscdFtbeezZp7if5NWRnk+MS3VAI
 tLPg==
X-Gm-Message-State: ANhLgQ0/AyM8EHi1bmkuOrBa38wduiX6QLOCE/87vp+jLAQVe5ppgOAX
 eLsoqzvlTmt+L+WUA/e6uu8=
X-Google-Smtp-Source: ADFU+vuuRMJ6xQ1KS3gBLcSlUwjC/P74kdqs4m4AOK9sIi0L/9TBRhkATI2dk94eYER9Oi2Nm0XmiA==
X-Received: by 2002:a7b:cd8c:: with SMTP id y12mr335113wmj.5.1583183610759;
 Mon, 02 Mar 2020 13:13:30 -0800 (PST)
Received: from [192.168.43.18] (94.197.120.139.threembb.co.uk.
 [94.197.120.139])
 by smtp.gmail.com with ESMTPSA id u1sm11501634wrt.78.2020.03.02.13.13.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Mar 2020 13:13:30 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/3] staging: vt6656: vnt_int_start_interrupt remove spin lock.
Message-ID: <871a78d4-6d3e-f34b-d0ae-6123803c6faf@gmail.com>
Date: Mon, 2 Mar 2020 21:13:28 +0000
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

This formed part of the legacy driver and potentially multi
users.

The driver now has only one user mac80211 remove this lock.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/int.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
index 3fa61c368464..fcf92cd1234b 100644
--- a/drivers/staging/vt6656/int.c
+++ b/drivers/staging/vt6656/int.c
@@ -26,16 +26,11 @@
 int vnt_int_start_interrupt(struct vnt_private *priv)
 {
 	int ret = 0;
-	unsigned long flags;
 
 	dev_dbg(&priv->usb->dev, "---->Interrupt Polling Thread\n");
 
-	spin_lock_irqsave(&priv->lock, flags);
-
 	ret = vnt_start_interrupt_urb(priv);
 
-	spin_unlock_irqrestore(&priv->lock, flags);
-
 	return ret;
 }
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
