Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DADAF27BD28
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 08:32:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AE468705B;
	Tue, 29 Sep 2020 06:32:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y3bzirwPn8q0; Tue, 29 Sep 2020 06:32:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0F16869D8;
	Tue, 29 Sep 2020 06:32:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 474D41BF2F9
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4433F866F5
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PfJDfdXh9z+G for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 06:32:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA860866E2
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 06:32:40 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id lo4so13361703ejb.8
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 23:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PlpRTHPfsQbt8cF0PyuzOtJYzSAE/D04UwzIPu9Ecuw=;
 b=EjFVmcsz+JPujl3lApj0NOwA2aVknMDCURrU2CWXDEUUoXhdlkLv4AGDEAar9D9IqD
 wXAJqIGAzslwIeGng9hQ7bunPTyLB8xl9Vc9oeyoZJQh9ECxVHxhDqxwtj6dnXXIOZ3Y
 mFk7sh5uW15CQ3vQL0Ack+W5LV9j9JgxerjxfT2OzdKaHhb8lCAE9P5JSt3UEwHKXfvP
 6ugt8LymREhemWEcyDZ+5A0Z0tGjqfoLgORH1/cgWxV/liYRadQBSIVf14QsUYkdkVP8
 eoVc4+bQI1Yl5fynyJq2eB/dBKiDLaj8Ae8XSNhm3FNIMw5e0q9P45MNme709Q9z44+Z
 SYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PlpRTHPfsQbt8cF0PyuzOtJYzSAE/D04UwzIPu9Ecuw=;
 b=i+LwWkiCPar7m/TQ4WFTWylK/BziNj3K2pps+U4SimV5Nt3yp38bddReg008PimFGl
 7dzFCt3I7tM7ralD0XyhCnH9PAM5Hx9foGKAZXPRgOcOlDRPUZIfOendZPkTOaE9Y5Fm
 s3yqIRcgyy35uJ0KR0IDHAKzbc9l0KZUjO71UzJq6WkkPeZTet274C6Xtjvj7vkpkEz4
 T6UznEoe2VBKZmxJTJt4czWzgNBtHNV+mvpmtb+eHB7C9DPAXy16On8/1ky3GQMfhnFD
 Q2CW66r4ZO2HqXiq1nx1Z2nAL67+7hwl8gXTHhbpWxzwH39I2CtwI2H1grU6RDhHX1MC
 mOwA==
X-Gm-Message-State: AOAM532Yo0aH4UTdeUf7lLTk9/wGG0MNUjEYi8nEiYB3qC9+SO7NjBPo
 TU2svFQ/82kdPzvG8lbNgFU=
X-Google-Smtp-Source: ABdhPJzyewZMd20nxQPTtWurYG7BsEyDQMhJwffyCTSC3oG06OUKMFmcw6PHflleOiBMD2Ak2IJT1w==
X-Received: by 2002:a17:906:9941:: with SMTP id
 zm1mr2332350ejb.288.1601361159436; 
 Mon, 28 Sep 2020 23:32:39 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id r8sm4730915edy.87.2020.09.28.23.32.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 23:32:38 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 8/8] staging: rtl8188eu: clean up indent style issue
Date: Tue, 29 Sep 2020 08:28:47 +0200
Message-Id: <20200929062847.23985-8-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929062847.23985-1-straube.linux@gmail.com>
References: <20200929062847.23985-1-straube.linux@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace spaces with tab to clear checkpatch error.

ERROR: code indent should use tabs where possible

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 668a24f25fce..14be5a703615 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1730,7 +1730,7 @@ int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 	    (ndisauthmode == Ndis802_11AuthModeWPAPSK))
 		authmode = _WPA_IE_ID_;
 	else if ((ndisauthmode == Ndis802_11AuthModeWPA2) ||
-	         (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
+		 (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
 		authmode = _WPA2_IE_ID_;
 	else
 		authmode = 0x0;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
