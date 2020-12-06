Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A94712D0051
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 04:45:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07F3D87509;
	Sun,  6 Dec 2020 03:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdFL5NO-KyM0; Sun,  6 Dec 2020 03:45:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B35887563;
	Sun,  6 Dec 2020 03:45:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C88781BF962
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C46FC87BDD
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snq+MtXaYYu7 for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 03:45:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 21EF487BF8
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 03:45:31 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id q1so9015066ilt.6
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 19:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xozfEtcjgJFJI3Lfdsh6l2B4qBozB67SYu7OaS1aMj8=;
 b=WPDQ971HnD3G3d2c90QjQ6tkM+4oUIUwXBKoAO37zdTFeSwlOi6T9mpdWIWee69+ag
 NBG2SoAI6sJ7nTKEmeISBZdxcCP2hws8zr64A9Yb2DeQ+BjYR483TrXrXljRmF3TAY95
 xrKc0NM1Ty+k1XtX4Uwuxz6XduDk/DT8N9J7I95RbFEOwsrexRVUWhJDDPsizFMMxnQp
 qSQS1MIOtH60ad+5flljT8UeFGb0wnsbjksLE9VsPrkX0TllFeaou326msok2ygar45y
 ANxraMaLnKVoAxg1nNHIXlBV1HDxCYZwnwjKbYrLGY5Q++z6mkfOHbyrr/Pf7fsQUrKF
 Jm9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xozfEtcjgJFJI3Lfdsh6l2B4qBozB67SYu7OaS1aMj8=;
 b=j4oZDChWyFZHSMqdMBO8VDTxn8Iu96Hbzo2beFgW7ewTNYRzDU6l6zbYbZ+vUA++jO
 i3hVVLImMINc1x/eTSlqh0NrB79VcP4aP5Vk6S/xGu9SKYpe4FCsxpY2temCqujz4EvP
 TPVvaL9IUupb1wAot5x3T6OLq2+cvA4Ka4t0CM24pnzhNf39Dgz8WNYeDWIxGrToqdIu
 yuc1UcCwRI3sFPCBsYTDW0iIEwmSgRfF25TeUMzZGTr7PQst5Eu/xGnQDnjelWTwXUs6
 uEbl9dYqNapKixHigiI5v9bOJ4hOEAkJ23NBHStIxpiCO3a4XVw4c7r5msw71Dnt6JC1
 zm5g==
X-Gm-Message-State: AOAM532Nh1sZgiu8GNGCmdVFwratyS7isaiyIMkRFKil1Nj4g0YT706J
 CpOkcGR2pKj0r9ADx3zNOEA=
X-Google-Smtp-Source: ABdhPJy8Yh9LYFtX77yTPdq/GqAkN7LOhq1p1msgGNctPUh4XyTK7eE3x1qyyaTh29gzf6Ez6Q7WZQ==
X-Received: by 2002:a92:c052:: with SMTP id o18mr13075881ilf.245.1607226330528; 
 Sat, 05 Dec 2020 19:45:30 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id v63sm3908553ioe.52.2020.12.05.19.45.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 19:45:29 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/10] staging: rtl8723bs: replace
 RTW_IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK
Date: Sat,  5 Dec 2020 21:45:14 -0600
Message-Id: <20201206034517.4276-7-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206034517.4276-1-ross.schm.dev@gmail.com>
References: <20201206034517.4276-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace unique macro RTW_IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK with kernel
provided IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK.  The other
IEEE80211_ADDBA_* and IEEE_DELBA_* macros are duplicates already defined
in linux/ieee80211.h, remove them.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 6 +++---
 drivers/staging/rtl8723bs/include/wifi.h      | 7 -------
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 0743e56582ba..166b5369b003 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3943,7 +3943,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 				/*  TID */
 				BA_para_set |= (status << 2) & IEEE80211_ADDBA_PARAM_TID_MASK;
 				/*  max buffer size is 8 MSDU */
-				BA_para_set |= (8 << 6) & RTW_IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK;
+				BA_para_set |= (8 << 6) & IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK;
 			} else {
 				BA_para_set = (0x1002 | ((status & 0xf) << 2)); /* immediate ack & 64 buffer size */
 			}
@@ -3994,8 +3994,8 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 			if (hal_btcoex_IsBTCoexCtrlAMPDUSize(padapter) &&
 			    padapter->driver_rx_ampdu_factor == 0xFF) {
 				/*  max buffer size is 8 MSDU */
-				BA_para_set &= ~RTW_IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK;
-				BA_para_set |= (8 << 6) & RTW_IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK;
+				BA_para_set &= ~IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK;
+				BA_para_set |= (8 << 6) & IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK;
 			}
 
 			if (pregpriv->ampdu_amsdu == 0)/* disabled */
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 2e8ca191c608..c3a4a0bad0d7 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -653,13 +653,6 @@ struct ADDBA_request {
 #define IEEE80211_HT_IE_NON_GF_STA_PRSNT	0x0004
 #define IEEE80211_HT_IE_NON_HT_STA_PRSNT	0x0010
 
-/* block-ack parameters */
-#define IEEE80211_ADDBA_PARAM_POLICY_MASK 0x0002
-#define IEEE80211_ADDBA_PARAM_TID_MASK 0x003C
-#define RTW_IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK 0xFFC0
-#define IEEE80211_DELBA_PARAM_TID_MASK 0xF000
-#define IEEE80211_DELBA_PARAM_INITIATOR_MASK 0x0800
-
 /*
  * A-PMDU buffer sizes
  * According to IEEE802.11n spec size varies from 8K to 64K (in powers of 2)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
