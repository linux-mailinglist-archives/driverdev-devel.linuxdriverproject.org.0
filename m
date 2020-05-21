Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CF21DCA92
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:57:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20280891ED;
	Thu, 21 May 2020 09:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1fSsIMRwnyvH; Thu, 21 May 2020 09:57:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BD0C89216;
	Thu, 21 May 2020 09:57:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE4311BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:57:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DAAFA204E9
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:57:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Axnktya7p49d for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:57:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id F2556204D3
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:57:50 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c3so1813973wru.12
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 02:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=fgA73O2odwNS1tE9Pa7tUkjFkww58qXLyvI3wxAGKjU=;
 b=agHXvB9IT1FaOvbx9VBAx1tGWOiHgA8EhJXKShdYxPUkSCTPsVQqA2rrQXzdtVILEd
 /LmY8fSF87tlAG977QQW770ocB5zu6WgVOTRbo/6e/5qPN6GMwqG7xj554qI0gWb7AWE
 J01Z8TgtSAR+a111SS9SN39QWkY5vUVp7xwzVQwhdjG7IkDkLoj6FVke4tzolDDlr+bu
 YQ27sdEpl2f7xgQ/RE75enP7jii02jV0Bnad7FjQCVMMyfDeieG7Ff8DpgDmOSOHaAYv
 L03lWd9MZrNfZ+4CBR5zPFBcd4JCUagdPpkeqcsyl+S4shqmQvqztlg70ZifhD3KG2jm
 3e3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=fgA73O2odwNS1tE9Pa7tUkjFkww58qXLyvI3wxAGKjU=;
 b=iusnuUo7Ge2aJ0HTaO003/UVmj49aodT00iWlWbk5l/9HlzGu/QZ1AfB2VaXCLYO+E
 oTy8mUNnq1E2Wod8zpU+GmHYwN9KN9e8+EKzdb6ogVa4GHHf4QWbxJgLDrWxVgyf0ACE
 q7Boc+I2/Qfi3/Kv0lU0Mmd2gYefcoA/PWvZEvHSP1qWbLU4sYlparVVSFcnttuhTKJk
 C9efhlSccMZ5ULVNyUW4tj7+TVuWIg46G4srGqo5bZM0Cv4+Kt7+/qCv5TtUMri3AesJ
 IzV13xaENwe10Au+e/jdQxQdheNUNj0JE+suIQG+Fxt0+ytvxF/nWeHeheLF71zHpCgp
 pyTA==
X-Gm-Message-State: AOAM533Fix6hoMdL/o2RAUBDCxAzkcsia9Qt0kZ80F5uf5OIreeFkPvj
 Cva3LJNCJbsUCFR92wD5/gI9Nrcp9d2Tgg==
X-Google-Smtp-Source: ABdhPJyfRUcGXaKzvRC6WobHIyznva1VDzu0wm3fu0c2BI7bVUcUR9g3IzrGd0Bs0XkF+Zydj5CI8A==
X-Received: by 2002:adf:8302:: with SMTP id 2mr8201081wrd.114.1590055069527;
 Thu, 21 May 2020 02:57:49 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.70])
 by smtp.gmail.com with ESMTPSA id a12sm5724063wro.68.2020.05.21.02.57.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 02:57:49 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 10/10] staging: vt6656: move key frag controls to
 vnt_fill_txkey
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <bb91b159-387a-005b-f614-c541de128c40@gmail.com>
Date: Thu, 21 May 2020 10:57:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

vnt_fill_txkey now has access to tx_buffer move cipher frag controls

The icv_len is the only thing needed from hw_key in vnt_tx_packet.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 23 +++++------------------
 1 file changed, 5 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index bbe449af8acf..9ee57f7c0c88 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -323,10 +323,12 @@ static bool vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer, struct sk_buff *skb)
 			       tx_key->key, WLAN_KEY_LEN_WEP40);
 		}
 
+		fifo->frag_ctl |= cpu_to_le16(FRAGCTL_LEGACY);
 		break;
 	case WLAN_CIPHER_SUITE_TKIP:
 		ieee80211_get_tkip_p2k(tx_key, skb, fifo->tx_key);
 
+		fifo->frag_ctl |= cpu_to_le16(FRAGCTL_TKIP);
 		break;
 	case WLAN_CIPHER_SUITE_CCMP:
 		if (info->control.use_cts_prot) {
@@ -369,6 +371,7 @@ static bool vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer, struct sk_buff *skb)
 
 		memcpy(fifo->tx_key, tx_key->key, WLAN_KEY_LEN_CCMP);
 
+		fifo->frag_ctl |= cpu_to_le16(FRAGCTL_AES);
 		return true;
 	default:
 		break;
@@ -504,7 +507,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 	struct ieee80211_tx_rate *tx_rate = &info->control.rates[0];
 	struct ieee80211_rate *rate;
-	struct ieee80211_key_conf *tx_key;
 	struct ieee80211_hdr *hdr;
 	struct vnt_tx_buffer *tx_buffer;
 	struct vnt_tx_fifo_head *tx_buffer_head;
@@ -606,23 +608,8 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	tx_buffer_head->frag_ctl =
 			cpu_to_le16(ieee80211_get_hdrlen_from_skb(skb) << 10);
 
-	if (info->control.hw_key) {
-		tx_key = info->control.hw_key;
-		switch (info->control.hw_key->cipher) {
-		case WLAN_CIPHER_SUITE_WEP40:
-		case WLAN_CIPHER_SUITE_WEP104:
-			tx_buffer_head->frag_ctl |= cpu_to_le16(FRAGCTL_LEGACY);
-			break;
-		case WLAN_CIPHER_SUITE_TKIP:
-			tx_buffer_head->frag_ctl |= cpu_to_le16(FRAGCTL_TKIP);
-			break;
-		case WLAN_CIPHER_SUITE_CCMP:
-			tx_buffer_head->frag_ctl |= cpu_to_le16(FRAGCTL_AES);
-		default:
-			break;
-		}
-		tx_context->frame_len += tx_key->icv_len;
-	}
+	if (info->control.hw_key)
+		tx_context->frame_len += info->control.hw_key->icv_len;
 
 	tx_buffer_head->current_rate = cpu_to_le16(rate->hw_value);
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
