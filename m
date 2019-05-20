Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F96E23FC1
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 19:59:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A307585D3D;
	Mon, 20 May 2019 17:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jtp00OUhHev4; Mon, 20 May 2019 17:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 10C3185B0A;
	Mon, 20 May 2019 17:59:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FDCC1BF2B0
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 17:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1CE9C86F3E
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 17:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j0OO1wa8SZTW for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 17:59:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8F13486F58
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 17:59:20 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id u17so7592308pfn.7
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 10:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RFUxSnrN3fB5Hw+x1n8YVdP6x2XDLOtB1o6lkHmVnkA=;
 b=dRh4UzRWKgwei1Nz85yntjep8z4mVAEPimMrrsww0NMNnYXYYy6BELskCUuDoDvQNL
 /8UTE1zQtF3EtMUFq/P0H9ktCIU2KxZ+9MzZI/DwwtzQCaEUuLYYe5XT019wQhuRcFoa
 DqiKHenPBK46mJq34rTM+9bfFjMOpNsnrbTWt4OCgKjucb/G1FAliHykbR3SkB0KurRu
 Mo/19+dc5ttFou13EyUOH/B7cq5HJGYoP4uha5/LdpbJFqUzYK070DqKGXMIJxDCjryd
 V60LxUykNU+BzYLjRf4ScT5S+/Y55aPgVIZkiAroDTAga8HGO0sXvt4VoSXvdiqtTOOU
 hfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RFUxSnrN3fB5Hw+x1n8YVdP6x2XDLOtB1o6lkHmVnkA=;
 b=k1yq7PN9hzypUCj/TXZRtjATTA9LyzDWzXfcDs6hORfcIIdpLGJJ4FzFkPoGPoRsr/
 zcuxKUXroXOEEAVzzkhWx1UxJ8XlWO3P0tnBGYY9Px2BtbJqzCdVdYOQalaZfFpR3Bp5
 IwEDEHDwo0XjDNKna2EEDGED/AsEAkSwqTiUBp32SD8+BhdEtZ33WTKpZjZXKTwMcFdB
 tXcBfMjl369nNlhRGghKPYiFzsSu+sJoJWkfw9p50P+2d/zxyDCTvoAgYjn5Wo048IrF
 Mt4Olrr/NrMwCi0nOIQJdVIS/8yPwbC5pTg7l+Iiq317pfDf9QQLTVeO8e7y884uEMYW
 yu/A==
X-Gm-Message-State: APjAAAXA4W6IuhXnK17MSKEW27eRup3bCKZrx7tQTs/YBpYl6D6bFHud
 vsiuN84+IUbXyuGvpXX1yio=
X-Google-Smtp-Source: APXvYqxUzkt29SalqD3lKYB6xZWf4qtsngHFDik23PXQMGVezYr2YTs3HLO/ZJJXxvDoeE8zJWzlnw==
X-Received: by 2002:a62:cdc6:: with SMTP id o189mr55249109pfg.74.1558375159869; 
 Mon, 20 May 2019 10:59:19 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:114:bdcb:d11a:a62f:5b14:6d91])
 by smtp.googlemail.com with ESMTPSA id
 f28sm40588930pfk.104.2019.05.20.10.59.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 10:59:19 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8188eu: core: Remove else after break
Date: Mon, 20 May 2019 23:28:51 +0530
Message-Id: <20190520175851.18411-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove else after break statements to fix following checkpatch.pl
warnings:
WARNING: else is not generally useful after a break or return.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 26 +++++++++++------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 9a4aad5ec365..0abb2df32645 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1330,11 +1330,10 @@ void _rtw_join_timeout_handler (struct timer_list *t)
 					continue;
 				}
 				break;
-			} else {
-				DBG_88E("%s We've try roaming but fail\n", __func__);
-				rtw_indicate_disconnect(adapter);
-				break;
 			}
+			DBG_88E("%s We've try roaming but fail\n", __func__);
+			rtw_indicate_disconnect(adapter);
+			break;
 		}
 	} else {
 		rtw_indicate_disconnect(adapter);
@@ -2058,17 +2057,16 @@ void _rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 			do_join_r = rtw_do_join(padapter);
 			if (do_join_r == _SUCCESS) {
 				break;
-			} else {
-				DBG_88E("roaming do_join return %d\n", do_join_r);
-				pmlmepriv->to_roaming--;
+			}
+			DBG_88E("roaming do_join return %d\n", do_join_r);
+			pmlmepriv->to_roaming--;
 
-				if (pmlmepriv->to_roaming > 0) {
-					continue;
-				} else {
-					DBG_88E("%s(%d) -to roaming fail, indicate_disconnect\n", __func__, __LINE__);
-					rtw_indicate_disconnect(padapter);
-					break;
-				}
+			if (pmlmepriv->to_roaming > 0) {
+				continue;
+			} else {
+				DBG_88E("%s(%d) -to roaming fail, indicate_disconnect\n", __func__, __LINE__);
+				rtw_indicate_disconnect(padapter);
+				break;
 			}
 		}
 	}
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
