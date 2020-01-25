Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DC6149404
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 09:44:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7363E87100;
	Sat, 25 Jan 2020 08:44:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b2gIH5yVuiAu; Sat, 25 Jan 2020 08:44:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 765A0870D2;
	Sat, 25 Jan 2020 08:44:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B8911BF2FD
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 08:44:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 98420870D2
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 08:44:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wFp8UBnPjCpI for <devel@linuxdriverproject.org>;
 Sat, 25 Jan 2020 08:44:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9BDB5870D0
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 08:44:10 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id t6so1784446plj.5
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 00:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Sg499Tfb3mohA4p0m6z4rC8Gw18lzl843VQiZsEcJYk=;
 b=dk0l57cF9lRQaWGwIvxjXe+NoAH6ao/tNUFBd/bpqpCSWiIjuln2HYMQybiYS21HnU
 IXF9wbTdpRCaxLd0ITc/LK8Y3RgXgYgAVm+pGDfy0n8Hg72ut6O+1B916MNpkiQpDRI1
 sfg3rDCfNaUB1QGNROSBfbGaqrHKOFxRz+NW9Ga6EX8LRFAGQxZh1R5V3aS6OGF9ZLvr
 IPoQZq/PkwUjMiGEGsQU9e/I+6SsRGbZDsREZJFZNY/Q5TeZbPtYGGgiWXlk8f5Tcohf
 ug9fGjCLhuY1k6Snd5s63f0DSwFkIYUIlwhLiS1+l3tnZlWPt51tLdp/fgFpVeeS+BDN
 MOLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Sg499Tfb3mohA4p0m6z4rC8Gw18lzl843VQiZsEcJYk=;
 b=dZsr9KckruNxLjmGZ/bF+SqUYIHNGpfVTyv+hP0khdkkY+O9reaJ8Wg3pQYO+IgeOe
 aXb+/+t0zsvrAB48oYZZFzpDDlvFklXrkFUaLoX566sJk9rbCVdM3CElXaos/noFUJOw
 qPRd2xMeU/MN3Xuq65EITR0mYZH3MDIUsEokKdjOJr2heOY4NOSRAefzCG++Iof426LF
 Ae5hVF4I/Uuivxs7oOmUEXWos1KP0eSY+KwKT65P++Z2xjcQHEeO8vx9xrXQEtqGzh8i
 q2hZPNFKA3e03oMIzR77NWXF73T/zAaShAvrEr2JEU5ujhYRNH+ITFkcfG65s6gZG8yY
 RzKg==
X-Gm-Message-State: APjAAAXdwhUIZ02Ze1dt79jGvM3zo+XJAJeGQcqCGWkQOg9skI9Y5/S6
 bcXB0uNzp6CRG3ueKlJ6Ib0=
X-Google-Smtp-Source: APXvYqxLq5+2a/fDIqR8qQFe+R5NU9WyWT2LBE3BHKqfc/VYQFv7x8Qrw8QSq7Oj9w+//LR26z40Kw==
X-Received: by 2002:a17:90a:8a12:: with SMTP id
 w18mr3725137pjn.68.1579941850044; 
 Sat, 25 Jan 2020 00:44:10 -0800 (PST)
Received: from google.com ([123.201.163.7])
 by smtp.gmail.com with ESMTPSA id w38sm9267986pgk.45.2020.01.25.00.44.07
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 25 Jan 2020 00:44:09 -0800 (PST)
Date: Sat, 25 Jan 2020 14:14:03 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: vireshk@kernel.org, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org, greybus-dev@lists.linaro.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: greybus: bootrom: fix uninitialized variables
Message-ID: <20200125084403.GA3386@google.com>
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

fix uninitialized variables issue found using static code analysis tool

(error) Uninitialized variable: offset
(error) Uninitialized variable: size

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
  drivers/staging/greybus/bootrom.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
index a8efb86..9eabeb3 100644
--- a/drivers/staging/greybus/bootrom.c
+++ b/drivers/staging/greybus/bootrom.c
@@ -245,7 +245,7 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
  	struct gb_bootrom_get_firmware_request *firmware_request;
  	struct gb_bootrom_get_firmware_response *firmware_response;
  	struct device *dev = &op->connection->bundle->dev;
-	unsigned int offset, size;
+	unsigned int offset = 0, size = 0;
  	enum next_request_type next_request;
  	int ret = 0;
  
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
