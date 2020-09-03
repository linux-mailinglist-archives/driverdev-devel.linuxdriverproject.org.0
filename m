Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A56525C8BF
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 20:32:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8252B86CF6;
	Thu,  3 Sep 2020 18:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fTWBBAKA8ZUC; Thu,  3 Sep 2020 18:32:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 752BD8542B;
	Thu,  3 Sep 2020 18:32:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21E7A1BF40E
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 18:32:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 166CB204D0
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 18:32:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FFmq6fTD8N7y for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 18:32:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C318204C2
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 18:32:10 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id m6so4311974wrn.0
 for <devel@driverdev.osuosl.org>; Thu, 03 Sep 2020 11:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nZlFaUQfaJJWMFCcYk05F0yvxG2u/t/yre5shVIK7KI=;
 b=gHIVbJ9oSriqlHoFWjPkTanbtqPBByFRcKhKU7auhizwrXjLqPYZNCx8CYzN0YtlCM
 KgymGB5DkBACD2njVMbQAM5pRQJK8IlwESyCWXD6uB4SzeW7GQZmsEKWnql/Q8b176zO
 8UkPY8xcCx79PVsSRc9WwLwX0hPisqiQOYcQa4uaGMheM05PTEsmwFkOAiF/yYau+5HN
 Eora7TL3yzFmQpjUyuJmy+nUQtQAeqNLGsjn/37K8nzh6I4XvjCtu5xlK1n79s228mJl
 Q04K4kYteu4ArKjrl+wyiaNoIaAzdvg8qvqedy3Z5bC5wVbJbXRVZrGIW8/2wdms0YFT
 XOlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nZlFaUQfaJJWMFCcYk05F0yvxG2u/t/yre5shVIK7KI=;
 b=azHIZV2eCqAZrpBr002EqDSaJuLIuDG2N3lKlMjNR2FZQKfnXDKJ8+AqMDJXWVsL7u
 z3jRAE35eiab5J3Y/WHCWcCSrWd7FbekX+2ctj3dn47RhcXx1LHKXld8LW78oEmDVxdl
 aZm8nC2mCk6iW4z0axGy/4U1lZxi2iXSR3cCTaV6wiEZnG/COwGYZmHtn9s3uPqNIgoo
 LTEz6qEe0OmzvfIRaDSEvtacoDgxZTxDwry1xXLuDMDUR2CyFAHOk/9Ia4f1ozk0UnNA
 0D6QDpirvAdLffSxGYR/Eg4KGIgNy7ya/cv8VYrnUsBVAu1tLn1JM/RB6CmXFl+RzArX
 Qsmg==
X-Gm-Message-State: AOAM5338AlqMEs+Vl0HvChmFshsG4Mpf7wdzRop18FomJILmVltJ4SNG
 XcsPXqRyBwB9dVdLMVL4VUgcg/K9pAfh1/bf
X-Google-Smtp-Source: ABdhPJwH1D9z5Su4/YaDQmrHE/SrdVgmIm5oEcQPysCfCqeDKRnP1O8ku5IIaSbKciAfSfFkiunUMA==
X-Received: by 2002:adf:c983:: with SMTP id f3mr3770266wrh.348.1599157928427; 
 Thu, 03 Sep 2020 11:32:08 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id v12sm5812241wri.47.2020.09.03.11.32.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Sep 2020 11:32:08 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Subject: [PATCH 2/2] staging: media: atomisp: Remove unhelpful info message
Date: Thu,  3 Sep 2020 19:31:35 +0100
Message-Id: <20200903183145.720727-2-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200903183145.720727-1-alex.dewar90@gmail.com>
References: <20200903183145.720727-1-alex.dewar90@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, linux-media@vger.kernel.org
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
index 621555b0cf6b..77b7f59e62d7 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -771,7 +771,6 @@ static int lm3554_gpio_init(struct i2c_client *client)
 	ret = gpiod_direction_output(pdata->gpio_reset, 0);
 	if (ret < 0)
 		return ret;
-	dev_info(&client->dev, "flash led reset successfully\n");
 
 	if (!pdata->gpio_strobe)
 		return -EINVAL;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
