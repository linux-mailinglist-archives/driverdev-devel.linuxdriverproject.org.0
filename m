Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 843EE3527D0
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Apr 2021 11:05:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0B3584C42;
	Fri,  2 Apr 2021 09:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id shvGJQnb22H1; Fri,  2 Apr 2021 09:05:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1553784B90;
	Fri,  2 Apr 2021 09:05:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F1CC1BF309
 for <devel@linuxdriverproject.org>; Fri,  2 Apr 2021 09:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0959584A72
 for <devel@linuxdriverproject.org>; Fri,  2 Apr 2021 09:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cMjAsG-No51K for <devel@linuxdriverproject.org>;
 Fri,  2 Apr 2021 09:05:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9643B84A5F
 for <devel@driverdev.osuosl.org>; Fri,  2 Apr 2021 09:05:08 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id t20so2247215plr.13
 for <devel@driverdev.osuosl.org>; Fri, 02 Apr 2021 02:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mCA52LnxgW5hjAvuxDGqbFSlZckDKlP65WIWKRvVIMU=;
 b=TaCV4uSnwrBEc8SboS0N1TQdq8jwpEVYiDzgV5Q/c0YHQHpVCNRvIgyrdwveKwTU+I
 ep4cMO5W2F4RfJnybDv/gK0MwddSRNWo3GTxLhM93agea/BZUqBwWd+16kJ7f2zrneDN
 pHby7c88i1xudNizZfIzh8rTXHh89Ig0Aed2I8MOU2KGZptsPQIwpJ/pC0uDJ4Oun7h5
 dUEw2bKQQ2UyyGrPs8FUCGQP2LVFfd32EODNdqmHiEGo/mqN+NmujuF6Lv1BeKFxLZDV
 fwTQupw84ZmUQwqeKtiGxg+jtD4icdRuktt2nBedEQAja9maMTjJuussoT3C8USaR4Wb
 5ojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mCA52LnxgW5hjAvuxDGqbFSlZckDKlP65WIWKRvVIMU=;
 b=Mh4Vaovp7UDEIQL0h56CKL4dR2XVBu0BxZREeUdeGIgaIiDW7p35Avb/XGUX1P6WGS
 oq7b0GHI2VZWjKYjpzLVPJgaEq+UVWdq/7zaWACRJbdbHThmw+TcXPf43JvK7to2CdY4
 Urc7O3H3JHgB+vgXPZSma929wejP8VIMlIK4LCPZvHrtB8Hzh18M2mh1is8M0GU0VJdm
 Ud2IZg9I43QTOoREeWzn6PRPkzaDWa/z7z6doZvOUsWcHZvG1ttekzYM8ngRsSZAuwi6
 qFfV/oqs3izs6h+I2JRiVE6qm+UGluR4KGTP6XGt1GPXZfkxgywIJqblO6iLM/CNXIUB
 oxjQ==
X-Gm-Message-State: AOAM5322/PI1Jr218k2ST6Gs/DtL0rwZOEJ+e2wiGCQWGD9rywA2+BVX
 hZ2zBTFvWEQRyHLExpc04fY=
X-Google-Smtp-Source: ABdhPJwIE6dwJAZoV9M0FQR6LMsf6SjAEgt6wCg4eBQ8RCoATEiQSmZjb26E50hwZ7zQmqh0kHm3yg==
X-Received: by 2002:a17:902:a585:b029:e7:3d46:660d with SMTP id
 az5-20020a170902a585b02900e73d46660dmr11634771plb.12.1617354308017; 
 Fri, 02 Apr 2021 02:05:08 -0700 (PDT)
Received: from localhost.localdomain ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id js16sm7332353pjb.21.2021.04.02.02.05.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Apr 2021 02:05:07 -0700 (PDT)
From: Carlis <zhangxuezhi3@gmail.com>
To: gregkh@linuxfoundation.org,
	zhangxuezhi1@yulong.com
Subject: [PATCH] staging: fbtft: change snprintf() to scnprintf()
Date: Fri,  2 Apr 2021 09:05:01 +0000
Message-Id: <20210402090501.152561-1-zhangxuezhi3@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Xuezhi Zhang <zhangxuezhi1@yulong.com>

show() must not use snprintf() when formatting the value to
be returned to user space.

Signed-off-by: Xuezhi Zhang <zhangxuezhi1@yulong.com>
---
 drivers/staging/fbtft/fbtft-sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
index 26e52cc2de64..7df92db648d6 100644
--- a/drivers/staging/fbtft/fbtft-sysfs.c
+++ b/drivers/staging/fbtft/fbtft-sysfs.c
@@ -199,7 +199,7 @@ static ssize_t show_debug(struct device *device,
 	struct fb_info *fb_info = dev_get_drvdata(device);
 	struct fbtft_par *par = fb_info->par;
 
-	return snprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
+	return scnprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
 }
 
 static struct device_attribute debug_device_attr =
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
