Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C260233FB26
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:28:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5567B4645A;
	Wed, 17 Mar 2021 22:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uVeVQi4dFAfY; Wed, 17 Mar 2021 22:28:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4817E455DD;
	Wed, 17 Mar 2021 22:28:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 630E21BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F4C34EDD7
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rl3L9ynG66yh for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5701E4EDCC
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:51 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id jy13so819296ejc.2
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=lLUUX2KZvVe7FhuEIqMvX1QSJ2iHZsPPWrMLsS+c00g=;
 b=QvcWGJEJ7UZpaeGQZ72j1JjhZNoj/DLltTDc1IJyXQPapVo6og06jvtJxfivbWGGMy
 yiv32Hvd90ftzlmswNS7iQvStaSCmRKsjrdrbrzoo4eqUaLYucq0dK6KWQ7YmUe66muQ
 LxVhEde92qEbaRwsvBmEBNvAqCKtmgsjqUMQwTAD/n0CKg0VZ1vKdmtM4CWbz+QAKNSE
 SRaoCTk35nvqRCgzk5mh2uyUzKDRQHC8rAxMaArw3BdezIeR+cCXRVEljnaBwY9O4jjq
 mBRGGaZOP+bo305MotJC9utvogEg9hRuGPi7vmHyP75nfU2R7PmSQf1LL+fl6j37OU1N
 vqhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lLUUX2KZvVe7FhuEIqMvX1QSJ2iHZsPPWrMLsS+c00g=;
 b=QsKKH55gY+ubumjW7gYtMzp5GtMMfhiXjuz8rMDYnfsDDZEDfe2Oswjt8S/AW9fTCh
 WXkqzlnRsXU0rQq9BTMv/F1a9k/pV4CaWFFCfrB0VyJhagDlBCV6W7yJoHJJYsoSDowq
 Qrcri7F3XARBOyNqkWZ/kxAfD+vmaguvrrhCeDomr+sBS+GoBCuPKudQ+f/U3z6h+FiI
 fOUTpJOkgbQRAQeVO1zr93I9x09EoVMJ5mECJYlEahZu7o6IyYLirWqTKKjbQ5O0yMiD
 RhExmE5yr9W2DVvG1ErExSYC+OZlz6kYoUTmQh5GDG2U0Br5xEBQyAp5CmnBGlL4r9+M
 vAMg==
X-Gm-Message-State: AOAM531FSY7AfivkZaY6NlrQKwGEP8ldx+4ou9YfbEUyyWYFBkbQXIsi
 TdYndlJgAw1heQbqj5fElg8=
X-Google-Smtp-Source: ABdhPJxdyuy3qbO8LPULfT175f0LBai4wcGF/IlNYvXVW6wxh9LsP375Qz3z/5nOkiFPtvMRP2tYug==
X-Received: by 2002:a17:906:2692:: with SMTP id
 t18mr37087848ejc.16.1616019709700; 
 Wed, 17 Mar 2021 15:21:49 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:49 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 42/43] Staging: rtl8723bs: fix names in odm_NoiseMonitor.h
Date: Wed, 17 Mar 2021 23:21:29 +0100
Message-Id: <20210317222130.29528-43-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in hal/odm_NoiseMonitor.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h              | 2 +-
 drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index ec6e32ec20de..3c8d76e42c99 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1076,7 +1076,7 @@ struct dm_odm_t { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	u8 Adaptivity_IGI_upper;
 	u8 NHM_cnt_0;
 
-	struct ODM_NOISE_MONITOR noise_level;/* ODM_MAX_CHANNEL_NUM]; */
+	struct odm_noise_monitor noise_level;/* ODM_MAX_CHANNEL_NUM]; */
 	/*  */
 	/* 2 Define STA info. */
 	/*  _ODM_STA_INFO */
diff --git a/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.h b/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.h
index 0eb55d785c7f..ab114543f39c 100644
--- a/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.h
+++ b/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.h
@@ -24,7 +24,7 @@ struct noise_level {
 };
 
 
-struct ODM_NOISE_MONITOR {
+struct odm_noise_monitor {
 	s8 noise[MAX_RF_PATH];
 	s16 noise_all;
 };
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
