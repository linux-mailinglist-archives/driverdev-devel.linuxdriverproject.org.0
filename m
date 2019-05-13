Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EF31BE24
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 21:41:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4002886A40;
	Mon, 13 May 2019 19:41:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w6STq0+1AZ2y; Mon, 13 May 2019 19:41:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EA868698E;
	Mon, 13 May 2019 19:41:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CEDD21BF296
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:41:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB77E85BC6
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hKmHjD1LbIUN for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 19:41:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5B15585816
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 19:41:29 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id s11so7726585pfm.12
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 12:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=3aU423IlwL4wI0r+FyAM//in6o8PQqlvRcjiTdmSvtU=;
 b=H1KchLnG7vciI91uYcemH1z1mo7O8fvEhe38+zter7cFtyoPBQmWOjqC29AoEzI9mV
 +14zBVoUFzDmDG5zgmgcb/brcXIMrubBAJtXTGOQq5bBafjO9HHB8j5TzueRszE5Di0E
 X3u4iGylgXBEgdNULfqFI1iqpF+4vvgpJ5TQfDSIsXPcdqYsg7PTbenESIB3MtpBh4LB
 VuA/7khNrW2arPPY3XXXEDdvcRzPLQf86upTdHG4mjZzsvEJLHqn91nesCcmSpH6u9fr
 8hilPhcwQTdWEtNlD82Ep/3bcCNLZBR26wKtOKr0wmqtT2aBwhBmdX6pCnmxdIqPsNMG
 xdFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=3aU423IlwL4wI0r+FyAM//in6o8PQqlvRcjiTdmSvtU=;
 b=hTGHE8x58d0iaAPpPjR2iPaozs6swfkHaQrHbwHDM+GqRRGJwWceE7eh3EG/oJ4r+S
 mTqYmryW8iD6NdlUH7aASFxhIlPXsWVgBlI5G8bRiNM88T9nRZlG1NwiWnVTVDCgAKsG
 rB2AhZ+aadMl/P/nMqp2kbKVRTIcZFDBTDGBAjD5OkG5BsoRwFT95CztAMkh5/+so+M5
 UyAFH1kLJAoUWsB25+/LVoZeDxFvGz5EmCkkRFCudiKmjORUf0wnCe0dni8uj4ALI7Ln
 y6b5XR43n4wEtb9ThfgeCtErhFvwwTNU7BOQLMnlDZ071LXcSUPrboYc6DyxYdRnqsaE
 LQQw==
X-Gm-Message-State: APjAAAXf25X3sLHJChl8woM7MNGm3UzQN9Ml5HPx5ysRsgtYlxkVwD6k
 xOSEZc9Xgc052APn2X/gngE=
X-Google-Smtp-Source: APXvYqzKQwf/XDnwgWweyS6NfrcSeBZvEsDpEJ06aszuStSym4tVd48XU3Qv1IX9TGjMhiSzNOFllw==
X-Received: by 2002:a62:640e:: with SMTP id y14mr17148708pfb.109.1557776488921; 
 Mon, 13 May 2019 12:41:28 -0700 (PDT)
Received: from arch ([2405:204:7102:1ca6:a53f:1f68:43dd:48ab])
 by smtp.gmail.com with ESMTPSA id v6sm16528779pgk.77.2019.05.13.12.41.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 12:41:28 -0700 (PDT)
Date: Tue, 14 May 2019 01:11:21 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH 5/5] Staging: rtl8192u: ieee80211: Use !x in place of NULL
 comparison
Message-ID: <20190513194116.GA30887@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix comparison to NULL, chang to !x operation.
Issue found using checkpatch.pl

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 944c8894f9ff..79558fb797c2 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1796,7 +1796,7 @@ static void ieee80211_process_action(struct ieee80211_device *ieee,
 	u8 *act = ieee80211_get_payload(header);
 	u8 tmp = 0;
 //	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
-	if (act == NULL) {
+	if (!act) {
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "error to get payload of action frame\n");
 		return;
 	}
@@ -1929,7 +1929,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 						memcpy(ieee->pHTInfo->PeerHTCapBuf, network->bssht.bdHTCapBuf, network->bssht.bdHTCapLen);
 						memcpy(ieee->pHTInfo->PeerHTInfoBuf, network->bssht.bdHTInfoBuf, network->bssht.bdHTInfoLen);
 					}
-					if (ieee->handle_assoc_response != NULL)
+					if (ieee->handle_assoc_response)
 						ieee->handle_assoc_response(ieee->dev, (struct ieee80211_assoc_response_frame *)header, network);
 				}
 				ieee80211_associate_complete(ieee);
@@ -2856,7 +2856,7 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
 		goto done;
 	}
 
-	if (*crypt == NULL || (*crypt)->ops != ops) {
+	if (!(*crypt) || (*crypt)->ops != ops) {
 		struct ieee80211_crypt_data *new_crypt;
 
 		ieee80211_crypt_delayed_deinit(ieee, crypt);
@@ -2871,7 +2871,7 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
 			new_crypt->priv =
 				new_crypt->ops->init(param->u.crypt.idx);
 
-		if (new_crypt->priv == NULL) {
+		if (!new_crypt->priv) {
 			kfree(new_crypt);
 			param->u.crypt.err = IEEE_CRYPT_ERR_CRYPT_INIT_FAILED;
 			ret = -EINVAL;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
