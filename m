Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FCAC9E5F
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 14:25:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 86E9982C36;
	Thu,  3 Oct 2019 12:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pO1EuSy2Pv30; Thu,  3 Oct 2019 12:25:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 781D480660;
	Thu,  3 Oct 2019 12:25:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 519C61BF9B7
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 12:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4EBAE877BF
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 12:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EFAX+Hd3Lgf8 for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 12:25:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A90A686233
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 12:25:37 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id a11so2729096wrx.1
 for <devel@driverdev.osuosl.org>; Thu, 03 Oct 2019 05:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9mWuUCV15M116jFIIxOt3SzvdK3XTaBbtn2rQ//v5YE=;
 b=NKHrdARjZrHsbiuL+EU2WxV69YhlgSc3ZsWItUhEgP+o6mMAZA9Rflt3w03vwt1h5B
 iE02uzQcywYprKfQk7wGF9kCfpXzPst+MXM6FTsP5os823geaqlVvpyR0MOLPo2uujtI
 NgF3u9DnVtWc0euJaNVMEe3FOnbC9Xx50i7+BScBL5UrH582fheVYJysfwxSEAaAnXZP
 LGjS4v2dl+p17ZnkDZm1FRRsbK46Qlmxlm5f+NS9/4prifBlYHDx8BoVranDLfsdutpT
 XB+fGbS/J5bz4tUh/aC1XugNkcil6VT5+4FyHn80wq+VaubjJgmByrNbc+6OH0hMGM8m
 Bcqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9mWuUCV15M116jFIIxOt3SzvdK3XTaBbtn2rQ//v5YE=;
 b=gQqxOa6rMY0rMZdpzNb0XkAfqAn0gWg4QDF9qDn07BnP/ZVeXn6E67lII+5lwJrmUJ
 l69LNNrBA4+JVciPrgOcAd/2g1dIsBSc8bZ5VcC5LSgi0Q4mxWKfwkBWTyWvVrjiPESL
 bA5IJBlW9cIXD1j3DAU69vMmgi3CrwxJgr97rb7XUSNBtVEHyNUTSV7rI2ijbpvt/6XZ
 R5DIaOGk/bBp3zDfxBzvGKc1RS4kCkVFlRPNXNyD78rLkNJ17VWIW04b7LMQ5TD/5cKF
 81UwIQYSgij481JUJVR+16Qv7hTbZ0j2wPqItux6UfjDuYbdVG1SMT8oEH8myb44UdR8
 Uerg==
X-Gm-Message-State: APjAAAXNQb5pqPFGL+1MxWqmjus/t7sWzsuOUnQFu0VhVJZJCYX4ENT4
 g5cIqzgMmmKqBAPItgSTf8g=
X-Google-Smtp-Source: APXvYqwApmNbpgwx0t4k5CHbGjiqkgCAhk9uWbdou/uxPbX2S767CtLM/ECTQ7aEg5xDgYOmmatirA==
X-Received: by 2002:a5d:6ace:: with SMTP id u14mr7377105wrw.385.1570105536096; 
 Thu, 03 Oct 2019 05:25:36 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id f17sm2699322wru.29.2019.10.03.05.25.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 05:25:35 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: rtl8188eu: cleanup whitespace in
 update_hw_ht_param
Date: Thu,  3 Oct 2019 14:25:13 +0200
Message-Id: <20191003122514.1760-4-straube.linux@gmail.com>
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

Replace tabs with spaces in declarations and reomve two blank lines in
update_hw_ht_param to cleanup whitespace and improve readability.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 75c34e8f2335..97cab71cef23 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -562,8 +562,8 @@ static void update_hw_ht_param(struct adapter *padapter)
 {
 	u8 max_ampdu_len;
 	u8 min_mpdu_spacing;
-	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
+	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 	DBG_88E("%s\n", __func__);
 
@@ -573,11 +573,9 @@ static void update_hw_ht_param(struct adapter *padapter)
 		ampdu_params_info [4:2]:Min MPDU Start Spacing
 	*/
 	max_ampdu_len = pmlmeinfo->HT_caps.ampdu_params_info & 0x03;
-
 	min_mpdu_spacing = (pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) >> 2;
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, &min_mpdu_spacing);
-
 	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, &max_ampdu_len);
 
 	/*  */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
