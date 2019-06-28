Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC878598E8
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:59:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D417B22786;
	Fri, 28 Jun 2019 10:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R65DfCbbBsni; Fri, 28 Jun 2019 10:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B30A22720;
	Fri, 28 Jun 2019 10:59:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE34E1BF20B
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB0E886A0B
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zx5YK6mupR+2 for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:59:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 376E08455E
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:59:06 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id x15so2806766pfq.0
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bmX3Xqj2ILVfWRZiHcjuBjZNRwPsefbcZfnrWqMhD60=;
 b=YlIV0HHwbSqgHsUXjljAXpiKlrvoascRd1DetcDz9lNlcaOfIGu2pJIpp63/5GeDIH
 MrY/r6OoBYJWaW7O61ZHnFcP+VL0A96qIHLt82WNcUxafmA8iRPD7hKsMDgznhV7SwqZ
 g1TvcaDYMhxb4jZuxIwT1kxpsPTCvyVg7ImtM+YkLrcG0aVbuz/+LgWLQrFYcUbHMKSQ
 b9pl5/NNLnsOT4v7aETKdO3vPYum6//vDoFCJfOdv6rik/OigSsficYVZxisNssPUDa5
 ohU1d3MZNEOpETTOoUXPQOFpEOYn14r9roYFP//B5Vra3UY8fNzqiYxzHXMxGeBL4jWk
 xARg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bmX3Xqj2ILVfWRZiHcjuBjZNRwPsefbcZfnrWqMhD60=;
 b=YlUQwKX9E3mByU3lPwUykHrLjx2KXEWEfLNWuXO2WgnEI9WKrqsv7fSZqjq0EI0yTw
 atkH7nVawWvbo/z6mM9ogIfqm/JsglF80jVCGD4bOVAGW5GdX9CI3J8CjvWKwMQlWPaa
 x4oqzMEibrzjCb+rZb4Eav63uDDQNfOkPRu8VE/mSY3JAzBKrQWG9u+Ljokhwk49ULda
 Tu1qmhYXp0NeEZlmgTl7EXvbwLKvbpnMfyS8qXSZzn/+yRC/k3r+JXOypqELSIK3nl8Z
 j00NwEshJXk4prt95yeVLpqJ4k3wgWX36Qnx28vTipLgNdvcKG/o9q6UFArVdfwFRM7H
 3TJw==
X-Gm-Message-State: APjAAAUJKAAiHvz48geLZj+8bkWcIUzBRTX7uD0GtHfbzA5huUKhC1qF
 Sluuu0hSc6Er8o8QG5YMuOQ=
X-Google-Smtp-Source: APXvYqxiN4t/+fHYJJYh893yrPAoUNqOBm/8KIfK9c6MnDCzCLf2p2ZXkWZI6R8yqXJ+yFpYQclN7w==
X-Received: by 2002:a65:500d:: with SMTP id f13mr8509500pgo.151.1561719545903; 
 Fri, 28 Jun 2019 03:59:05 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id j14sm1908043pfe.10.2019.06.28.03.59.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 03:59:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 08/10] staging: rtl8723bs: Change return type of
 networktype_to_raid_ex()
Date: Fri, 28 Jun 2019 16:28:33 +0530
Message-Id: <20190628105835.6931-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190628105835.6931-1-nishkadg.linux@gmail.com>
References: <20190628105835.6931-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return type of header file prototype of networktype_to_raid_ex
from unsigned char to u8 to match its actual definition and call site.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index f6eabad4bbe0..733bb9425448 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -544,7 +544,7 @@ extern struct xmit_frame *alloc_mgtxmitframe(struct xmit_priv *pxmitpriv);
 
 /* void fill_fwpriv(struct adapter *padapter, struct fw_priv *pfwpriv); */
 
-unsigned char networktype_to_raid_ex(struct adapter *adapter, struct sta_info *psta);
+u8 networktype_to_raid_ex(struct adapter *adapter, struct sta_info *psta);
 
 void get_rate_set(struct adapter *padapter, unsigned char *pbssrate, int *bssrate_len);
 void set_mcs_rate_by_mask(u8 *mcs_set, u32 mask);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
