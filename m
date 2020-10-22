Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE7B296659
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 23:01:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DAFE887809;
	Thu, 22 Oct 2020 21:01:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BRNntjidRgBh; Thu, 22 Oct 2020 21:01:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F9EE8770B;
	Thu, 22 Oct 2020 21:01:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B76E31BF3C0
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 21:01:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B40D18770B
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 21:01:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fHsdxnIEj4vS for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 21:01:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B221B876D0
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 21:01:36 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id m20so3462003ljj.5
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 14:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ueUcicZX0W9BPo8IflVS8PDGH3YYY6yZw3nBt9xZHSI=;
 b=CgCkqIUOD2ZpGLs+LDZ0iL8N8mPE0hVO3NMMO8xIFA/+Felno+5PBJvmEgCKaEiRVi
 KYBn7yymRq7QC3pyIq25Oi6xwiaGcjlStKTtB/F34esHxbMxqn7SjaeNyYy/ZwgGMMSC
 5GL6p/jzdIxmqcvsUH37dPm5V+8pzEWy2HWiW/U8uxT5PpjJbSqSU9zd1SyFAwoFVIoI
 BJeElK0LoVWyZq8ohsJHcY+jVWijcCdMlufpFriFXs63suVna7R7UCtnV67fDSOyY63z
 0tv0xLDvaP9CTkLaFG+PnCwu2zC8uUVe9bBRBTi3zBcgehbFKp8j3zfZesVmp5Ehn1q0
 a8Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ueUcicZX0W9BPo8IflVS8PDGH3YYY6yZw3nBt9xZHSI=;
 b=I5fO89uL+iWz8BiLajZVkqSiGml5jovBTDs5xU74B13jZ7c/ujKXG/IfVQMsXDMlVI
 LwM0XmAlCb9B5xFKZHtZs8NMEHujuI7KNwlQUsOhwF1ipMDRV+tvLBXofwYvH4ruUnYL
 uAcIGmWbGkoc1AwetltK3GufEFF+yZyq6X4rGApwh3OxDsaNdNk+H37kQPxpEqSAb32T
 8+dR9j2tUPW3FFXb8mAQEElryq6OgamvKgMBHpJG6d+0VUIls+hnQdjhrRboJ0ge4gtH
 RJSbPmTx2T63OrEtIka1y2n30tOmaP8zBEJhynvU0cmexAFgfHfa5fJpj4TwpOwLghsC
 /M2Q==
X-Gm-Message-State: AOAM53277dhlkfb1DZcYfXO3XPERDZl2cw6l0BtXXcJt2I6It2AgVSfR
 zT03srgzMYS/J0TWf9sLg8c=
X-Google-Smtp-Source: ABdhPJxgF9PCPHA4efU9SpCiJsSpVuHRO5pKtPiMXOxnPLd36Mbu6TMnYRON7sT9TlTx7NlHXtjRRw==
X-Received: by 2002:a2e:9f4d:: with SMTP id v13mr1787115ljk.379.1603400494611; 
 Thu, 22 Oct 2020 14:01:34 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id r14sm374869lfn.298.2020.10.22.14.01.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Oct 2020 14:01:34 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/rtl8723bs: replace "foo * bar" with "foo *bar"
Date: Thu, 22 Oct 2020 13:58:57 -0700
Message-Id: <20201022205857.6144-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Elena Afanasova <eafanasova@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Correct the coding style error reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_mlme.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index cd98efccb321..07efb74831eb 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -213,7 +213,7 @@ struct cfg80211_wifidirect_info {
 };
 
 struct wifidirect_info {
-	struct adapter *			padapter;
+	struct adapter				*padapter;
 	_timer					find_phase_timer;
 	_timer					restore_p2p_state_timer;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
