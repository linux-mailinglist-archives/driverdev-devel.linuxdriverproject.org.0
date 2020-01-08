Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 521F4134F06
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jan 2020 22:41:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEB4A868E5;
	Wed,  8 Jan 2020 21:41:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wHdNr7MP69Dn; Wed,  8 Jan 2020 21:41:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5772D868A8;
	Wed,  8 Jan 2020 21:41:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA4561BF5AD
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 21:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E6EA986849
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 21:41:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C4FmECmW0ECT for <devel@linuxdriverproject.org>;
 Wed,  8 Jan 2020 21:41:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1E04B8684A
 for <devel@driverdev.osuosl.org>; Wed,  8 Jan 2020 21:41:24 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y11so5057845wrt.6
 for <devel@driverdev.osuosl.org>; Wed, 08 Jan 2020 13:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=8tFkmmByfqRYdkEMT8qlYu7b+6vkDG6TzQO1do/psuY=;
 b=t2s0kI1zVfmKp6g47XLDfiPioRcT5XT7xzG2A/At9EXCEbvRiTjhzzkHRmJ/E3CXf1
 EoicEG1qAdrpV8cUgQ2ZsSda4YYmuCaTzfFGx69oAYWC5phKDukRuvoaSCfA7m/ZL84t
 IHmdGeWq94zG4RjFQmZk0muD+JW++snbT5EBIaMkccG+OHTilF5Ql8HkNRJJ+BPrL+e0
 vT+Rqg/ouFTRJcu7JXws20M5b9AJE23sJkSa6PtUyFl1kdOkJ/PXfQxpM1rB+yXE7qPd
 KMJlzozYAo7zO2vhtwgOqnd2XY0xvF1hpIKSOtRoIUkDS9a8Li8DqMC5bUC/MFyh95qN
 cPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=8tFkmmByfqRYdkEMT8qlYu7b+6vkDG6TzQO1do/psuY=;
 b=SVAOvrjwRD4toUMoKvz8nCTxcRj3IWdLbOjdFckQtNW4VYgyF93qtRddkAsJgl2J0F
 NgirzJ+T1NTVjo7sio1Ab2mlmC7Qw1xfmzW4fCBAAZXFkJpcZJWT/Xg8dZGOTYhAbJnI
 0NC/bAmL1pQ5G8wTUAvY+Dv1Hque+ZgVH3qNn9GgfFOHmB9vyWwN5hljjW9YRMuXOxVn
 5A8/bUA3lbTys/4AuN0y5taCcPoX6qHLE27hB5Bk8yJg01ZSztbyVnmDX6oashQHtxph
 Iz/3rEysXotBV/cUx0FpxVzuUjqQFbOP3yx8np74EffnNQfy2IvreNADlLpJxc79IIKA
 DabA==
X-Gm-Message-State: APjAAAXZnw+aPC3XsIwg11HA8zrdGKFASXE1KUkr1BfT2KQGpgTO0B7S
 /MOd+KN/nnPy50CrM4B15niR7cs7
X-Google-Smtp-Source: APXvYqzxkUzKLZRJfkGO24XPJxMlPzoyDi2BHu5qaA/cA277wELwFz9Aak9mPCYP5IH3A5UV1ufxLg==
X-Received: by 2002:adf:ea4f:: with SMTP id j15mr7113616wrn.356.1578519682355; 
 Wed, 08 Jan 2020 13:41:22 -0800 (PST)
Received: from [192.168.43.18] (188.29.164.206.threembb.co.uk.
 [188.29.164.206])
 by smtp.gmail.com with ESMTPSA id q68sm536566wme.14.2020.01.08.13.41.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 13:41:21 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/4] staging: vt6656: use NULLFUCTION stack on mac80211
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <610971ae-555b-a6c3-61b3-444a0c1e35b4@gmail.com>
Date: Wed, 8 Jan 2020 21:41:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It appears that the drivers does not go into power save correctly the
NULL data packets are not being transmitted because it not enabled
in mac80211.

The driver needs to capture ieee80211_is_nullfunc headers and
copy the duration_id to it's own duration data header.

Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/main_usb.c |  1 +
 drivers/staging/vt6656/rxtx.c     | 14 +++++---------
 2 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 9cb924c54571..5e48b3ddb94c 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -1015,6 +1015,7 @@ vt6656_probe(struct usb_interface *intf, const struct usb_device_id *id)
 	ieee80211_hw_set(priv->hw, RX_INCLUDES_FCS);
 	ieee80211_hw_set(priv->hw, REPORTS_TX_ACK_STATUS);
 	ieee80211_hw_set(priv->hw, SUPPORTS_PS);
+	ieee80211_hw_set(priv->hw, PS_NULLFUNC_STACK);
 
 	priv->hw->max_signal = 100;
 
diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 39b557511b24..29caba728906 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -278,11 +278,9 @@ static u16 vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_context,
 			  PK_TYPE_11B, &buf->b);
 
 	/* Get Duration and TimeStamp */
-	if (ieee80211_is_pspoll(hdr->frame_control)) {
-		__le16 dur = cpu_to_le16(priv->current_aid | BIT(14) | BIT(15));
-
-		buf->duration_a = dur;
-		buf->duration_b = dur;
+	if (ieee80211_is_nullfunc(hdr->frame_control)) {
+		buf->duration_a = hdr->duration_id;
+		buf->duration_b = hdr->duration_id;
 	} else {
 		buf->duration_a = vnt_get_duration_le(priv,
 						tx_context->pkt_type, need_ack);
@@ -371,10 +369,8 @@ static u16 vnt_rxtx_datahead_ab(struct vnt_usb_send_context *tx_context,
 			  tx_context->pkt_type, &buf->ab);
 
 	/* Get Duration and TimeStampOff */
-	if (ieee80211_is_pspoll(hdr->frame_control)) {
-		__le16 dur = cpu_to_le16(priv->current_aid | BIT(14) | BIT(15));
-
-		buf->duration = dur;
+	if (ieee80211_is_nullfunc(hdr->frame_control)) {
+		buf->duration = hdr->duration_id;
 	} else {
 		buf->duration = vnt_get_duration_le(priv, tx_context->pkt_type,
 						    need_ack);
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
