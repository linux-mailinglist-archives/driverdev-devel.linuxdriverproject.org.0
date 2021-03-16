Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2708D33E194
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 23:43:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F3814ECF9;
	Tue, 16 Mar 2021 22:43:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8BPhMrmlQJns; Tue, 16 Mar 2021 22:43:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DE414EC59;
	Tue, 16 Mar 2021 22:43:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A299A1BF47D
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 22:42:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 910BE605D2
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 22:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wuR3qRrzT4Xd for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 22:42:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BBC6605A9
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 22:42:49 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id l4so37046392qkl.0
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=lqIWtl2xp+e+AddUQXVvackBapj1JOoVjO6xEMxFDvE=;
 b=OLuyXVyY/gjw2H8U3mPr8kQd+klVqZJYIsH3OnyaRc5Mvbmalpu89rXgMrJEDJejUR
 zJdX2pcJQFrXZpQYkG9FoVAEOrCtzgyrOjphkKMsx/SK8WxSxkZuNejAME1+QNqQMkxc
 vRHqT/kd3MuP/QGcaVVRnO4y8ADBcm5KIOBwYWeZ44T5gQXLekY+Yj7QT5Q6LnEDnQuw
 oMEoHFAGFDZY/OqYcmCMpZvrwLR7PvCOTCWzeYXLiZQmk3YgWsS3N/DBZiN8xswiGJDI
 I2rX1MzMaPX5wGQrgABqdo5TTRWRSwA8mv+k4TTVMLNLnDsp4M3DmSepEtNFwja5qPhi
 dKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lqIWtl2xp+e+AddUQXVvackBapj1JOoVjO6xEMxFDvE=;
 b=hrv355dIwV5yZPVcJPNQrHx5gVgudFOAcnBYt+9BkitxuXcTy0Zf2WhI8zOZTCTovN
 GiLpuOZ/iFCj9qhkme+B087Wx9Y9+o+7ZkfWCZsj8bNIFPpnYivGnhHo86Q5Vm98Wr7W
 uGaTWdaFwNSni9IE92ZPFVim9zAocjKJlt54GuOjVKO6CtgmkiLji1W69tVMtZUGCqeI
 GWdeLTktJFZTHUhp0WrC84E8JcqQJ/doIDKFAQUXlofc2vOrEq1kE+iLNq3dv8vCFSFH
 ivORFyUCyCyXF5daZqJ7X0BzmP3htcw97T+nbfUG3RM3DXmFFWHp6zV9D+/Z/s3wC/2V
 kRgw==
X-Gm-Message-State: AOAM533+PAjXuQZRilj18wxKmqjcxIH94yNSljNNETrUmSJZVDNrt4Ty
 mJT90m8r3lO5iIeFmXp7Aac=
X-Google-Smtp-Source: ABdhPJz79rOT1uhDyZDcaPJd5ysjnwFbB02Wr0OLc/GTAa1Yxlkw25PqAtnwJwo0WDFMTv4MkxdYtA==
X-Received: by 2002:a05:620a:1323:: with SMTP id
 p3mr1433214qkj.175.1615934568309; 
 Tue, 16 Mar 2021 15:42:48 -0700 (PDT)
Received: from tong-desktop.local ([2601:5c0:c200:27c6:ec35:b39e:95f4:3370])
 by smtp.googlemail.com with ESMTPSA id e15sm14444880qti.79.2021.03.16.15.42.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 15:42:48 -0700 (PDT)
From: Tong Zhang <ztong0001@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tong Zhang <ztong0001@gmail.com>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: das800: fix request_irq() warn
Date: Tue, 16 Mar 2021 18:42:26 -0400
Message-Id: <20210316224227.348310-1-ztong0001@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <92b7c57b-b645-9965-8157-4ca76a803cba@mev.co.uk>
References: <92b7c57b-b645-9965-8157-4ca76a803cba@mev.co.uk>
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

request_irq() wont accept a name which contains slash so we need to
repalce it with something else -- otherwise it will trigger a warning
and the entry in /proc/irq/ will not be created
since the .name might be used by userspace and we don't want to break
userspace, so we are changing the parameters passed to request_irq()

Suggested-by: Ian Abbott <abbotti@mev.co.uk>
Signed-off-by: Tong Zhang <ztong0001@gmail.com>
---
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
