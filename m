Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F1A1B6612
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 23:18:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2870E88699;
	Thu, 23 Apr 2020 21:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uPCeh+ufrXZN; Thu, 23 Apr 2020 21:18:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BC0B8861D;
	Thu, 23 Apr 2020 21:18:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76D951BF2E5
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 21:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7390686DEE
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 21:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8TLRiH0jN963 for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 21:18:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BEC8386DE7
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 21:18:01 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id z6so8371191wml.2
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 14:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=3UMfdWcimBn25JH2myhA40azE0PlplXVveJxc9S5LYk=;
 b=uamWr4MnC2gvgpYgfAIoTG2UxaKYkmo+H+l1vvu+mlG+aJJkhnvh5nR+bkVjcBEYLx
 NCZyuMLSdXLuMGrWhTvfRkAE1oxzj/Tex41zV2hlhGRJf77rq+JVrsbp+Nn5wbmBjSON
 fztN2Y/voSToxjv3cnPgB+vpZ5gHTOWSQRA+aou4GYBKE66aDT+jifF5ztFBBFWwv8bb
 O1B7qrQFjtmSCXhMigoRppHUAV3ky63ayC3zweUP9OC1TLMw/8zZGvLEGfBoX/xQ6d4v
 cb5tDs1pMhXG3CNlb11iQzm4V9AZD6xdd4Uh7mx8p/TjlHy8MkIJVyH1lb60dPp34P/x
 /Zzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=3UMfdWcimBn25JH2myhA40azE0PlplXVveJxc9S5LYk=;
 b=CuiLZYP0DArSh1jOiRdT9UIlY/s0Y+MWuHV8KjGoPfiwsdPe6Sy9dyfv9WIZXFHEaQ
 zCxlgqoNey+VOXIECAcijQa9CK93kt2/8Holzenw7mqoll7yVCj0qwhUNR9WxkwYmUcU
 LiKIoIg4QgKryaVc91oUEkOIv+LJGvxdGOv/Qij84p4dbkaawmQguQxTHJbTqjEMOOuF
 /Lw6++zOf8zBsAcHOt5deM8icIpJ13Ik8DLvCiOLm80YmUey/AbXrhYaHBBbt+j1fg02
 Lx1BhC0gD3oMCp/V+LDXQHUDs5Z4OvMok/5Lo6VMuOOp2TdLxYWb95Cd5u3zUpJUf2sn
 0raQ==
X-Gm-Message-State: AGi0Puadhq3BReWrPWCro5eWPMoWUJlG0Jq8801mf5ytfDMLn96B8Qkz
 Qycxf4vkbj+XG9P23SKUwfE=
X-Google-Smtp-Source: APiQypL14SL2t3MTWCC5IqHR6QKM17e2Mz6mwndEh3M6aXyfBYq39YCccjsK43uXeZBOPEM+4ZNhbQ==
X-Received: by 2002:a7b:c190:: with SMTP id y16mr6615537wmi.50.1587676680314; 
 Thu, 23 Apr 2020 14:18:00 -0700 (PDT)
Received: from [192.168.43.18] (94.197.120.138.threembb.co.uk.
 [94.197.120.138])
 by smtp.gmail.com with ESMTPSA id j3sm5373507wrw.28.2020.04.23.14.17.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 14:17:59 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/2] staging: vt6656: Remove preamble_type setting from
 vnt_tx_packet.
Message-ID: <04874ae5-0859-7cb5-619a-ac96a207be5d@gmail.com>
Date: Thu, 23 Apr 2020 22:17:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
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
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

preamble_type is set in vnt_bss_info_changed no need to set it
here.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 7e15534e52ff..f56a2b02fe36 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -729,11 +729,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	if (ieee80211_has_retry(hdr->frame_control))
 		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_LRETRY);
 
-	if (tx_rate->flags & IEEE80211_TX_RC_USE_SHORT_PREAMBLE)
-		priv->preamble_type = PREAMBLE_SHORT;
-	else
-		priv->preamble_type = PREAMBLE_LONG;
-
 	if (tx_rate->flags & IEEE80211_TX_RC_USE_RTS_CTS) {
 		need_rts = true;
 		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_RTS);
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
