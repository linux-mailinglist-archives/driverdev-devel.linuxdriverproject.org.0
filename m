Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7D7181A96
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 14:59:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 421C586B7E;
	Wed, 11 Mar 2020 13:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1j7YaFJE-5TE; Wed, 11 Mar 2020 13:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A500F860F2;
	Wed, 11 Mar 2020 13:59:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 54B3B1BF20D
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 13:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 50E3687ED2
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 13:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d39jCqYXxL7e for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 13:59:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4F94B87F8E
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 13:59:11 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id z65so1386127pfz.8
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 06:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=Rsh1wp6Fd0Yl2sa4e9abEs0k+S0Of//VtbBDH+QzLew=;
 b=ZMg/4OseM+M79oricWCYBpDoxsS2CVvN4cPMGCEe8P3CGHaPQ0w7BTSAkx274h4QJy
 +8yaIiFu0l5ahpzCUGJsrPJIIbm4POb1T75sMToETl85JplEDp0glnC61nH58DoykVZy
 +Tn5OCaCkGz4aqcAGCmadxrFeFBIf/k98brvePZLxpqZZyKO1e9bHE0CEsvcHcK8lnDX
 nUoKoHQGFQmF4aYwItlXO2UWvcaqVTwAJR2Bg1nq7npwmiEl3RA0SnjMwavfQjK1Mpxj
 D6khngidz4Q8aTQnmZm1XshHCvhTzf+44UJsjQx2MwnHDxHqcDZs/44mxarwMROEjBle
 vcBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=Rsh1wp6Fd0Yl2sa4e9abEs0k+S0Of//VtbBDH+QzLew=;
 b=iQu0LtR2NqgrTzgZDU2FlwCYnKOxozfDpR1SnESayoQtKs+hp+Lp4XZJ+PlI4FFTWz
 nZLygQ9Ko0fxEfft/iPCb36XonqxWPPTqg96QJk/swP1u3qX2BTZ76LKx2oy5FPRf8Y4
 /cVr6vNevDA7wHFNy5ebAMRwNiG3v9G2brDBu+eBrP5rdoTmYmvZ+d5aRvgV1CXjGwvA
 VuD3BiXxIf440TpkwgHJb50p9gSGP72of94wJRBeC4Qy4YFKJ62stWBrH49X90z0A11F
 +c805r2SO2NkzTPFMtaRJTQjF8qDnJ1c+H6A3+fnQ3ENoAyoDyuqXibBHSZaXNWsNMQW
 8ddA==
X-Gm-Message-State: ANhLgQ3Qx9JiCLHW8gTWZ8XcWjub/CxzIlA8q1fVv8zeiThK1azhNI49
 zMNw7mMugNHazSM6tr9fT7o=
X-Google-Smtp-Source: ADFU+vv4XED4TC3aAvIDyuy+AczhSmqal1KUnGai7LncdXtqfH/DQowMoDp9kOdzEAJjzpb38KMCBA==
X-Received: by 2002:aa7:914b:: with SMTP id 11mr3101406pfi.69.1583935150671;
 Wed, 11 Mar 2020 06:59:10 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:287:fb4d:18bc:a849:c699:3914])
 by smtp.gmail.com with ESMTPSA id
 b11sm5799287pjc.27.2020.03.11.06.59.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 06:59:10 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com, nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, shreeya.patel23498@gmail.com, Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
Date: Wed, 11 Mar 2020 19:28:59 +0530
Message-Id: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary if and else conditions since both are leading to the
initialization of "phtpriv->ampdu_enable" with the same value.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 71fcb466019a..48e9faf27321 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2772,13 +2772,9 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 
 	/* maybe needs check if ap supports rx ampdu. */
 	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
-		if (pregistrypriv->wifi_spec == 1) {
-			/* remove this part because testbed AP should disable RX AMPDU */
-			/* phtpriv->ampdu_enable = false; */
-			phtpriv->ampdu_enable = true;
-		} else {
-			phtpriv->ampdu_enable = true;
-		}
+		/* remove this part because testbed AP should disable RX AMPDU */
+		/* phtpriv->ampdu_enable = false; */
+		phtpriv->ampdu_enable = true;
 	} else if (pregistrypriv->ampdu_enable == 2) {
 		/* remove this part because testbed AP should disable RX AMPDU */
 		/* phtpriv->ampdu_enable = true; */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
