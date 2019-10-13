Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 284E6D565A
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 15:13:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD30987C41;
	Sun, 13 Oct 2019 13:13:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bG2GgAfTpf7A; Sun, 13 Oct 2019 13:13:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7423181EDD;
	Sun, 13 Oct 2019 13:13:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EF351BF23F
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 13:13:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2BCB585D3A
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 13:13:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CIaV06HXNYHr for <devel@linuxdriverproject.org>;
 Sun, 13 Oct 2019 13:13:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 27E6D85F34
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 13:13:09 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id r4so12497985edy.4
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 06:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q3DHhCXZ5LZWC7YrZHGmthdMiagzy1Un1WDuV8hFC1o=;
 b=SZDBbs0+U5Vq0bQdeUqWpklPXjXrmcOZ0Op8PTA4Ps2UjueO1XaRO9v7MUj4Fxl1Up
 iiLrGN/LWxETJmhP1+d6kwPWVTaiu/Z1VQsznD8Kf7S8ILGUXDGsjxReoOQfo+Rh/8tH
 N7nY6e003EElly9SsweqOGkoAbkfoUr/jAGkHL1w4BMwgnL7C1dCgYv/ZvrsVVTz2O9V
 cz1qcHDQBu7G1p35P2wjDxyv13BBHBbJdqWNgdXjbhaX1WHZmg37wK08CGC8YMffHukP
 8TtCn7aQSFnxpgxCvKxZnhHP0fbKsLHKfxLGWUuyum5kEdWp8onxFAhj331jjLKPljv2
 z4Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q3DHhCXZ5LZWC7YrZHGmthdMiagzy1Un1WDuV8hFC1o=;
 b=A9IumhswoiVFQ1l71lnOFhpgelSeX1IO5e0yyxvW/7ICoWFS08CCMZ1H6Bw7Ng1UIc
 qPA/tX8sIzwCZDYyp2XQ2iZABQDRqM7N0+BxWyDpHn2HF7SRLeIedIYUuwrcZrWQqAGO
 Bn+VXt+2izmpivHug1KYnjdGa5+qy/fL9GXbF7R+Glrol5hUjTVkcAJNzJKMUJX28i09
 BPjNhSXzzU36E2M9k3YkWFZ6DSOdRFX2cidbiFKjxqwRjEHp8p+gIESN+E6610/MfBHT
 7v6P8zyoWoVwKCReM/aw9O1KK7+F6wgOv6b28JvjkfaNG6RzwphtQzQItyNW65Oo7PqS
 HxyQ==
X-Gm-Message-State: APjAAAVSw7+3XuMsj/3ccSyRflZzub0I3w0eALPos7vdUcpyu9dpiCi4
 rAh1AGZvmwg7CmpeymTJpfs=
X-Google-Smtp-Source: APXvYqzCZuJOnesmkEcff2g1L/U5WN8n3Ouu9PQgbyeDUhpMBss2bhbwd5ALOKxdhbDVXI1woErWOw==
X-Received: by 2002:a17:906:3415:: with SMTP id
 c21mr24738862ejb.190.1570972387311; 
 Sun, 13 Oct 2019 06:13:07 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id u30sm2580520edd.18.2019.10.13.06.13.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 06:13:06 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: remove unnecessary conversion to bool
Date: Sun, 13 Oct 2019 15:12:49 +0200
Message-Id: <20191013131249.34422-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191013131249.34422-1-straube.linux@gmail.com>
References: <20191013131249.34422-1-straube.linux@gmail.com>
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

Comparsions evaluate to bool, explicit conversion with ternary
operator is overly verbose and unnecessary, so remove it.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index 7b16632048b7..03dc7e5fcc38 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -514,7 +514,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 		pwrctrlpriv->power_mgnt = PS_MODE_ACTIVE;
 	else
 		pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;/*  PS_MODE_MIN; */
-	pwrctrlpriv->bLeisurePs = (pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE) ? true : false;
+	pwrctrlpriv->bLeisurePs = (pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE);
 
 	pwrctrlpriv->bFwCurrentInPSMode = false;
 
@@ -621,7 +621,7 @@ int rtw_pm_set_lps(struct adapter *padapter, u8 mode)
 			else
 				pwrctrlpriv->LpsIdleCount = 2;
 			pwrctrlpriv->power_mgnt = mode;
-			pwrctrlpriv->bLeisurePs = (pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE) ? true : false;
+			pwrctrlpriv->bLeisurePs = (pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE);
 		}
 	} else {
 		ret = -EINVAL;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
