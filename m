Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAD413FA9
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 15:22:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61CE985C95;
	Sun,  5 May 2019 13:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KOCnt62Avd5M; Sun,  5 May 2019 13:21:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D31FE85650;
	Sun,  5 May 2019 13:21:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C681B1BF3B8
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:21:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C3183226B3
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 08e9Ei83P6U7 for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 13:21:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id DC846226A2
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 13:21:51 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id t22so5075732pgi.10
 for <devel@driverdev.osuosl.org>; Sun, 05 May 2019 06:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/W24gNruPHDgOof9DmBWprRyBOAOlA2d0gs0W79Nqlk=;
 b=QMrWHacvhJvQJcbuJTgltiNCAtynYyJRiAeF3TDpt1cxYig3Y409qQ4JZ3tvgUkB3o
 vztrdxmPgtpszJuuFKhIsU9hKN+ekGks88GhfICI+6l7mclzDpEu3+5bAlh3m3e2ycuu
 jIm9hHJBVEvraqlMb9QYUSSgmVo/kFmqtgcXIYH4zbyw9WOibxL95NTwnYTFkjITkLYy
 9DSem1mxGl7geSqVRxcz4l6KVcV/R2/m2vSLnM+N+szAV+8553G1cwoMQmXzD4sPFx8P
 XkeTQydXycW5LGARiUx4z6nsIpuhi8rrDNwKw7OyDWiYeJY291EzB6NDXRloWE9y2equ
 3/JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/W24gNruPHDgOof9DmBWprRyBOAOlA2d0gs0W79Nqlk=;
 b=BTI5w8jAPKyNHvgLOxNJcbSwQabYV3t/e37GQiRZ2fZOVQ9VTH4WV4vTUggBW0Mz6W
 xhr1aLuOxbqVvJ6+PDSpXGNGwF9f5dnen2tHbN9lr0iXQjxYKiQ6SDYsqg2JXnqYKZXx
 BDnu1/RLkSfcgku8KUxFr0WElbbik3BtxIdjqnmjdS7DCU2IHAyBi+daOEIhSp5TytwX
 FPSA6QiStazmFj8QupigIhkrJKnuw3ZcRWlwLjN00LHvc2Hi0Xo40gPuf2p/yZK8owic
 7KAo5njS51xWGucgLBusE+qPJiJq6jllpjFMkf4B6ibVPG8bLi9en+hra8uPTeMFkt1u
 o8kw==
X-Gm-Message-State: APjAAAWjKEhoK8R3fZsiADGLe6CEZaz27nSsJ6sBIwDtM6ffEHAIe5V8
 7k4t4WEWVgh9i+OxL7TWOos=
X-Google-Smtp-Source: APXvYqzVhSnGwwFTiQq+NfgjIFIj0R+/Go50FMLHUTb9rAVkS58g8ker3N0HJiQy/0PPsLhVVe9omQ==
X-Received: by 2002:aa7:8e04:: with SMTP id c4mr25596656pfr.48.1557062511524; 
 Sun, 05 May 2019 06:21:51 -0700 (PDT)
Received: from localhost.localdomain ([103.87.56.229])
 by smtp.gmail.com with ESMTPSA id m11sm10599223pgd.12.2019.05.05.06.21.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 06:21:51 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 4/6] staging: rtl8723bs: core: Remove braces from single if
 statement.
Date: Sun,  5 May 2019 18:51:31 +0530
Message-Id: <20190505132131.4404-1-vatsalanarang@gmail.com>
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
index 1cf6229a538b..a8ceaa9f8718 100644
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
@@ -6431,9 +6428,8 @@ u8 setauth_hdl(struct adapter *padapter, unsigned char *pbuf)
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
