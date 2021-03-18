Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9B23408DB
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:28:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 041E543291;
	Thu, 18 Mar 2021 15:28:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xUWsMzO2ZHQW; Thu, 18 Mar 2021 15:28:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E3E04328B;
	Thu, 18 Mar 2021 15:28:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 982EB1BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 94E8D6FA27
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id stS9180qtMJM for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:27:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E22FE6064D
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:27:05 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id b9so5977041wrt.8
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qk3N2Juh65NIKo1kZLZyXGVJDoTpUX4R2Uet89LoEGY=;
 b=P/1orvrTVh4qhw3u7WUXjsXrtOkrIMg/s8hjaNsj1DN8U9vTMlIlkwo3quTHX9W4Fd
 epKDt1QQLcqtQ7ckX7EYupqOCw123J2hTVPmmZSMR/Vshplhi9mt9I0p+7mYRh7vJWCi
 sho4+4cn0awLHHbGEmuaylPaltgxveeo2Ld00Om0BniRNieQTlNu+7+i+B2XHBlLZBYr
 faUZOdt/K9sPbvgJ5jkUnNnuGlRumZ4FHxLWMNGSWwrVk9LmYHC6GxVjE8/SLGptWWvy
 YwBBUs7HRFU+DhbiTyo4jMI2BkHzoCqNOIiR1U0Ve7IjCw1stL7dESd0/Ony3u2lC1eA
 Cb4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qk3N2Juh65NIKo1kZLZyXGVJDoTpUX4R2Uet89LoEGY=;
 b=p/dv2rvHY1DzwfkZ1xUnwNpQ6wkb7c5kTpCTuswd1YpkYIy7uGUojqwK9ya8wqQOV/
 M4FQrKBkvr9maXKAFxKGvhE5zfnqCjHy9ljhz1CKZQZZWmptkwpjfbKSOw8fpTPmfExn
 +xmi5BU6bck7g+uwQ+LGgx83TluA1DBakG7a+WIaPrLcP1UcGnKjlXj+6uhSGt7K0kEF
 pR61x5JaRFD08edpSlCEEg8cEf0KTsxJphHAxUB1WKVOPvsNMsPaMp+fjY1zV70lzMw1
 Vi6QFlFVQaXFbe8MoR6odwfrzWS+Jv3KbhIJIw2wiMF2b904BIt5VxrTrfBLHq6/0Vo2
 ssqA==
X-Gm-Message-State: AOAM532SGHHhnM7+WIsCy2+zjvgawrS1I0QcUjiZLeG/h51tV+Ewa6uQ
 DLMdsyJgYpn/+C2b62z6YfmsTkg7KmgJFQ==
X-Google-Smtp-Source: ABdhPJzazPLOu+fP7jzStvns4q7/k0mK4Q8ryC8DYwvTT5/+eBitwccwYgCfKES7eLSeqcHmQaEwaw==
X-Received: by 2002:adf:e34f:: with SMTP id n15mr10318025wrj.224.1616081224214; 
 Thu, 18 Mar 2021 08:27:04 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id o11sm3333451wrq.74.2021.03.18.08.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:27:03 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/15] staging: rtl8723bs: remove unnecessary logging in
 hal/odm.c
Date: Thu, 18 Mar 2021 16:26:03 +0100
Message-Id: <20210318152610.16758-9-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210318152610.16758-1-fabioaiuto83@gmail.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
 <20210318152610.16758-1-fabioaiuto83@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:

WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1109: FILE: drivers/staging/rtl8723bs/hal/odm.c:1109:
+	/* printk("==> %s\n", __func__); */

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index c7607e7d26c5..80c9a95be870 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -1106,8 +1106,6 @@ void odm_RefreshRateAdaptiveMaskCE(struct DM_ODM_T *pDM_Odm)
 		return;
 	}
 
-	/* printk("==> %s\n", __func__); */
-
 	for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
 		PSTA_INFO_T pstat = pDM_Odm->pODM_StaInfo[i];
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
