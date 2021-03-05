Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AF932EC8C
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Mar 2021 14:53:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 197D24ED28;
	Fri,  5 Mar 2021 13:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kOY08uhX0nxx; Fri,  5 Mar 2021 13:53:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 013114ED08;
	Fri,  5 Mar 2021 13:53:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DF991BF31A
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 13:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88C1184536
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 13:52:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjhR_jttbc8n for <devel@linuxdriverproject.org>;
 Fri,  5 Mar 2021 13:52:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C164984530
 for <devel@driverdev.osuosl.org>; Fri,  5 Mar 2021 13:52:54 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id u4so2833677ljh.6
 for <devel@driverdev.osuosl.org>; Fri, 05 Mar 2021 05:52:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sNai2Yw7gKaekPw4n0fAnGfRJ1e7puAzt8Afq4+GVMI=;
 b=mexv/DdvIlxL7A2PBnalE/+gy69Bl8V75vorT72eI1s1lBAWK3YP7ijEbXrAdw6i3x
 0xFvoXkxSh2yzvCinLRq48EKJKJxp5EWcVhIk3i9H9CRHWkcGIed6xr0405k/YPqppGj
 tadgs4/C9pcCzbpImDJUNwNOw2+3Bww8481u4NOz18lVZgTn2SH2o/mpDMIYO1EXf+vi
 NwWahFWGLL3qhSQEGIPYfa1Cqlff11QL7MqWE1UP4LYsj5bLa2jNLYpSFIQW82/BOb+F
 SvEx7MdUd9OcbHt3VITqGiovxOX6v7mIGnymNGzZO28y9oDdlecB13u3U5QJKGSN+y39
 C9dQ==
X-Gm-Message-State: AOAM531cAdXxtSRlmIHmwm618K7SYHc+KUj74rovkcDULhfnxpsMN+pa
 80bACDxFmNFL0NOYqa9mjSs=
X-Google-Smtp-Source: ABdhPJxA2WqKRv/N/qROZsN2LbIesf98LuIyDjtZm6YjkmWP2ir1FxmBwdYk2FnRQx+Pz5Nzsw46Zw==
X-Received: by 2002:a2e:2f0c:: with SMTP id v12mr4951981ljv.367.1614952372673; 
 Fri, 05 Mar 2021 05:52:52 -0800 (PST)
Received: from localhost.. (broadband-188-32-236-56.ip.moscow.rt.ru.
 [188.32.236.56])
 by smtp.googlemail.com with ESMTPSA id p9sm319517ljn.16.2021.03.05.05.52.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 05:52:52 -0800 (PST)
From: Denis Efremov <efremov@linux.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8723bs: remove duplicate pstat->hwaddr check
Date: Fri,  5 Mar 2021 18:50:01 +0300
Message-Id: <20210305155001.61951-1-efremov@linux.com>
X-Mailer: git-send-email 2.26.2
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
 Denis Efremov <efremov@linux.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

IS_MCAST(pstat->hwaddr) checked twice in a row in
odm_RefreshRateAdaptiveMaskCE(). Remove the second check.

Signed-off-by: Denis Efremov <efremov@linux.com>
---
 drivers/staging/rtl8723bs/hal/odm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index f2a9e95a1563..5e432f1bc150 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -1114,8 +1114,6 @@ void odm_RefreshRateAdaptiveMaskCE(PDM_ODM_T pDM_Odm)
 		if (IS_STA_VALID(pstat)) {
 			if (IS_MCAST(pstat->hwaddr))  /* if (psta->mac_id == 1) */
 				continue;
-			if (IS_MCAST(pstat->hwaddr))
-				continue;
 
 			if (true == ODM_RAStateCheck(pDM_Odm, pstat->rssi_stat.UndecoratedSmoothedPWDB, false, &pstat->rssi_level)) {
 				ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("RSSI:%d, RSSI_LEVEL:%d\n", pstat->rssi_stat.UndecoratedSmoothedPWDB, pstat->rssi_level));
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
