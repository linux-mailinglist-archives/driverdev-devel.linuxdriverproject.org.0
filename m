Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B154D3D38F8
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Jul 2021 12:58:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F40883211;
	Fri, 23 Jul 2021 10:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yNnllZMkXXOT; Fri, 23 Jul 2021 10:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F0E783143;
	Fri, 23 Jul 2021 10:58:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D48B31BF34A
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C381383143
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CFlT4LEEVA6Z for <devel@linuxdriverproject.org>;
 Fri, 23 Jul 2021 10:58:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 55A51830AB
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:07 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id t21so2599517plr.13
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 03:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j/RMAm0ivVDJ1TdPGQI6kIVCATXT2BmfDFjyEYMhwF8=;
 b=LL+BFa3f9YZ4G8mYqCxR11HkHhShqmEkvywkhNtzgVJI1esd0TdkcJgsPcNG+PxyFP
 sMVlUCo24nLeIhE8yrb34967OJ7WLx9Ixv6Q/RykBHN4BCd66JNYVOJ0zSJ7f+VJBK+R
 ZqGZJQUcmYJxOHU06QnCro17qSVrQOfugdJqUKlxXNoYk4+TFJh60a39DUEZBWCWF9vo
 +RCUcmKvCgJO/qcmlRlHPhEnXiYAIsn2sK3vbPQarwrL/L10RIfyW9N3eX0XmAWCZ/hR
 0Cbil9/op7PbAyJsoX5PSKPJHPguEiql016jMxFt+hbCspCvwFQOxp9fI7dM9a5KRZ5r
 cNAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j/RMAm0ivVDJ1TdPGQI6kIVCATXT2BmfDFjyEYMhwF8=;
 b=pfxrfNDpSLdc/l9PwLdGlIBCM8eDZD+k4PpHIf74tHCl0kj0H03BCG7a5pyHF0dBvR
 Z88UMuFMmFvy202evFOAeqQI1x+A3rgWr9fs4k5+LZT8VU+tZEiXqfOaqGVWCy51CLOX
 70btXd5sQ14r1fPRhoB922ogz0yAVHaByPRqokWZONvVDjMsht2JDNkRPAr8C+g24Be9
 41Ja2oR52syP83gzjUi/smZMkDwwJnCOQb0wxXYIATi/0DunxL/MVwDzopBV44jJpJUc
 iIjgwRYXyo3kD5uWE8gc8poEwBwkxOLcuECpPH23c3crvSPH71YiLNogkpIAz8BxBdEd
 MQ4A==
X-Gm-Message-State: AOAM533Jky+wKPOGACKde8l7JC4HBgrywXBk2QZSmhUAndV1v+BjDGqN
 C22c3fKl+O4fmIpJVMhNQBo=
X-Google-Smtp-Source: ABdhPJwioEDeBs/WYoptvQrRufDvxFM4a5hgvplIFV67ncQ5+MwHg2I3VOFVvH5ustIuawgpUGBxXw==
X-Received: by 2002:a63:ce50:: with SMTP id r16mr4341845pgi.425.1627037886860; 
 Fri, 23 Jul 2021 03:58:06 -0700 (PDT)
Received: from localhost.localdomain ([2402:e280:2130:198:9b25:1cfb:9ff3:2a8f])
 by smtp.gmail.com with ESMTPSA id u21sm33115559pfh.163.2021.07.23.03.58.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 03:58:06 -0700 (PDT)
From: Benjamin Philip <benjamin.philip495@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v2 1/3] staging: rtl8188eu: Remove blank line at
 core/rtw_ap.c:385
Date: Fri, 23 Jul 2021 16:27:51 +0530
Message-Id: <362ba8456848867cc2023e40716de5da7c603abf.1627029208.git.benjamin.philip495@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1627029208.git.benjamin.philip495@gmail.com>
References: <cover.1627029208.git.benjamin.philip495@gmail.com>
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
Cc: devel mailing list <devel@linuxdriverproject.org>,
 Benjamin Philip <benjamin.philip495@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl CHECK:

CHECK: Blank lines aren't necessary before a close brace '}'
385: FILE: drivers/staging/rtl8188eu/core/rtw_ap.c:385:
+
+	}

Signed-off-by: Benjamin Philip <benjamin.philip495@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index b817aa8b9de4..215a0285005f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -381,7 +381,6 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 		/* set ra_id, init_rate */
 		psta->raid = raid;
 		psta->init_rate = init_rate;
-
 	}
 }
 
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
