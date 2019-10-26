Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AC4E5A65
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 14:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6717085EEF;
	Sat, 26 Oct 2019 12:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MsJMsDw8QJlG; Sat, 26 Oct 2019 12:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1EC1B8574A;
	Sat, 26 Oct 2019 12:12:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D13A1BF3D1
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29DDA86462
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1QrAu+5fjHnV for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 12:11:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1E4E286457
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 12:11:56 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id p21so4852606wmg.2
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 05:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ROdiUFie8VPool1pzj4M8/NsYOT7cWJYujn+QRdPF48=;
 b=AlqdrmodfB2rBN9q1tTZv458MN/RslIaLRXFeOeGkRMKbPPh8TtPe0WKzfbkx4+iwM
 f0u6I85jzwSn9dvT5uR2vB7b2BHORpvqGVKyc9+rSjipxzxzFYHQ4zGUHDTQ6cfW5I2Z
 xfpP72Ue4kAkYBTarXmu2HAcGCx2pDOiN25WDcX+jAasFbhpqgO0A+en5B9PV/YWMPzW
 A9e2QQw4bR9T+3cKAamNJtFUKSzquHuX/gyN6sQ/rw4ZcHDzzitvF2rXYZmYMLNnvDOl
 4z841TP/fVrCLDaQ0SkaDmCl50k2V2pfzwaU4Pf7k9Z89Jxr7dTajxMOKeKvfdm5Abd0
 Z10g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ROdiUFie8VPool1pzj4M8/NsYOT7cWJYujn+QRdPF48=;
 b=g0SOG/A1fuYBtcJM/KySsnRXYIBNeyTyJaygIGuPGYzDGSdT9nwMdymiZo3lZwakm7
 8O5koc06otkzwhAS+bpd4GqB4dLX4o/hI3ffahGuoXohr/3Ae9PU2L4fSMSiYcBJs7v/
 U+SF52U6RAFXFG1xvEFGoyxpbWCVSI/24b7C3fMLyOypjOEHyEefExXUvxJDmLKXMRaX
 rbFrkm0QfgIgOqsW7kKOa0nU1EflCHMALyMHv6GY1LavJyUyLUdbKh5St7j144hR0vfU
 QY8lgB0K/zEUJ+jCInphI63cp2N/dRggyFSX9bAbCdVczkj5RoPod6buVSOdV3dx2c+J
 oCHw==
X-Gm-Message-State: APjAAAVYoXUUFMg3b0Vfgp5bigVpw5ZHFMeImxHOEmgx4YxGRMZ2o3xE
 0DVKlQSjgJa6vVTW2kd9FdQ=
X-Google-Smtp-Source: APXvYqxeTooQKZiEc2mBWfb+OQCbQqxGnXpC/cxWfdn7perNeBGaeYaAKOlietK+Z7Q0Lr9voDLU7Q==
X-Received: by 2002:a05:600c:2487:: with SMTP id
 7mr7812955wms.164.1572091914530; 
 Sat, 26 Oct 2019 05:11:54 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id v8sm5789906wra.79.2019.10.26.05.11.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 05:11:54 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/7] staging: rtl8188eu: convert rtw_access_ctrl to return bool
Date: Sat, 26 Oct 2019 14:11:32 +0200
Message-Id: <20191026121135.181897-4-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026121135.181897-1-straube.linux@gmail.com>
References: <20191026121135.181897-1-straube.linux@gmail.com>
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

Function rtw_access_ctrl returns boolean values, so change the return
type to bool. Also convert the local variables that are used for the
return value from u8 to bool.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 6 +++---
 drivers/staging/rtl8188eu/include/sta_info.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 157ae2f355ff..282c835a635c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -476,13 +476,13 @@ struct sta_info *rtw_get_bcmc_stainfo(struct adapter *padapter)
 	return rtw_get_stainfo(pstapriv, bc_addr);
 }
 
-u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
+bool rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 {
-	u8 res = true;
+	bool res = true;
 #ifdef CONFIG_88EU_AP_MODE
 	struct list_head *plist, *phead;
 	struct rtw_wlan_acl_node *paclnode;
-	u8 match = false;
+	bool match = false;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
 	struct __queue *pacl_node_q = &pacl_list->acl_node_q;
diff --git a/drivers/staging/rtl8188eu/include/sta_info.h b/drivers/staging/rtl8188eu/include/sta_info.h
index dc685a14aeb8..6165adafc451 100644
--- a/drivers/staging/rtl8188eu/include/sta_info.h
+++ b/drivers/staging/rtl8188eu/include/sta_info.h
@@ -354,6 +354,6 @@ void rtw_free_all_stainfo(struct adapter *adapt);
 struct sta_info *rtw_get_stainfo(struct sta_priv *stapriv, u8 *hwaddr);
 u32 rtw_init_bcmc_stainfo(struct adapter *adapt);
 struct sta_info *rtw_get_bcmc_stainfo(struct adapter *padapter);
-u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr);
+bool rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr);
 
 #endif /* _STA_INFO_H_ */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
