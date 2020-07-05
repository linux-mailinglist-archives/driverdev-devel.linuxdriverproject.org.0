Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A743B21494A
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 02:22:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 55776891CA;
	Sun,  5 Jul 2020 00:22:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MWgxZSRn-1rQ; Sun,  5 Jul 2020 00:22:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C2B4E891A3;
	Sun,  5 Jul 2020 00:22:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 898391BF8C7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 86B94885EA
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tty7d9LqyG1U
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CC50A8859C
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:43 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id j10so26443959qtq.11
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 04 Jul 2020 17:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tCqfPs8SEW1mUF++i/x/KwHMjpuNxHr5uvQcF7WFJpA=;
 b=t+bEZydLS+4hKBCV6z6N0/28jcmby+hqjsnIlVRr7/OM6pkR8Cd9EOrRd7jUSz3eXE
 JUssd0y1399FYsnz33tMA47sDNZILtJaIDhclLcIcUBpEhzBDHYw5vpPKnnmq20ZkxRD
 EM3nigyKrBPeLI6lB4IG2i1Q8tKCsH16M55xaTz+tyHO//NpvJOxgdzYqU5ZPiq0AGI2
 lIuuqLlbdcjqCEjPyfjxFMzmZY8G8KcbrqxSt+xFV53PZlCSDFnfK2aX+sLPAHxQrLCs
 fHNprJo3MaR4zZyHkFjgOkIycX0sewsFRUfbF7clJxBC0Px0Cg4YSm8lO2CRCU/VBdId
 rwTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tCqfPs8SEW1mUF++i/x/KwHMjpuNxHr5uvQcF7WFJpA=;
 b=pHAInKBclCQyHqbZ4RMeiq+55iv3puLsreBtDNsr+ESnGHlujq6CzWDutktYUiZqlC
 ySfUXyPMqiOksgoiQiTQhnnor1AC71EioNYGbaR5oycMhLyGLUp8Quj93rDMCMS7kYmm
 E2BP0diQJaxJsKL2mUOABOyBqh2bUPAAaMc7Ka9jkVNONzfq30fY02xsszyIh9uQZtoe
 zR48ggJFlw9N7d0wDZeWgWtMnwPZwmBBJBpmdBFgu0AHeeR8bDVQmW0S+yIOnattV/rI
 qZaaTaLsdw3OAPayvj7ulYdoNPdee12HHfiu/+kE4p8O8Wy+MQUFKwTPkkyQZoSchBFy
 ehhA==
X-Gm-Message-State: AOAM533L/ObmRvn2VNcho8DRAWwSojL60DZUusTO6iV+9gfxejZZC5fe
 +DL9vxwH9/rugFJVZRZyXbM=
X-Google-Smtp-Source: ABdhPJzgr7Q/I1Ivr0IYaXLLGvRdOsVlXWWsEZz69g2UF7PHtJnWrnTwaqZYev+OdtbVKR8mfHppgw==
X-Received: by 2002:aed:2cc5:: with SMTP id g63mr42740048qtd.59.1593908562830; 
 Sat, 04 Jul 2020 17:22:42 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:1a4c:230b:91f2:972d])
 by smtp.gmail.com with ESMTPSA id v62sm10254072qkb.81.2020.07.04.17.22.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 17:22:42 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH 5/5] staging: rtl8712: Use proper format in call to dev_err()
Date: Sat,  4 Jul 2020 21:22:15 -0300
Message-Id: <20200705002215.17968-6-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200705002215.17968-1-mukadr@gmail.com>
References: <20200705002215.17968-1-mukadr@gmail.com>
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

Use %lu in the format string instead of casting the argument to an int.

Also fix driver name in the format string.

Signed-off-by: Mauro Dreissig <mukadr@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index d7b30152d409..018d8f0e34ee 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -68,8 +68,8 @@ MODULE_FIRMWARE("rtlwifi/rtl8712u.bin");
 static u32 rtl871x_open_fw(struct _adapter *adapter, const u8 **mappedfw)
 {
 	if (adapter->fw->size > 200000) {
-		dev_err(&adapter->pnetdev->dev, "r8172u: Badfw->size of %d\n",
-			(int)adapter->fw->size);
+		dev_err(&adapter->pnetdev->dev, "r8712u: Bad fw->size of %lu\n",
+			adapter->fw->size);
 		return 0;
 	}
 	*mappedfw = adapter->fw->data;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
