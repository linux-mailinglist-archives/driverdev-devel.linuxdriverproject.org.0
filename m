Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA85D1E06AF
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D7D287AE7;
	Mon, 25 May 2020 06:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 38OcnfbLQC33; Mon, 25 May 2020 06:11:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97CD0876A0;
	Mon, 25 May 2020 06:11:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 840201BF21A
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:11:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7E72485F18
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yHsiyNxo6F-T for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:11:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EEF7F85D8F
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:11:49 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id z80so16726511qka.0
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 23:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9IziVmgyfYM4YsH6OqHb3uAGAVG/qg0TjTfH8HoMiuk=;
 b=MmmC83QK+HaGsZEdKs3X2dpoX60/5ZUMa4upYpL4I37SmCRG7DhOAg2VDy6SSGUHkw
 On09QQ9AE1/qiQJUBqJIlACn9XBuRHZZdJnbOprCP/0pDLsYRwaMCVZugrf5/QAWuDPo
 lqm2Fx6bcBbkbaFZjDPf5156JT4CGkeRit0Ie2WAOn6D9nmEHL0U5O2hXrt9WwKZ9+XR
 pgM3nY9agX3CixvjaI3d+7pSMXQDGs4QAOt47yKIW3RJ7u0NFuws+ndGuhjTm2zR0CNH
 dx/Bt3I/y9qyAx205ZN4FJeEI8ntgT8qJmCgNrz8As0ROZVjSGXeoFk6q5Z6cfNSomsk
 7F0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9IziVmgyfYM4YsH6OqHb3uAGAVG/qg0TjTfH8HoMiuk=;
 b=apIlHNvwb9JTBHRA5mXGnDwyZJwT0yipNeGonsaIgYWk0Lp7x9ho7suTbeTHF3v3bH
 eJmxKbSHnYNeMQ5YcabC7b3uSoy3omzgPmhYD/KbrguJXqEVwwCpDBR+z5xcbWEUbJ9i
 OIfWHf6heZbZD7qwv3n49EC2jwkBTliKZocCC7MlpO4y/XBey5qMv4kjHR+fNhyNh2TT
 FuBkLDVXQRwAhl7MqgacuVBunBYH2wdr0dKU9E6UGhV6PoZWpyXFHmBTREt/IpZbDHMT
 fi0lfm7/VMkW+MAfkNJ5/qiw6X854SkE2m2knzQp4YbFqsGTlWvWQjD3PK7too+9+7sB
 zCFQ==
X-Gm-Message-State: AOAM5305CNHleMxAVj36w00YZOe0UL4U+kTDvwNtnu5p9B3+hvbJ54YI
 7+W59OkR2IkLRW93Rp+/xA==
X-Google-Smtp-Source: ABdhPJz4W7rG9gQgXFStdiHwzFfGeyODFuXYL4YmkKJh6WuzG4oJm1BVoOlr5k6sYisCAknLIRAiwg==
X-Received: by 2002:a37:2783:: with SMTP id
 n125mr24350464qkn.335.1590387108835; 
 Sun, 24 May 2020 23:11:48 -0700 (PDT)
Received: from localhost (cpe-104-162-195-29.nyc.res.rr.com. [104.162.195.29])
 by smtp.gmail.com with ESMTPSA id
 193sm2045786qkn.94.2020.05.24.23.11.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 May 2020 23:11:48 -0700 (PDT)
From: Till Varoquaux <till.varoquaux@gmail.com>
To: kernel-janitors@vger.kernel.org,
	pure.logic@nexus-software.ie
Subject: [PATCH] staging: greybus: loopback: fix a spelling error.
Date: Mon, 25 May 2020 02:10:43 -0400
Message-Id: <20200518051314.1785567-1-till.varoquaux@gmail.com>
X-Mailer: git-send-email 2.25.4
Received: from localhost (cpe-104-162-195-29.nyc.res.rr.com. [104.162.195.29])
 by smtp.gmail.com with ESMTPSA id e3sm8401074qtj.25.2020.05.17.22.13.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 17 May 2020 22:13:55 -0700 (PDT)
X-Mailer: git-send-email 2.25.4
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 trivial@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Till Varoquaux <till.varoquaux@gmail.com>, Johan Hovold <johan@kernel.org>,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Successed -> succeeded.

Signed-off-by: Till Varoquaux <till.varoquaux@gmail.com>

---
 drivers/staging/greybus/loopback.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index 583d9708a191..2471448ba42a 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -135,7 +135,7 @@ static ssize_t name##_##field##_show(struct device *dev,	\
 			    char *buf)					\
 {									\
 	struct gb_loopback *gb = dev_get_drvdata(dev);			\
-	/* Report 0 for min and max if no transfer successed */		\
+	/* Report 0 for min and max if no transfer succeeded */		\
 	if (!gb->requests_completed)					\
 		return sprintf(buf, "0\n");				\
 	return sprintf(buf, "%" #type "\n", gb->name.field);		\
-- 
2.25.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
