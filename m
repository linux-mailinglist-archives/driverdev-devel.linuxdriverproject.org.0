Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E73C1283A6
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 22:15:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 24C9C259C9;
	Fri, 20 Dec 2019 21:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id twDCkKvzuRN0; Fri, 20 Dec 2019 21:15:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB0342036C;
	Fri, 20 Dec 2019 21:15:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F24711BF358
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 21:15:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C3B3888A43
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 21:15:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pAgHnqXLRdVk for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 21:15:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 45C1E88A41
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 21:15:04 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id f129so10592660wmf.2
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 13:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=APzXWCG1e3r5Vg5bFG4egAc/hzqmYvnRHiYRm5NUioM=;
 b=IiGK25/NX4pM3B3ix1PzKBWSYEGK15/90FrSpK0OqF5iBStYsD7ipIrn10BMSn1gcL
 Abhusah5wzvHuVoHMct6We3v3XZiD8XfQp+O4tJMRQFD6yGcmMaWbctHuOqc4zlRIYdl
 BYJjVTRAfgbNCn3MJMDR/dbf4LMwUHIPQgdvEiReq5L2B7+hLRmYebuyRCWLFH2g+L9q
 2fpi0wJm6MJsEZsLB4uYvGR2H8wQIwXHkIgNgtYD8MEYo0yyxzN/gSwGR73wDjbWsU+5
 ZVCKoDiroL+PuFrELzSrTi0u/3BTSIc8rS0YLHsNmubgw5q2PvoQraaLxS+LyGvjd3w8
 EhCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=APzXWCG1e3r5Vg5bFG4egAc/hzqmYvnRHiYRm5NUioM=;
 b=dn6Npwa0DX62Mv+/13RP8OYB2frEaGmDpfcSZg/rwPMA26Q3AP0dVGOUqvJ5LZqsgX
 y/qdOlbW1fp+POgtMOzVinqjt78NudrVzBIDDnwWln1J4e1A2w1o+4wHdBcAeKEcuV3l
 lW+k1w4Eqdfx17rrGleb6oL5CpLZhZCtuTCK5i+bbfk65oGt/F67sZ0PukSU2jyUfg/u
 iMs3WR0fKbx01qp06AoWwhOL84uItl6uTt818yQ34lH77gLbbzVNBHAIvXaxxrGw4hJo
 G03PVH0B8jzh8NhphUvczTvbcMApDoMEVJTOnVO5fe/XqH5OE2B3Yymw0+VHFd0rKxXZ
 OyTw==
X-Gm-Message-State: APjAAAU+Js5lR+bmi1fsZR0cyKkZuGYO4bLvzdD5mqh6zkcUPL2pFa+p
 6nINgLwkMxw1B3Rm3qNBuQUQmvVI
X-Google-Smtp-Source: APXvYqw7r1GaB8g7uq7FboVW9zPgjZzV7biCI9iBvDiIfD1vgFUlBVY/SCszZcEByG3cy1eo3ynQMg==
X-Received: by 2002:a1c:9acf:: with SMTP id
 c198mr17909917wme.175.1576876502502; 
 Fri, 20 Dec 2019 13:15:02 -0800 (PST)
Received: from [192.168.43.18] (92.40.248.136.threembb.co.uk. [92.40.248.136])
 by smtp.gmail.com with ESMTPSA id
 b10sm11065960wrt.90.2019.12.20.13.15.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2019 13:15:02 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/5] staging: vt6656: Fix non zero logical return of,
 usb_control_msg
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <08e88842-6f78-a2e3-a7a0-139fec960b2b@gmail.com>
Date: Fri, 20 Dec 2019 21:14:59 +0000
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

Starting with commit 59608cb1de1856
("staging: vt6656: clean function's error path in usbpipe.c")
the usb control functions have returned errors throughout driver
with only logical variable checking.

However, usb_control_msg return the amount of bytes transferred
this means that normal operation causes errors.

Correct the return function so only return zero when transfer
is successful.

Cc: stable <stable@vger.kernel.org> # v5.3+
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/usbpipe.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index d3304df6bd53..488ebd98773d 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -59,7 +59,9 @@ int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
 
 	kfree(usb_buffer);
 
-	if (ret >= 0 && ret < (int)length)
+	if (ret == (int)length)
+		ret = 0;
+	else
 		ret = -EIO;
 
 end_unlock:
@@ -103,7 +105,9 @@ int vnt_control_in(struct vnt_private *priv, u8 request, u16 value,
 
 	kfree(usb_buffer);
 
-	if (ret >= 0 && ret < (int)length)
+	if (ret == (int)length)
+		ret = 0;
+	else
 		ret = -EIO;
 
 end_unlock:
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
