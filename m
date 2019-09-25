Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FCBBD918
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Sep 2019 09:25:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 42B5B204C0;
	Wed, 25 Sep 2019 07:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9K7Nm+tSUCsa; Wed, 25 Sep 2019 07:25:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D025C20485;
	Wed, 25 Sep 2019 07:25:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 724A81BF3D6
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 07:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F9A120465
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 07:25:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ge7kVV4CHlKx for <devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 07:25:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 7221120460
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 07:25:43 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id a2so2836906pfo.10
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 00:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=TZNqrj2QAxEBu1qPwHKDkmLtrJOXHa9jCvlD2ZZka3c=;
 b=mBo1BAtZL6GrTwty97MNeDEPjs8uwwAm14qDPoFYx8spNht6JtGdyWIqeG2yPmg/W+
 emqstlxrZLFUUcnypW4AJXbArR7CItrZoB1aMut8+X8o9ePxHvzTRgW/SEo4pAP3YUdY
 8i797GXfJQaCzAqxHilVpENjxgoiNY8Kfk+nv7rkeyfD1iJi/lgqGfX/+vDlCHuJK46M
 AOXDJCgwP8DXQsQh0c/g2owQuyJyWjq2Wfzbs9JDSQ40bJjLcRNEq0RRb63KBcLzAFmN
 FWFg+WmXOu/9Q+lE5dOsWvwhceWXOnMnNBkyBGLZR2gBK8sL78c/3/j62f5bI5cNf4wu
 pJzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=TZNqrj2QAxEBu1qPwHKDkmLtrJOXHa9jCvlD2ZZka3c=;
 b=jG8R6YfBMhMApaMMhJeMCnO2nUlbVRLgd/asJdtfs8jec7DUcvMRo/kql5WX21mvNy
 KAiQga3CXC1lLY3ehQsTI7eCfCm2MCnOKPrOibViJugMvrxdC3/ypbr1A0cb4RTyBuGf
 jXpYIrLbQDPothr1yWqGG6eBE6Ylvi9QhpB75/+IuvANkThpOHbJsir+w6+RchDgzpJn
 4k7LbXnQ5Y4y1rvzX7BzEYaUkm/qTDFknnXV1ySS7JauaUfiRVLq0rlcINeUJd5dNGbR
 sMonyNXeb3NW7tB6j6bF7Rk3vMZoR3C9tqLdrKmzqB1RLmTJrFGQkDUD4wp7TtAdDJ3C
 eYvQ==
X-Gm-Message-State: APjAAAUO2BOF9rws5FHK9URDo2b6Y2fv7Ha29QNtXGtXTPWqi9CaADeK
 PNYe5E9KtOeA3v3c2n5h7jA=
X-Google-Smtp-Source: APXvYqyWbVuE1DkVBU8FfUNXH/1D2n57BNh+ll24cli6H0xYdB3fPZJo+CFBN4vMciI0JdgAQ9sgyg==
X-Received: by 2002:a63:5652:: with SMTP id g18mr7204831pgm.393.1569396342746; 
 Wed, 25 Sep 2019 00:25:42 -0700 (PDT)
Received: from compute1 ([123.51.210.126])
 by smtp.gmail.com with ESMTPSA id x11sm4441028pja.3.2019.09.25.00.25.41
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 25 Sep 2019 00:25:41 -0700 (PDT)
Date: Wed, 25 Sep 2019 15:25:33 +0800
From: Jerry Lin <wahahab11@gmail.com>
To: Jens Frederich <jfrederich@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jon Nettleton <jon.nettleton@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jerry Lin <wahahab11@gmail.com>
Subject: [PATCH] staging: olpc_dcon: fix wrong dependencies in Kconfig file
Message-ID: <20190925072533.GA18121@compute1>
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

To allow simultaneous support for XO-1 and XO-1.5.
This module require GPIO_CS5535 (for 1.0) and ACPI (for 1.5) now.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Jerry Lin <wahahab11@gmail.com>
---
 drivers/staging/olpc_dcon/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/olpc_dcon/Kconfig b/drivers/staging/olpc_dcon/Kconfig
index 4ae271f..c2429e4 100644
--- a/drivers/staging/olpc_dcon/Kconfig
+++ b/drivers/staging/olpc_dcon/Kconfig
@@ -3,7 +3,7 @@ config FB_OLPC_DCON
 	tristate "One Laptop Per Child Display CONtroller support"
 	depends on OLPC && FB
 	depends on I2C
-	depends on (GPIO_CS5535 || ACPI)
+	depends on (GPIO_CS5535 && ACPI)
 	select BACKLIGHT_CLASS_DEVICE
 	help
 	  In order to support very low power operation, the XO laptop uses a
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
