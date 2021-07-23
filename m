Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC4A3D38F9
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Jul 2021 12:58:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F30138376B;
	Fri, 23 Jul 2021 10:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fVkVEnmD_kQv; Fri, 23 Jul 2021 10:58:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AFC9830AB;
	Fri, 23 Jul 2021 10:58:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 216ED1BF34A
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10C8F60664
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z2YAdqGvz11i for <devel@linuxdriverproject.org>;
 Fri, 23 Jul 2021 10:58:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 883226062F
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:09 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 gv20-20020a17090b11d4b0290173b9578f1cso5994406pjb.0
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 03:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5/yvTojb3uRwzUItwLbp5UF1vGBVCzmyw1s/P7q8o2Y=;
 b=QwpP31xSmllFziKucecrv/Hk1F7uIHxxj/OJ+W3HvgkvA4itMgKXftFXy5B2X6EBsG
 oQru0Ms5okhQSAkEBvdPWgInssdBIh8joo15oik5rqo1iJAqEtEDii/HoTBdC0/g5WA2
 AOOJwJnnLW61KbyJ9SEkFRDG30bPlPMbk1aOQXM02yI93cs4YTNnpItyjigT+h0YQNZ0
 KNPsuxy9j1GfGcgil3/f9y3Y9v/fj5sjOpMwOvp9vokzFhnvYev5i/ZSJVTTA5gmURTn
 vIie13IQh67Kolyf3JB8egO/5gvmTjtUcSX7XARyPg/cnVTNr/DiBmGxWnGI6KNvqAZu
 TZ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5/yvTojb3uRwzUItwLbp5UF1vGBVCzmyw1s/P7q8o2Y=;
 b=mVFv2kekhr/hULqe0y1caZRoyj8WOA715SmUiuHixoloJ4tfGotrir6/r5i4qPEt6w
 N2jiJIeSagho8k1HxFXtQr/oNkFo9esu2xNPALnKnBoho/dYVjoKMfXfS84EQjIQ/pxI
 SPAfS4zhZp/SgnmduZqbwdgs+tasqo7+/FDhFkat8m+h973GHsAKh//sVoPTef3hSwj9
 MLJk+8BOQtKi81BXCdaIeYuyWiX+g4sXsvy9vP2s0HhW72J/KJs0Wf/xjAKpsVkvasFJ
 6/vKVrP+Huqhd6V4rw23g4Zxb61CvhbTCs8654GSCKnDIEZaULovKaZBMgKmXrrtx63w
 Npkg==
X-Gm-Message-State: AOAM530xWf1XiQlxxxEPW8tnqSzl5qMqGNfddh1lP/fnhBwmqo+M+rZm
 i4JE1Z7KGY7nOQikZVa5J+U=
X-Google-Smtp-Source: ABdhPJzej78ZssnkRZc7YUrZXq7xkaKJR58jZoxSwmgQ1tQMWlLpk2OLv0G7ujg2879ZOGElIH7n+g==
X-Received: by 2002:a17:903:89:b029:12a:ee95:42df with SMTP id
 o9-20020a1709030089b029012aee9542dfmr3315644pld.77.1627037889058; 
 Fri, 23 Jul 2021 03:58:09 -0700 (PDT)
Received: from localhost.localdomain ([2402:e280:2130:198:9b25:1cfb:9ff3:2a8f])
 by smtp.gmail.com with ESMTPSA id u21sm33115559pfh.163.2021.07.23.03.58.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 03:58:08 -0700 (PDT)
From: Benjamin Philip <benjamin.philip495@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v2 2/3] staging: rtl8188eu: Remove blank line at
 core/rtw_ap.c:457
Date: Fri, 23 Jul 2021 16:27:52 +0530
Message-Id: <f534180f71deda4f75c5c2c7de139dc291a77318.1627029208.git.benjamin.philip495@gmail.com>
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
457: FILE: drivers/staging/rtl8188eu/core/rtw_ap.c:457:
+
+	}

Signed-off-by: Benjamin Philip <benjamin.philip495@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 215a0285005f..ba3a6347976d 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -452,7 +452,6 @@ static void update_bmc_sta(struct adapter *padapter)
 		spin_lock_bh(&psta->lock);
 		psta->state = _FW_LINKED;
 		spin_unlock_bh(&psta->lock);
-
 	}
 }
 
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
