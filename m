Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A9E1CE01
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 19:31:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B3A953019D;
	Tue, 14 May 2019 17:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ego85vbylKM0; Tue, 14 May 2019 17:31:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A739030048;
	Tue, 14 May 2019 17:31:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72C511BF5F5
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 688FE2EE62
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HpJqB0X8114N for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 17:31:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C35B42EC4F
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 17:31:09 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id g5so8596131plt.2
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 10:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/5y6sSogy89n2TBc8PxnUJ1krFpywnhYAo9asH/f+nc=;
 b=HXBd95+JyaamEGJ6V0Ckh00iidADBtnI/sJZnm+24Btp6zvDTceL6lerinrRc3gPgU
 QhuOq6INvBlXsRERqVL5s9nigF7irRuLHypNYb/6JAC252R24KXaydWxggzS7zuN/Fq1
 Atzuwj9CR8erbFu+MQCmAouuR2hj9+MmBjIFIgymBur77QJN6kfAgCxrvckbBqE0aTOR
 qY7493LltjZC96Sed5IFsxfaSERtpW94XKQ457ilUonR295fc9tncTDxXRH7ZWEtnptj
 Bdp9w06GNsE9vDuhuIK9PQ1J+D+1MhMmSzldkYTqZPaFPHRycpF7NVCgI+Nbr1EXWFPt
 6CZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/5y6sSogy89n2TBc8PxnUJ1krFpywnhYAo9asH/f+nc=;
 b=Aztz0VcFG+vzuvHYS/6DEBz6F8H9PvYR7YyGAi/nxEjs8WLWAM8RzhCsvxf/nPQugZ
 UUR5DDanVKsvPRGCya4Gwonv6xia0ogTCL4VTqEgt4qCVmuUQIAJGqTFKP/1D8a5F7RT
 fbZPN1MNeDpgw1OJX6zsUVJbMfkskA4ZqRwu69STtl+FA3jtTr8NKwXb9nkiUlww3m7M
 QCPKedVCvY+26/bkQa7QN76jnjaiQUB43viZ2hLito3daCKZgqbs/J1Tp8fsTRoJHtwF
 uUhYZV5iJuIfdaIQ+nFXvYSbw+50sVApkZBEAIcQy1/oHcu41ZT1KjNv9N3FTl7Y0n1E
 RqXw==
X-Gm-Message-State: APjAAAUzyIj5AcO0gG4Cnb2v0Yqvj42M5L6moJ549NrPL/MeIOoQt+Ye
 d9SOU4THJ1HEYE/siXhXGh4Ecdq7XQQ=
X-Google-Smtp-Source: APXvYqzKZyehBkY36O7yCUAQLEGLKLbCw2mdYmjwYhogDMBygw12iDERIqAt4u1pT+Kj1aHNF/1bPw==
X-Received: by 2002:a17:902:b58a:: with SMTP id
 a10mr9264410pls.83.1557855069419; 
 Tue, 14 May 2019 10:31:09 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7145:24c8:f23d:8e91:fd10:9c55])
 by smtp.googlemail.com with ESMTPSA id n9sm2222485pfq.53.2019.05.14.10.31.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 10:31:09 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: puranjaymohan@gmail.com,
	greg@kroah.com
Subject: [PATCH v2 1/5] Staging: rtl8192u: ieee80211: Fix coding style warning
Date: Tue, 14 May 2019 23:00:19 +0530
Message-Id: <20190514173023.31146-2-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190514173023.31146-1-puranjay12@gmail.com>
References: <20190514173023.31146-1-puranjay12@gmail.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove braces around a single if statement to fix following
checkpatch.pl warning.
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0e762e559675..1ab10d8919a6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -2577,9 +2577,8 @@ static inline void ieee80211_process_probe_response(
 	spin_unlock_irqrestore(&ieee->lock, flags);
 	if (is_beacon(beacon->header.frame_ctl)&&is_same_network(&ieee->current_network, network, ieee)&&\
 		(ieee->state == IEEE80211_LINKED)) {
-		if (ieee->handle_beacon != NULL) {
+		if (ieee->handle_beacon != NULL)
 			ieee->handle_beacon(ieee->dev,beacon,&ieee->current_network);
-		}
 	}
 
 out:
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
