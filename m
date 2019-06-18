Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82884A8DE
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 19:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC71E86727;
	Tue, 18 Jun 2019 17:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZXar98SwCKlJ; Tue, 18 Jun 2019 17:55:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2ED17879CC;
	Tue, 18 Jun 2019 17:55:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4E491BF5AA
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 17:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D1E518664E
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 17:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AkEjXRBtAxQh for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 17:55:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0698A85C20
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 17:55:21 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id d126so8096877pfd.2
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 10:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=sZQNDbvRCX1/xmAgz48y9nkM0uP28/QjVvVkkR3CQOA=;
 b=C4Iz1IGyiHO+KxnxVZJMXrvK0VMpgE0VV8M58ezWEBhGaMJqGoxNPncfAY9jQXro1a
 q2Dzr43f5dlfHfhfUcftvrpCzA/BC3JWfBqDig80Yi+GH7GTGVcyEBvjlU4h93NUMTU2
 +Vklf+mbjyEb6tgJFqATVI5ElgnQ8aZb5U95w6io2EoG9i6QBhq77xIblzZdHUys2JRy
 0LBU6WNQ2ZZsau9C761+3HwY60Nx2/yUBgCKfAonztX4KVHD1vomR22vIfTmFOCMSPqV
 q6Gl2llLemRxkoD0x8cQq0zZfmEQmxMSNapLKLrpIX0CTkoiBtCm7l+1eaHX3ykn+one
 WwpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=sZQNDbvRCX1/xmAgz48y9nkM0uP28/QjVvVkkR3CQOA=;
 b=ZdDh+cJskzcS1ezGLiwAwysg52621SvWpBn0aZOZ0CF6aCCUC2VdNIz1Pnn+sJRWHf
 BD09zwNjMhWIkVyc8Z9AbVKLkAEFQ0qzwTy3UiuLK8hEaWnSIEFJKtnD25JtWh1Wyq+N
 iBn/FINXMIe8UslGe9fMjB1GZyX2nXSo04UqEU3TKX83Xf6k+bfOP4VxyHGgm8zjxU0r
 pS1izk7c6y+vcbrDcdT7bTDsfutwwlK8ByBG2KRUSVKBBssA/Y8jgvtSjf1xYvcJ1BiO
 XHF1e1WmFRGAyqnLwMA8CzvDkcs/btIgwmCRkDDCP3a85k7F2RCRN1QH+fnbtx6l/Te9
 5SqQ==
X-Gm-Message-State: APjAAAVG+galzQU72ywuCh0V5azgTV6a8OMYyZxoY/BanC1UzEazyHzl
 3+dXmMvnAx2kln73i+bWg5IF5oxN
X-Google-Smtp-Source: APXvYqx96I5XvE7xRAPdGzOeTmm+5O+cLVaDcbbg2VIuBv+nd9XhInsanHzz00TGwE4M8MslR6ab5w==
X-Received: by 2002:a17:90a:e397:: with SMTP id
 b23mr6347869pjz.140.1560880520698; 
 Tue, 18 Jun 2019 10:55:20 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id c18sm17498763pfc.180.2019.06.18.10.55.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 10:55:20 -0700 (PDT)
Date: Tue, 18 Jun 2019 23:25:16 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Whitmore <johnfwhitmore@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8192u: ieee80211: Remove redundant memset
Message-ID: <20190618175516.GA6518@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

alloc_etherdev function internally calls kvzalloc . So we may not need
explicit memset after this call.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index 3532ea9..4a6c3f6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -109,7 +109,6 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	}
 
 	ieee = netdev_priv(dev);
-	memset(ieee, 0, sizeof(struct ieee80211_device) + sizeof_priv);
 	ieee->dev = dev;
 
 	err = ieee80211_networks_allocate(ieee);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
