Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC6A2D8E99
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 17:17:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25CC585E83;
	Sun, 13 Dec 2020 16:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d4F_gUgvLDU1; Sun, 13 Dec 2020 16:17:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03E0585C54;
	Sun, 13 Dec 2020 16:17:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D00A51BF3EA
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C997886D93
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ltJj5WR2ndQ for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 16:17:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1290186D0F
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 16:17:30 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id w206so7602967wma.0
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 08:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=14/39lqjLWy5D8ojS/4hZl9Olsf4TSz2SKrvUayrnRw=;
 b=AY6LlAAKxuWWJVitg9V9x8itqgp5ue823Dr3j6+y6801cBoiqE8xXbiyTxem2M/6RD
 6HPqa90EPqElJfBkOzuPA6HRrohRfxBDSiQ3zN3R9bnsOmIK+3jex3R1L0iop9U/9MwJ
 m4L3iokWQfvkLkEmrqEU6n5Lr6e/WZMXAqoR9Q1Zxi1eoMlbV3woSiNKw0M7awpkvseS
 PCE/MJAIoMkbmAlTawzBzbCaeVmIOmBg+AwWvAYCnPF+1evIntGxOvQZuvrfNOpTXMZR
 I5MlZjA7gMKAs0IwCC1UFJtYKWJEHyrdioENnzQXY09Vj7jodjJU08jmUYzdizO53UxH
 DodA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=14/39lqjLWy5D8ojS/4hZl9Olsf4TSz2SKrvUayrnRw=;
 b=jFbQhDlgjqGV4mTqh9gljoI0g1BDt1e0qn0r/NKeqs/iK6Ku2SlSUngWD2kZzKUL0a
 de8EH/jGzyQS5tj8azNBwaAVq5f4YA5VKeqVU1/vyfAPbNk+BpL7OLfQtWXPMUppDkAp
 3gxKJwmqW2vosGgh5vz9HleineUsLj3P2BcJ8VzJLk3Zolzd15hyNAU1L5X8w+954RP1
 QxeedfRctKvDkLqUNywNSSKT6l26GP+/bhK60M0pl+U7/C/Gd/abXXEis8xQCkqGsEw5
 MjOxIwjfnbiXmiruzgWKadEFV1MbszBKJF/QM6QlhQ1IB09A/11ji4hvkHfFaZuNoyiQ
 0eeQ==
X-Gm-Message-State: AOAM533ZH4qwSmjERhUFLPoywG7J+fvzIvCD68Xn2c2zcR89gd6/P4+v
 yD1MgxdMAyvH2Xf+DMP1oGg=
X-Google-Smtp-Source: ABdhPJw7+qwxllgPeP+/Eke6WG9i5PxiacrgprRiq8iwFKUKEM60eIukF4H8XeXddBHTPQGc/okAEQ==
X-Received: by 2002:a7b:cc90:: with SMTP id p16mr22712332wma.105.1607876248657; 
 Sun, 13 Dec 2020 08:17:28 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 64sm27102073wmd.12.2020.12.13.08.17.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Dec 2020 08:17:28 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 4/8] pinctrl: ralink: rt2880: add missing NULL check
Date: Sun, 13 Dec 2020 17:17:17 +0100
Message-Id: <20201213161721.6514-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Memory is being requested to the kernel but there is
a missing check for NULL. Hence, add it.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/pinctrl/ralink/pinctrl-rt2880.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/ralink/pinctrl-rt2880.c b/drivers/pinctrl/ralink/pinctrl-rt2880.c
index 6e0bf7c4837b..3c3336b724ca 100644
--- a/drivers/pinctrl/ralink/pinctrl-rt2880.c
+++ b/drivers/pinctrl/ralink/pinctrl-rt2880.c
@@ -238,6 +238,8 @@ static int rt2880_pinmux_index(struct rt2880_priv *p)
 			p->func[c] = &p->groups[i].func[j];
 			p->func[c]->groups = devm_kzalloc(p->dev, sizeof(int),
 						    GFP_KERNEL);
+			if (!p->func[c]->groups)
+				return -ENOMEM;
 			p->func[c]->groups[0] = i;
 			p->func[c]->group_count = 1;
 			c++;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
