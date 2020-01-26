Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 518FB1499A6
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 09:31:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFDA6861CF;
	Sun, 26 Jan 2020 08:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zi2GJlWbcwHp; Sun, 26 Jan 2020 08:31:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C87CE860BF;
	Sun, 26 Jan 2020 08:31:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E06381BF426
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 08:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DBE1C20447
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 08:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8KvnUc2xWTcV for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 08:31:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 4C7F220428
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 08:31:39 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id s64so3552872pgb.9
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 00:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=A/HVm3170PfNClVZmwRIPi9sbl79x5ttiRZ0PyXbaOs=;
 b=HHwGpHp8EjYpAYINXZLEuharzk0X51UuHHpyTyfFiQjf99Ug+UeaH7b6oMx3WSSJ9n
 75b3FsJrP9XMA2TDewW/ppYYDGPukuhvtVUIf+onMq/r1PID3jJEVzjaG5pA8hCjnTkw
 y8Tq7T424WEJ3+RhbZFT3776kKXwaSkFkb1NMs5TGXikTm1tl/qmdxuwkZGwfDngmTlT
 BTcs6t0/QyS3Cwk49wDsAk+J4ti3SBb3QwJgUoKEUTjZu0fB1+LnGndpGpKfTvTFiDJV
 Dsc7hOCi10ikLC0OxuCrdpkcc7nn7yUkK34myAk6LJDsH4uM3LYtdY0+CSKK6IYnEirD
 G/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=A/HVm3170PfNClVZmwRIPi9sbl79x5ttiRZ0PyXbaOs=;
 b=lbnFfS16mSOKJPpRsJhyAmD73Dw0LOTipIdcZon+A3vO03iqifrmQx+z5PMJSL+fYh
 9evP3HtmRJkUljBRp5RVo9/xFbSpn/afGRMjwtoWw3IFy43SdQ26VKFkCCfjUwsCkSZj
 aPzXKio+imOEudR+LWhVS7Yc2kB4alaoPXlZmTzKOvYyFEN4pyZe21PLxVAv98kH02l3
 Y5Cx4JMn1mvqO1UL7c3c6AyF2zEDJKFq/YGOTEHfFXiAah3ZICVykO36hYbD1Kaxbv72
 7YxHKwZocwQU0u/yZYD3aD5COie9MHKYD+xybHWWc5FNvee2RkJVYDhyx9XRTQv1WgFS
 cQIg==
X-Gm-Message-State: APjAAAXZpGTDwhDbFXKZNrIP0LHf4ZYQiBJsWaQCsP3vJwGEvkDabNCP
 VW9lU0+6HCM1lv6pn5RQKHOXXCLbiS6+Zw==
X-Google-Smtp-Source: APXvYqz2446wQU1D2ewWSd1GC8zgFgAP1p3+ZdA0gpPBv7Ouie0P26ycGZPJYf/Z05ATp0/rZQWRBA==
X-Received: by 2002:a65:5ccc:: with SMTP id b12mr13255457pgt.124.1580027498692; 
 Sun, 26 Jan 2020 00:31:38 -0800 (PST)
Received: from google.com ([123.201.163.10])
 by smtp.gmail.com with ESMTPSA id z64sm11988940pfz.23.2020.01.26.00.31.35
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sun, 26 Jan 2020 00:31:38 -0800 (PST)
Date: Sun, 26 Jan 2020 14:01:30 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: vireshk@kernel.org, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org, greybus-dev@lists.linaro.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: greybus: fix fw is NULL but dereferenced.
Message-ID: <20200126083130.GA17725@google.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (NetBSD/sparc64)
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
Cc: saurav.girepunje@hotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the warning reported by cocci check.

Changes:

In queue_work fw dereference before it actually get assigned.
move queue_work before gb_bootrom_set_timeout.

As gb_bootrom_get_firmware () return NEXT_REQ_READY_TO_BOOT
only when there is no error and offset + size is actually equal
to fw->size. So initialized next_request to NEXT_REQ_GET_FIRMWARE
for return in other case.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
  drivers/staging/greybus/bootrom.c | 6 ++----
  1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
index a8efb86..f54514e 100644
--- a/drivers/staging/greybus/bootrom.c
+++ b/drivers/staging/greybus/bootrom.c
@@ -246,7 +246,7 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
  	struct gb_bootrom_get_firmware_response *firmware_response;
  	struct device *dev = &op->connection->bundle->dev;
  	unsigned int offset, size;
-	enum next_request_type next_request;
+	enum next_request_type next_request = NEXT_REQ_GET_FIRMWARE;
  	int ret = 0;
  
  	/* Disable timeouts */
@@ -296,13 +296,11 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
  unlock:
  	mutex_unlock(&bootrom->mutex);
  
-queue_work:
  	/* Refresh timeout */
  	if (!ret && (offset + size == fw->size))
  		next_request = NEXT_REQ_READY_TO_BOOT;
-	else
-		next_request = NEXT_REQ_GET_FIRMWARE;
  
+queue_work:
  	gb_bootrom_set_timeout(bootrom, next_request, NEXT_REQ_TIMEOUT_MS);
  
  	return ret;
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
