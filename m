Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4831AF8C5
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 10:33:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20DD58781C;
	Sun, 19 Apr 2020 08:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HGfnnWkc5-nQ; Sun, 19 Apr 2020 08:33:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A6758786C;
	Sun, 19 Apr 2020 08:33:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1038B1BF3F4
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 08:33:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A6052002C
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 08:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dypA+PfklWtr for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 08:33:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 9248A20027
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 08:33:47 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id g12so7668354wmh.3
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 01:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l5xZq8/RFh8QieaE2Qntf00PFu/oPAqEhcLTD3tVfD8=;
 b=WXg8wo8uOGNoH8R7/GIfPoGXba8n0GncsUp6WedkpC9zsZbyNkSJqanEhqkiHQAvXr
 FUbHoBMqBr3jrsgZWrO9k6EesFNfNMEL+6PmrXRvM7LBEHSljhhs4MdFVF0gyfU7loKP
 II8qRNnG6Nav4vtggcW9VM0V8xhVVxExBKTljetFYF1cNnSCaCpE0B6ZktqS9AR7EoTd
 j/lMYe8NHmLifDPpo91n/k0LZXsB+dDVibG4vaXlvjZbuI/RI2c5ZWvHqFbD+0Uai0mZ
 6fF+1cZwQ+Rlgh1SApCNUV8GEuRLFi7MvInXdCu0yv5swRGRiVcfFMyPLUmBoQAgDu8k
 PLjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l5xZq8/RFh8QieaE2Qntf00PFu/oPAqEhcLTD3tVfD8=;
 b=fO4HPwcN2GY64wpmm187EuhADMGh13nD6Vs4rILR/MtEgnFe27a4jzDfnAL0pIxhgH
 iBb6WMrAict2cxZkKmOKp9kdIO4s4SBVCLhQ6bYiFX45nKo1NEromp90bLyUF6zG7R4X
 QyppPTc1FZC546v19qr0oWx7RdhAKrZNdc+B+YfkY2Qm//WA+M58pamNroo3lSOOYvVx
 6E6WJczbvIWF6v2HHCOaB0RWhPvYi7GoufqPG2E9tQr3CyMXCcG12NenK/OiDZw9sKep
 ikwrVMwimTil6hRHiwC5CXnC4Z19CwQ7Yw8cdUp8YTvIL5S6eNs9mLiLy9ebi6ptFOxS
 lXBw==
X-Gm-Message-State: AGi0PuZ69dUMAzbtwWaf0DhXFdXYxmtXsmWXGnOysQuSei9Kr5Bfeu2I
 piEXgNTMQlZUPkaTkOh/6CY=
X-Google-Smtp-Source: APiQypJwdHARkfMgENwunxoEH02iH/HuoCGikA2SbygjzSSWq0HZMI8DYS5pV5V2qWiiHvjL4ttexQ==
X-Received: by 2002:a7b:c858:: with SMTP id c24mr2090992wml.51.1587285225842; 
 Sun, 19 Apr 2020 01:33:45 -0700 (PDT)
Received: from localhost.localdomain ([31.4.236.238])
 by smtp.gmail.com with ESMTPSA id f8sm16606389wrm.14.2020.04.19.01.33.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 01:33:45 -0700 (PDT)
From: carlosteniswarrior@gmail.com
To: Larry.Finger@lwfinger.net
Subject: [PATCH 2/2] Staging: rtl8188eu: core: rtw_pwrctrl: fixed a coding
 style issue
Date: Sun, 19 Apr 2020 10:21:22 +0200
Message-Id: <20200419082122.17202-1-carlosteniswarrior@gmail.com>
X-Mailer: git-send-email 2.26.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 porfavorde <carlosteniswarrior@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: porfavorde <carlosteniswarrior@gmail.com>

Fixed a checkpatch.pl warning: the constant should be in
the right side of the comparison.

Signed-off-by: porfavorde <carlosteniswarrior@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index c4f58507dbfd..c000382c96d9 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -173,7 +173,7 @@ int ips_leave(struct adapter *padapter)
 
 		DBG_88E_LEVEL(_drv_info_, "nolinked power save leave\n");
 
-		if ((_WEP40_ == psecuritypriv->dot11PrivacyAlgrthm) || (_WEP104_ == psecuritypriv->dot11PrivacyAlgrthm)) {
+		if ((psecuritypriv->dot11PrivacyAlgrthm == _WEP40_) || (psecuritypriv->dot11PrivacyAlgrthm == _WEP104_)) {
 			DBG_88E("==>%s, channel(%d), processing(%x)\n", __func__, padapter->mlmeextpriv.cur_channel, pwrpriv->bips_processing);
 			set_channel_bwmode(padapter, padapter->mlmeextpriv.cur_channel, HAL_PRIME_CHNL_OFFSET_DONT_CARE, HT_CHANNEL_WIDTH_20);
 			for (keyid = 0; keyid < 4; keyid++) {
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
