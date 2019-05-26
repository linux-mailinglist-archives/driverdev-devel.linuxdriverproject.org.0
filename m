Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 913A62A784
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 03:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94A0523265;
	Sun, 26 May 2019 01:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f0E5rSRTlZB8; Sun, 26 May 2019 01:19:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BD48D231B1;
	Sun, 26 May 2019 01:19:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BD0C1BF5A6
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 88368882C3
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w0EKXNwb3dwg for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 01:19:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3274F88271
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 01:19:37 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id e9so5140812uar.9
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 18:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Imxy4FIzXGlW8y0z9ilHAlomSGYSr70A21L+In0BBYc=;
 b=eqNvPaBDo/7oaFVzhHSOuqp1POemOSpyAdtznI7ZQXgtOwUagFDUYrAB5fAj94ja7S
 AZqET18vAWsM1Ng8Y8JeooWH2wiLWGz+M9bh4rXIdXQk+nNNec32G+QA27YRA+wHA2gp
 hjEsoAh7dPSwVQ50jGYqOgejH4Z+jX6VkRrdt+4I7eo/H6sPeoWwKmAMSec0xBijR+tx
 zvZuRXPsjKu2E5dNcJDWX28bIQ4EC30LKSvvcezzLdATwmoFB67msbqxLzsMegeMmeWS
 +74n2gkn4noofNgWP2QspJDf0cbLQKiNRrs938ASoU8VsMrt+BfcXGlWWn+zvj5xhZ3r
 12sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Imxy4FIzXGlW8y0z9ilHAlomSGYSr70A21L+In0BBYc=;
 b=lUNSdQofL2bulqywQr0cRgy48qlEH2XPOaR+24PD4U68z+Lciwa688Ud2KP3qnGK1M
 nejnAYZnCiYvWhS/fbuBcUrOKDI95fhUUPDOEVBI9TLW7P64IZINShV1j8S6jEgZeGmL
 +UcH70KulZS9yr0psRb/FclpUXHR1FPKJSuRuNBMiEO/wyZTaqTkXC8H3LOKjooWTfNx
 pwWU+c0DwKiK27K3hlbZT+4J5OYKTtZRymCR9u5eZ+vXAYZhD+pqC8LTUdewZShzdeWy
 Tqs6lsTsbGailkKgvOaJBKg1hI1y32GsDaqGUCRRjABcqHSefCCDdc4RlLfME5WySYS4
 O1OQ==
X-Gm-Message-State: APjAAAVxX/d/MWST3JHtbS80AcGopnAbNmFW0aB+ZF2cfYU+Gc5PPPxS
 eFmpiUuvH+hhKkJR+ZZYoQI=
X-Google-Smtp-Source: APXvYqy7ppjxC9jSRkcnPosK92+pZuTAivGtcR7d9X1YTBX4Us+MU33TMUxM8EdNVlS0r4QTlHQfkw==
X-Received: by 2002:ab0:e08:: with SMTP id g8mr31063665uak.32.1558833576420;
 Sat, 25 May 2019 18:19:36 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id 9sm4593181vkk.43.2019.05.25.18.19.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 18:19:35 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 6/8] staging: kpc2000: kpc_i2c: fail probe if unable to get
 I/O resource
Date: Sun, 26 May 2019 01:18:32 +0000
Message-Id: <8b879ef19e5dd7520ac80c3f93c47ff63a8e1b6e.1558832514.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558832514.git.gneukum1@gmail.com>
References: <cover.1558832514.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The kpc_i2c driver attempts to map its I/O space without verifying
whether or not the result of platform_get_resource() is NULL. Make the
driver check that platform_get_resource did not return NULL before
attempting to use the value returned to map an I/O space.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index e4bbb91af972..452052bf9476 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -587,6 +587,9 @@ static int pi2c_probe(struct platform_device *pldev)
 	priv->adapter.algo = &smbus_algorithm;
 
 	res = platform_get_resource(pldev, IORESOURCE_MEM, 0);
+	if (!res)
+		return -ENXIO;
+
 	priv->smba = (unsigned long)ioremap_nocache(res->start, resource_size(res));
 
 	platform_set_drvdata(pldev, priv);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
