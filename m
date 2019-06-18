Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D36AE4A95C
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 20:04:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EA33D204F3;
	Tue, 18 Jun 2019 18:04:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b26thjZ8NV0W; Tue, 18 Jun 2019 18:04:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B65C220005;
	Tue, 18 Jun 2019 18:04:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0701A1BF327
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:04:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 03FD882494
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:04:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6fxlz2NQYWtB for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 18:04:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 91C418238E
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:04:36 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k187so8118002pga.0
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 11:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=rVGH4kgsuXcbNSFNao8ZqGI4Q+bUa7JZsKDeO5LRYIs=;
 b=MiXxaK17hq9pXQesf9RsuWynYdoYHHjZ2W/JdW138tleLdBC4mmTA3+/yunFt4ayVZ
 oeOwYHUKbl7zjyBR7iFNBu2xBJ3B2SApRa5/F0DXE+ZVBBQ5rHjUuLKa72A0GdqgJDX7
 JPYjj15VN3QBaRuvMP1wLt2KmOkYbKeIRHuNfm8P+aW5EIh8UYC7EAm7aa8ibq+wf/Hu
 Bo65TKZksIGrLHsyrRJIecdgwD3fR/QHteGkyBKCjzF8zjuyYyxJNkiVJgqbfelWgYSG
 XYE28LVx9ONz6B/lkm6Y3Hq3CdMl/oFKK3HmrAWrzmr6FphFO70oDEYJ2cgRTwUjKN0W
 ZtLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=rVGH4kgsuXcbNSFNao8ZqGI4Q+bUa7JZsKDeO5LRYIs=;
 b=YHWi7xHr6tqahtkzfvH+HLKnq+UWCEYCFZkl+LmHblHIKs5vZi9UVIWWMWbiq4ToI1
 g+93AIdA1qjXXz2lttzsa79tknHH5av3o4U8QrzjeKG0N4vBjjxQbMkPxd6dRI76VWJG
 gHpVtUYZ5BDENCh7plymT1HQ4WYPdgFt53RV0P8u031vzlTtCxFevNYTrr3JbVfRRpvz
 t3bXO/um+Ui3zFdoc6uqt/CKCcnAOqLZO12yxe1CiIEcjZfZuW2kRPcoBn4NpCsvElyr
 2JpNEohlXqPmEeNq7CTjyPPTrExxLZGVJ91n2rm6KBj903o8NWBwUkvJir+efy6e8HqG
 2Qsw==
X-Gm-Message-State: APjAAAVmFVU0SszbmrnK+cJJbv+lQo2kNDKITiZk+MWPrFjV8kVIFxei
 nnxlVpDBkGmjkJn4V+PvqkW81Y9q
X-Google-Smtp-Source: APXvYqz60yQaQy3v3ZXhj+ZHQTnweDWQmBL4BSJBEMSd8o5KCzxSFi7nodT+mID0fTbLSMjz35cprw==
X-Received: by 2002:a17:90a:a09:: with SMTP id o9mr6429751pjo.95.1560881076294; 
 Tue, 18 Jun 2019 11:04:36 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id v185sm6789458pfb.14.2019.06.18.11.04.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 11:04:35 -0700 (PDT)
Date: Tue, 18 Jun 2019 23:34:31 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hildo Guillardi =?iso-8859-1?Q?J=FAnior?= <hildogjr@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8192e: rtllib_module: Remove redundant memset
Message-ID: <20190618180431.GA8170@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

alloc_etherdev function internally calls kvzalloc . So we may not need
explicit memset after this call.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_module.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_module.c b/drivers/staging/rtl8192e/rtllib_module.c
index bb13b1d..64d9fee 100644
--- a/drivers/staging/rtl8192e/rtllib_module.c
+++ b/drivers/staging/rtl8192e/rtllib_module.c
@@ -83,7 +83,6 @@ struct net_device *alloc_rtllib(int sizeof_priv)
 		return NULL;
 	}
 	ieee = (struct rtllib_device *)netdev_priv_rsl(dev);
-	memset(ieee, 0, sizeof(struct rtllib_device) + sizeof_priv);
 	ieee->dev = dev;
 
 	err = rtllib_networks_allocate(ieee);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
