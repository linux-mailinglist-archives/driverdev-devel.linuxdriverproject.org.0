Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA693ED3B8
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Nov 2019 16:40:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 094908A866;
	Sun,  3 Nov 2019 15:40:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPqT+SPhyrvT; Sun,  3 Nov 2019 15:40:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE1018A135;
	Sun,  3 Nov 2019 15:40:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 212D31BF2CF
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 15:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DAEF8ABA0
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 15:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jBfJpQXf65se for <devel@linuxdriverproject.org>;
 Sun,  3 Nov 2019 15:40:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com
 [209.85.219.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6DC768A765
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 15:40:09 +0000 (UTC)
Received: by mail-yb1-f194.google.com with SMTP id i12so684792ybg.2
 for <devel@driverdev.osuosl.org>; Sun, 03 Nov 2019 07:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=x4j/IlwUnW0oXPf0xwxr4LoLQSGvtIg5s+az3FiNtkk=;
 b=JN89MVqm93zYD9LofbK1mpWPJSkcvJZhCAFdIoMo1g0lKy+MWTXz7uUKlQgjMG+kB7
 HfTYu6hm2ODG1nw/wUCI3KqWVNhqflhEmlipICvTbMKM3MkX9/b5+Yt68qGHRw4DJgo9
 PBMqp5mgAl5C54D4Jyg7mvSpVW85NgMNKZngxTcfu+BwzX1MTn4jJrX8g0IUFv/cMXzZ
 LaxZ/QLE52C22WXO/2Bgm0I8OzUklElVmeN85r3HKyQGXRqN/oeshFu2hnfNRAnUYsBp
 PtR7f+9K1wtWV4xSjjmdrhfVUqOsQlDFTXnnO0u6lqF5TAoCXe0/YyiLTgPCTCs9deXy
 twcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=x4j/IlwUnW0oXPf0xwxr4LoLQSGvtIg5s+az3FiNtkk=;
 b=daoGUTqe+AAarR9MvoOBwxFzveUFKKGC38gxcfAJYfNuz13u7aXzBa1816DUCYgBUa
 cA/VfUmEWkWNvTbXbXVEm1JY6dZBncJNH27AGeEBPqmw0uqBnPgsVRGd9vtMnRnYhayk
 Sc0XlVSdzn5LSuXYV0HPiUlPe8A5bqjIMYZvoeXiVcBOIy8cUhAfBAeZjWljZDcM/b1H
 Ob0b21hVMAJMyURA5kRxOcpHJi6DdJzgOvWGyvoNHlopNH4CM2hM7fV4kcXmYzC5x2JD
 O8Zp6d7HPcyXzv6jrPadctOMkrIjdspY1Kic+MsfERI1KlodrAZWLUdV6d5fAm2ZtVkN
 36Sw==
X-Gm-Message-State: APjAAAU1nR6tFcD2dnLR+coDl02wi7OnMVkOgxGN/55UeYwX3zEpnySJ
 QLRF70Kw1oKct/6ASCSDxkQ=
X-Google-Smtp-Source: APXvYqxbZxQYVugnGwmYAPCnUUXS9jZ+q1NxK1xEmrIBsy4Hp57ulLZLpZ6OslMRU75zEHAjWFI5Ng==
X-Received: by 2002:a25:3ce:: with SMTP id 197mr18238973ybd.255.1572795608598; 
 Sun, 03 Nov 2019 07:40:08 -0800 (PST)
Received: from rkanasun-VirtualBox.ad.cirrus.com ([141.131.2.3])
 by smtp.gmail.com with ESMTPSA id l76sm12569294ywl.24.2019.11.03.07.40.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 07:40:08 -0800 (PST)
From: Rama Kumar <ramakumar.kanasundara@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] FBTFT: Changed delay function.
Date: Sun,  3 Nov 2019 09:40:03 -0600
Message-Id: <20191103154003.2739-1-ramakumar.kanasundara@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Rama Kumar <ramakumar.kanasundara@gmail.com>,
 linux-kernel@vger.kernel.org, nishadkamdar@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Hi,

Changed udelay() to usleep_range() based on the document in the path, "Documentation/timers/timers-howto.rst". It was suggested to use usleep_range() function for sleeping duration between 10us - 20 ms. original code used udelay() for sleeping 20 us.
 
---
drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index eeeeec97ad27..471a145e3c00 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
 	dev_dbg(par->info->device, "%s()\n", __func__);
 
 	gpiod_set_value(par->gpio.reset, 0);
-	udelay(20);
+	usleep_range(20,20);
 	gpiod_set_value(par->gpio.reset, 1);
 	mdelay(120);
 }
-- 
Signed-off-by: Rama Kumar <ramakumar.kanasundara@gmail.com>

Thanks,
Rama Kumar

2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
