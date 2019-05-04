Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE1A13BD8
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 20:48:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2122886B04;
	Sat,  4 May 2019 18:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hsEquth1rzaA; Sat,  4 May 2019 18:48:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C345E86866;
	Sat,  4 May 2019 18:48:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D6151BF5E9
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A964226E5
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ftbNKsfgwZF6 for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 18:48:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id CD049215DF
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 18:48:24 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id b3so4585929pfd.1
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 11:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hmTYC1IMrcB9vVn4blmFDPwB368HGffmno6HFyxlFBg=;
 b=fEOewwgJy+by43IHCWkxFNXTyAXP6B+iuW6YwAxyWS626ZgBu8vHqedCtgcTSKyE9k
 Nj87dgstydB/6jy/ZnDqoqx/qru5iV5NYsqqTSdKlIIfuHErQrIEB8pXQlonnvgn6bLC
 auxEli5EQ+5/4sdwjAZ+GUVBuB2H4c+aMZZdCH5dgjHsD+hOMA5jWQBmZCMj7xKTv0wS
 NKPtcxlBd1BPjTgZKKHeYf1Q6mf3UCMmhrCkFT+Yf5xknyk3OjGAFPju4vSerHDCiXgY
 Ge67kwXXx2TTnbj72/vzGXlELFhEYex7ulPSqwFJD765CIf6NThdJp0Am2FTlD2FJNl3
 eWwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hmTYC1IMrcB9vVn4blmFDPwB368HGffmno6HFyxlFBg=;
 b=E68TWCviRu9u5VlNjBLoHflm8Z1ZsmlEIxkLB98bUSlgU202qlS0OEDx4Zc1p3PEM9
 Y1d5kwDmndvoeW30YZYVxrurl9rT6J5eq3kf5j15CpcmhHgYTQ7CxNQT13xqy5yHFVgb
 ma465/vLn8qxWTjjMKqYwLm1S1+w2rPyGN7z6tjSd43CV/N4YAE0Oz9pH9QHxPD/gJZJ
 jHtBlUmFAPXa4d/XXf9UgJz03KWTTGi8tKmgsaoxsPdmqL++5uMwL3B1TE3j0JtYtRhV
 BeV436ZzZsUn9MvPPQelvF9DRLcKpLSyJeoqTQT1PtWV1ukW7LGf2wV3J13JZWbl/9+I
 H+gA==
X-Gm-Message-State: APjAAAXtlbEuopaGBjqCuJjvb5T1j3sJcO7r6T6rgtOoYjOK2+2uzjxL
 GwQR8KjuJfSihYnmIvpWNVc=
X-Google-Smtp-Source: APXvYqwht0JimG6n+2DPZhcHPWNdY9Fi57tT/TCXMmaeFarKieDMoWy1sDk5VRxKpfocLxh8N4MXpw==
X-Received: by 2002:a65:4183:: with SMTP id a3mr20477551pgq.121.1556995704305; 
 Sat, 04 May 2019 11:48:24 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.241])
 by smtp.gmail.com with ESMTPSA id m16sm9550571pfi.29.2019.05.04.11.48.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 11:48:23 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/7] staging: rtl8723bs: core: Remove braces from single if
 statement.
Date: Sun,  5 May 2019 00:18:01 +0530
Message-Id: <20190504184801.26056-1-vatsalanarang@gmail.com>
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove braces from single if statement to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 60079532bddd..6f0205c9504b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -370,9 +370,8 @@ static void init_channel_list(struct adapter *padapter, RT_CHANNEL_INFO *channel
 		struct p2p_reg_class *reg = NULL;
 
 		for (ch = o->min_chan; ch <= o->max_chan; ch += o->inc) {
-			if (!has_channel(channel_set, chanset_size, ch)) {
+			if (!has_channel(channel_set, chanset_size, ch))
 				continue;
-			}
 
 			if ((0 == padapter->registrypriv.ht_enable) && (8 == o->inc))
 				continue;
@@ -1950,9 +1949,8 @@ unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_fra
 
 	category = frame_body[0];
 	if (category == RTW_WLAN_CATEGORY_BACK) {/*  representing Block Ack */
-		if (!pmlmeinfo->HT_enable) {
+		if (!pmlmeinfo->HT_enable)
 			return _SUCCESS;
-		}
 
 		action = frame_body[1];
 		DBG_871X("%s, action =%d\n", __func__, action);
@@ -2397,9 +2395,8 @@ s32 dump_mgntframe_and_wait_ack(struct adapter *padapter, struct xmit_frame *pmg
 		pxmitpriv->ack_tx = true;
 		pxmitpriv->seq_no = seq_no++;
 		pmgntframe->ack_report = 1;
-		if (rtw_hal_mgnt_xmit(padapter, pmgntframe) == _SUCCESS) {
+		if (rtw_hal_mgnt_xmit(padapter, pmgntframe) == _SUCCESS)
 			ret = rtw_ack_tx_wait(pxmitpriv, timeout_ms);
-		}
 
 		pxmitpriv->ack_tx = false;
 		mutex_unlock(&pxmitpriv->ack_tx_mutex);
@@ -6421,9 +6418,8 @@ u8 setauth_hdl(struct adapter *padapter, unsigned char *pbuf)
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
-	if (pparm->mode < 4) {
+	if (pparm->mode < 4)
 		pmlmeinfo->auth_algo = pparm->mode;
-	}
 
 	return	H2C_SUCCESS;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
