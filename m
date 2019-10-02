Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D68C9013
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 19:41:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A916A226D0;
	Wed,  2 Oct 2019 17:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MI69vlJhjWJd; Wed,  2 Oct 2019 17:41:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7FCC42268C;
	Wed,  2 Oct 2019 17:41:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4ADFB1BF5F4
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 17:41:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45EA98364D
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 17:41:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 21JbngSX+b7i for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 17:41:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B2B9B83883
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 17:41:13 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id n14so20618050wrw.9
 for <devel@driverdev.osuosl.org>; Wed, 02 Oct 2019 10:41:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mUZyNZheTJw4GC5851yKEfVpxUBc4f7pMP1DSM9q8jg=;
 b=B4aJ4X2xKW1tUZdS+Kgm4tbtVlOXSTiywfDe3qLBNTyEaI2SAeoTybXkY8fOcZWwQ1
 Y+CQx2v9AzEhq9fHb0ZHBgQIzk8r6aTIzhik1Jfi4HNM+j0wSEB9GGSrNqAZZgLIwfW9
 sTp3cuTcEbQ+G5fLZ/kJZacBf1TmGNPAQ29Ji2yCmOUxBDEnOdsM26HO29mbE89yzHWK
 N5AY9DamQeyBOvXdwjuBdCKNd3wS1poBRzCETxGIy/KlZ9LADMoU+qaw3LqqZgYyPvel
 bNx9g60T07qFe8jLcpsHNa6qM119ZANl7wJm3z61cAJ0Di5pXMBDWbdhN7PZuo9/paPY
 S62A==
X-Gm-Message-State: APjAAAVTg+QB4xtmoM5WJWpNiB302dmmaD2ohBV986Ek0kqWekH0jBlz
 1ctEEjDH1mSpVqnk/00xEmBzWSTgTsw=
X-Google-Smtp-Source: APXvYqzWaLLj84b5DPgMGqOH66TFh2UVD9sMvffhg/6fPjFOWddMdm6yky7HGz0wVtcCSZ6uiKB5pg==
X-Received: by 2002:adf:e689:: with SMTP id r9mr3970235wrm.62.1570038072117;
 Wed, 02 Oct 2019 10:41:12 -0700 (PDT)
Received: from green.intra.ispras.ru (bran.ispras.ru. [83.149.199.196])
 by smtp.googlemail.com with ESMTPSA id f186sm7879628wmg.21.2019.10.02.10.41.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 10:41:11 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wlan-ng: fix uninitialized variable
Date: Wed,  2 Oct 2019 20:41:03 +0300
Message-Id: <20191002174103.1274-1-efremov@linux.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 Denis Efremov <efremov@linux.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The result variable in prism2_connect() can be used uninitialized on path
!channel --> ... --> is_wep --> sme->key --> sme->key_idx >= NUM_WEPKEYS.
This patch initializes result with 0.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: stable@vger.kernel.org
Signed-off-by: Denis Efremov <efremov@linux.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index eee1998c4b18..d426905e187e 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -441,7 +441,7 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 	int chan = -1;
 	int is_wep = (sme->crypto.cipher_group == WLAN_CIPHER_SUITE_WEP40) ||
 	    (sme->crypto.cipher_group == WLAN_CIPHER_SUITE_WEP104);
-	int result;
+	int result = 0;
 	int err = 0;
 
 	/* Set the channel */
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
