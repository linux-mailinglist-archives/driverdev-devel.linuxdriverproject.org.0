Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C2E273E1D
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 11:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4764086669;
	Tue, 22 Sep 2020 09:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hYmJyb-cx8Gv; Tue, 22 Sep 2020 09:09:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 185148633E;
	Tue, 22 Sep 2020 09:09:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3327B1BF25F
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1EBFE22843
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:09:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kd0JBq97BTFd for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 09:09:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 2CC122263C
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 09:09:38 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id w2so2531346wmi.1
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 02:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=r57iWCuDHaIWumoTfNxqkUyAoNSMqRJV6vH8XsPaOWE=;
 b=uN4TPm80jYkdN2XC8RAifrlrA4q12X3NAOIzWS/FS3Ib5qwbI7zo4U1iIdhS506IsW
 4Fmizz9zDx/iGQUgQ7opItOr9jOi6XoYAq60+o0qHsCSIMBOHxyQhNG50V4xPTrbn3Tn
 Zq7hoEG6ers70G5UjbEeGAbyS+o+6FL3/TXT8lDidnN0CtvGLhZ9AYYR/zNVA4Cirpvb
 QnUzG9gBCA8b35dbZtk4ogZjfnnq68f1MWy16zbJ2kRzJyZBdEsD0YI6w6qmM+DG1xqg
 KhjR3x+HqpFBVbrNFQ1Y3XWNzCaHrqfIHVmSFFsdneM4VtvTEiVms/LNYqEyqzKN5u5n
 LKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r57iWCuDHaIWumoTfNxqkUyAoNSMqRJV6vH8XsPaOWE=;
 b=QVYuo5F0DGnux55lnbFDIFe7O7YLlzP04lUWa+XbktqVI0hsNfn4mvlkebgbjpWqC7
 BsYSacnaP/aTHOYYUp8FD6vDrbCnLVc28/N/u0euR8X1redbHGHcxYehV6Tn7nFyFJ/G
 5yzqhj436oHdO+bIcLzggkgsYTcsDi34UUTceTaYsR3hDYuLOrDqebt65NoBQciHYT/U
 Vmtk663rySQpF9T1YqbAjBljTBYfPsgceds6wGo/PTGHoQP6LY/ZssO5m1pWLkU1qI98
 5D/25P84TDvCw6K+OAtwxCNQ6YHgf862QYbDSoA1RMy75Rkz5+xZSVh3DZd4id/MVrtl
 IW3Q==
X-Gm-Message-State: AOAM532GqkwsphsMP5+na4Doa5EuphjUfG+avYtt1ceosjKZ3bC2CYXi
 4hqd/fmMQFR3S4QAqoDG0hU=
X-Google-Smtp-Source: ABdhPJy/tuF8IskuK9u88sAZfrDy+NdeScFVkvl1Ds3OvsDQ6LYn4XC5UFFeMXSvCqSHDRGACRAkzA==
X-Received: by 2002:a1c:8115:: with SMTP id c21mr3499169wmd.153.1600765776638; 
 Tue, 22 Sep 2020 02:09:36 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id u186sm3659332wmu.34.2020.09.22.02.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 02:09:36 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Alan Cox <alan@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REBASE 2/3] staging: media: atomisp: Remove unhelpful info
 message
Date: Tue, 22 Sep 2020 10:09:09 +0100
Message-Id: <20200922090914.20702-3-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200922090914.20702-1-alex.dewar90@gmail.com>
References: <21f18dc2-a1bc-0a37-0336-fc35170a40e9@gmail.com>
 <20200922090914.20702-1-alex.dewar90@gmail.com>
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

We don't really need to know that the LED pin reset successfully.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index 67e62b96adf9..5e895586e80a 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -772,7 +772,6 @@ static int lm3554_gpio_init(struct i2c_client *client)
 	ret = gpio_direction_output(pdata->gpio_reset, 0);
 	if (ret < 0)
 		goto err_gpio_reset;
-	dev_info(&client->dev, "flash led reset successfully\n");
 
 	if (!gpio_is_valid(pdata->gpio_strobe)) {
 		ret = -EINVAL;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
