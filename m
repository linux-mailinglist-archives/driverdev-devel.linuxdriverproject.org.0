Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C38FF3413CC
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Mar 2021 04:48:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCE8F4ECC3;
	Fri, 19 Mar 2021 03:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SiTkkQwGDjHm; Fri, 19 Mar 2021 03:48:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B26914EC8C;
	Fri, 19 Mar 2021 03:48:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2176E1BF976
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 03:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F24240100
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 03:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SdDcl2RX81XZ for <devel@linuxdriverproject.org>;
 Fri, 19 Mar 2021 03:48:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E63C2400FC
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 03:48:16 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id u7so5799759qtq.12
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 20:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=B2RnqxUzVjAaF9SlFdp/h+e1t2F2emkuMz4kNyNbvto=;
 b=UAXzEV/Jy55ieTkPbGz6esq+7fFMXhejFTLq7AsyGdltaCDoP1xDBqUEvv1LDRcFNx
 AVBqLpW12gG3yHULkCjc5YJumvfA0d6XyZf0uKGs1S1295nckcInjsSnngkbhjaMj0TR
 +OdOQGqpPXZIOleAV0OSpd3Ouegh5NS5JTX/N9jsg37PY7wMXmsXv5xMit2ahswBUoEG
 afeTDAGSTWMSi8YBCati8NKvccfdb/wRW92QlNjJqJiFxJp9tZ247ermn64ZcneUejB0
 JFwaAxs1rWjOrgquexYgW3fYcr0Bjhl6yX+Q1fOZB1ndsPFS4JDd4phEMm1bKz1+k6iL
 KTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B2RnqxUzVjAaF9SlFdp/h+e1t2F2emkuMz4kNyNbvto=;
 b=Na4TpG5zjzamzvQJipptxAdVt1hfl+cw7Ocs2OcRAR0MD/rBlHfOrdlxqPQEOCNnle
 FrqF0BbaiVGbyNfXvDLII7BWPBdUt1tX/67ctB0iHSak1/x7Qcevapa+ZdN9qkkqaDTa
 Ovqr1qdeH7m4uDPQr6c+4o7B4l2Fr3rcbruTq17kgDZSK8WUJKEL9ehoN7L0bBy/E+Tf
 ddzUijHvkQEtRNrx91zOicvSOX6hP7fqVrwHuf0RmyPrxsQtp62mAKHx1pmj/TgSqvM2
 5aGksFzV0rsGbJNoxJb25Of3tWS4VKW76PlHHeESI2Y7yJ97pt2V75KAYgnHu2tsqOJI
 UI3Q==
X-Gm-Message-State: AOAM5317LDV/dLaHO/xHuoRrPvNtAh5NO2RpEgiTlN7bKHX0vFrE7NEP
 7e0KpJYiKaqCP0OvNYl6Wt8=
X-Google-Smtp-Source: ABdhPJyroRNe9z6dDiAJCj1NfHjWUog+MKuMOilqeByW7LQEieZ1I23kdq206M8Xj50FgoVoXP5mKA==
X-Received: by 2002:ac8:702:: with SMTP id g2mr6738584qth.215.1616125695747;
 Thu, 18 Mar 2021 20:48:15 -0700 (PDT)
Received: from tong-desktop.local ([2601:5c0:c200:27c6:ed59:df3e:7ad8:c600])
 by smtp.googlemail.com with ESMTPSA id j1sm2974265qti.55.2021.03.18.20.48.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 20:48:15 -0700 (PDT)
From: Tong Zhang <ztong0001@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 Tong Zhang <ztong0001@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: comedi: das800: fix request_irq() warn
Date: Thu, 18 Mar 2021 23:47:52 -0400
Message-Id: <20210319034753.435811-1-ztong0001@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <8c65b02e-4315-153f-de2c-153862f195be@mev.co.uk>
References: <8c65b02e-4315-153f-de2c-153862f195be@mev.co.uk>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

request_irq() won't accept a name which contains slash so we need to
replace it with something else -- otherwise it will throw a warning
and the entry in /proc/irq/ will not be created.
Since the .name might be used by userspace and we don't want to break
userspace, so we are changing the parameters passed to request_irq()

Suggested-by: Ian Abbott <abbotti@mev.co.uk>
Signed-off-by: Tong Zhang <ztong0001@gmail.com>
Reviewed-by: Ian Abbott <abbotti@mev.co.uk>
---
v2: fix commit log

 drivers/staging/comedi/drivers/das800.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/das800.c b/drivers/staging/comedi/drivers/das800.c
index 2881808d6606..bc08324f422f 100644
--- a/drivers/staging/comedi/drivers/das800.c
+++ b/drivers/staging/comedi/drivers/das800.c
@@ -668,7 +668,7 @@ static int das800_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 	dev->board_name = board->name;
 
 	if (irq > 1 && irq <= 7) {
-		ret = request_irq(irq, das800_interrupt, 0, dev->board_name,
+		ret = request_irq(irq, das800_interrupt, 0, "das800",
 				  dev);
 		if (ret == 0)
 			dev->irq = irq;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
