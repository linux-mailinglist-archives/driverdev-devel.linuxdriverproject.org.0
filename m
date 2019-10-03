Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FCDC9E5B
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 14:25:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0AA39880C1;
	Thu,  3 Oct 2019 12:25:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KoDWPlHpkRZs; Thu,  3 Oct 2019 12:25:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74767877E4;
	Thu,  3 Oct 2019 12:25:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB6091BF5AC
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 12:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 987B72076F
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 12:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Ykg1nakwmOY for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 12:25:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id CBCEE227AD
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 12:25:35 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id o18so2650407wrv.13
 for <devel@driverdev.osuosl.org>; Thu, 03 Oct 2019 05:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1MIz5EDU8fb+WO6SYE1MsjHkZdySFg/UAMzsWR0fZmU=;
 b=R0Dd0VrXbaQ8iMbdDkbin/M3ehCJ+TFt+vgZMuaGkSxhpn8dt7rCzaqOvvfdGzxUp8
 H2CKT1PFR0uK7pkJT8ldk5Xx7mwteS98LHMq2L8JAUVi2tKYuZeQu9UlBvMMoS8p8uqM
 NY95bj/Dsumn59tDEdXvdodA2sfCdNRIE1XcOKnROR3T6ygVjgwBm/82cBM+l244YPiq
 dMF/Naw7fF21CK8auertOOcIy5mhoiOZHV910EeDa+J9fCg7hUJcbiv/pBg5anrzcedw
 rfC/HyS63wQH5UTbTCtVzKm2w+vZwE2MTj8g5rxW3VMr4hhX5APzALrTw+QvD9X6eOWt
 cOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1MIz5EDU8fb+WO6SYE1MsjHkZdySFg/UAMzsWR0fZmU=;
 b=ACrTR+r+L9Di4FZfl8Q8ybNhbXLirTadt7PbUT6lQDUkiH6TlGdNELFldmNIK3gJHG
 Nbh5e1Qr554Mf0Ng8kEa3QCbiTHVx/LskY+Abc6Hyau2YwmJ4yTYupbn0Sh8EtC+a4yg
 mmNH7efYu9tNjvAygfwNdj6AC5iZ4k49QF4kLEszfQTqznuN9lceXXCP+PtV3k9sqXO5
 POtFT44mqRgcBAezJX5Z1sEd4z5EOPeOPPHYONxmk2GFZ8eUnK4LBIGaBfCThqJHi2RR
 igsU7sQRfiWYAOLc5f2oNV5tcb5ddJYbrQ/QV+onhvm+b2TkQTc1FWuqquDHLZf2jVUF
 Mp6A==
X-Gm-Message-State: APjAAAXJy5jvCS/sCCRnb0WryACtlr18cfdyMgBmAW4wTLikQRdApk56
 imc8p4ckjL0fBM08fUvqaBA=
X-Google-Smtp-Source: APXvYqwsRQ1osNJCwcSzxWiN/fkXIuxBBG88iy+2ZSAE9wi5t7JivoY2kXLeN0s6gOUHMFbJXg9swA==
X-Received: by 2002:adf:f34b:: with SMTP id e11mr344902wrp.369.1570105534428; 
 Thu, 03 Oct 2019 05:25:34 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id f17sm2699322wru.29.2019.10.03.05.25.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 05:25:33 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: rtl8188eu: convert variables from unsigned char
 to u8
Date: Thu,  3 Oct 2019 14:25:11 +0200
Message-Id: <20191003122514.1760-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003122514.1760-1-straube.linux@gmail.com>
References: <20191003122514.1760-1-straube.linux@gmail.com>
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

Convert the local variables max_AMPDU_len and min_MPDU_spacing from
unsigned char to u8 and remove unnecessary castings to u8 pointer.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 51a5b71f8c25..1e4461a74474 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -560,8 +560,8 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 
 static void update_hw_ht_param(struct adapter *padapter)
 {
-	unsigned char		max_AMPDU_len;
-	unsigned char		min_MPDU_spacing;
+	u8 max_AMPDU_len;
+	u8 min_MPDU_spacing;
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
 
@@ -576,9 +576,9 @@ static void update_hw_ht_param(struct adapter *padapter)
 
 	min_MPDU_spacing = (pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) >> 2;
 
-	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, (u8 *)(&min_MPDU_spacing));
+	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, &min_MPDU_spacing);
 
-	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, (u8 *)(&max_AMPDU_len));
+	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, &max_AMPDU_len);
 
 	/*  */
 	/*  Config SM Power Save setting */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
