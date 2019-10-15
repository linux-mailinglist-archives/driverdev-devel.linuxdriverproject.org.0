Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF6DD7A4D
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 17:46:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3E34864DA;
	Tue, 15 Oct 2019 15:45:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kx_ex8U2XeRd; Tue, 15 Oct 2019 15:45:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 593D28672E;
	Tue, 15 Oct 2019 15:45:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F9DB1BF296
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 15:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 49A1A864AB
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 15:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bjtgZYKQTdAE for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 15:45:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C214860DE
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 15:45:51 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id f20so18476789edv.8
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 08:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BUcJdIWqrr+IZvPOnEuHNqfscKpmA1S5L5Mn3MxIjpA=;
 b=Rjs4uSR6HFoaUox/Lyrg5MAheF9DPnt2lhYu5CkHrJ6jknC33tce11zjNl/X2LT1H/
 4KBE7KXgFPBIp6pznnl1o2vLj8wiZMJ8wZ/ahjdrwcqTM/PaWBUbxcpom2z4mG6iut8E
 G2vvBApfArbEbU0HlJcRvSQraFVjlS2Vqo/oqYkajspXVJRTaAjzzJ+tXhh/tUmXZsq6
 j6OvcYoc2jRSsMDQnZ2Ln/yEYVe2pInA8y8fFBaUNorGBq0lG1Ak7TW1luj7Ot6ipCIf
 u0mV7dxukL1ChzoPEPJgYLCJBs/jfMMNvAzn4ANTQQA6iNmqlFmsuL86ScXDJSWVj71d
 s+fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BUcJdIWqrr+IZvPOnEuHNqfscKpmA1S5L5Mn3MxIjpA=;
 b=OInz4rzsHB9rNBS2TVxyXZKeRWkV+vzvQhXwQXXco33WYzKWvacqQODWOCRrYmxIlt
 jtFNB5oOsPL3x56PBR6XkoZHVdr5S6HNMnVO/eMfwQPCHyoRsKTn1m0mYLSYq+sOmuiH
 sNg5o2Rg0Pc03o+0IyjpW2UWXfz+gHUgUAzZ2iSowIOjOEhHVSHqTiOqJZ2ibpH2xhlS
 v8ArUNdq/86vnQ8j14eM4BcNj0hklZ1gNjtYYswommrfQ5Whw5Y5nmSJtTieO+P5TPY5
 Hcl9nLpJyZnS76p3wmExkNps8iKsu0RA3MxOS6vt4c4SdGBho0SVfJHsfgJNBtWcUBik
 b8gA==
X-Gm-Message-State: APjAAAUKK5520BcCvJGEzHNXc5/mIJEaw6s6YkFw17535nNVYWPF0fa0
 1Zrl0svAoblk82ca+0NyhRk=
X-Google-Smtp-Source: APXvYqyPqKBY6p0jGAoXx34Ep7cXaNbnu9p/U+zEyRaY/bKXmWHPd2LYIPpLryRMPOdrm2JMNWc/8w==
X-Received: by 2002:a17:906:3949:: with SMTP id
 g9mr5091433eje.171.1571154349774; 
 Tue, 15 Oct 2019 08:45:49 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id nq1sm2807787ejb.75.2019.10.15.08.45.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 08:45:49 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: rtl8188eu: convert variables from unsigned char
 to u8
Date: Tue, 15 Oct 2019 17:45:34 +0200
Message-Id: <20191015154535.27979-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015154535.27979-1-straube.linux@gmail.com>
References: <20191015154535.27979-1-straube.linux@gmail.com>
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

Convert the local variables max_ampdu_len and min_mpdu_spacing from
unsigned char to u8 and remove unnecessary castings to u8 pointer.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 6d56ca7ee7b4..1e261ff8f0a0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -729,8 +729,8 @@ void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 
 void HTOnAssocRsp(struct adapter *padapter)
 {
-	unsigned char max_ampdu_len;
-	unsigned char min_mpdu_spacing;
+	u8 max_ampdu_len;
+	u8 min_mpdu_spacing;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
@@ -752,9 +752,9 @@ void HTOnAssocRsp(struct adapter *padapter)
 
 	min_mpdu_spacing = (pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) >> 2;
 
-	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, (u8 *)(&min_mpdu_spacing));
+	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, &min_mpdu_spacing);
 
-	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, (u8 *)(&max_ampdu_len));
+	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, &max_ampdu_len);
 }
 
 void ERP_IE_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
