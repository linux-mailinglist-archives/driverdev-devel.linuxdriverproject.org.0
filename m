Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D73B3213E9
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 11:16:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D9E085F05;
	Mon, 22 Feb 2021 10:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id stiKmuADEZvH; Mon, 22 Feb 2021 10:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB56E85E5C;
	Mon, 22 Feb 2021 10:16:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A6511BF39D
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 10:16:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66A9187141
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 10:16:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sexk7rHgU+mx for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 10:16:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DEE6C8711B
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 10:16:05 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id u11so7415993plg.13
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 02:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DEyKy5mx0dMuKE/TR0/MfCGJrJdUfSMNm7rgBnd8nC8=;
 b=ka5Mjfco5GPDZIy/EYuD06J9MmfbGkHtLRu76/NxtzUCZEMfkXQNn0pWhUCogc9+LI
 gynf0G3viWhdlJyBI9qNoMOUHYiA/FK8Pxy/QjwB1WyLN+Zw9OJUN8glc+Bg+T9mw1Ey
 RAST6dMBPCAvMMaPF3ovRtqMeAMybefqwXkQ56bqbQZuOkr4REsv8m4+pRZahyd50JvH
 DZWuHJpZ6rdw8hKxdkssclEllaGLdwGTHu22Pah5GXq9pZhqKcXsYrDx6ccUYVGg+VHd
 i1vrmwSugLBcFUjphpQxYVoOv5WhhwJlchfSi51tv4CaSR9TJU5dBmo592ujRaSNdz+E
 /Ncw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DEyKy5mx0dMuKE/TR0/MfCGJrJdUfSMNm7rgBnd8nC8=;
 b=gjavuJicc+ec6CkIF8cqmYq/H1sOWESuY9NtZM37Ch1B6puew8Atf+ZaMZwN2gp74J
 5vind5Y7HDX2A8xkvmSfN5kt8uEBF8F3k/hVNrRmGjs/nc+odZ17UvOsBmrKKkXwPj4I
 U2STXdU1xzggjA3sT5C6tnWdhFfqQd2Xf0LTCMEZVgpHEtQsx7FyA3niLLNxGvwx/NfY
 sTsjHm4gbeL+4mMK251t4lQOaOoK8LUhoGZibpajKTHz5CuQYSFpVYX0o/D4mlhg+EnK
 6GRq3Y8INX5Lc9VZpRNf9SXMtZtiuqxPMZm5x04j8F0bFeal/YY/++Ddt984Wc2zpE6f
 jPWw==
X-Gm-Message-State: AOAM5331WTA1fg1cA70AL7X/FO1tHE82c/n1Z6gXaoPztHB8AeBXpMvA
 ixcUixeBbVlH1QvtIsilKAw=
X-Google-Smtp-Source: ABdhPJwD2XP8n1aSRMGIyeJRfQ7R8q+ukTW9z6ndbeinSJuxwIHLPliSjfJ11aMk5dx5le7NNU4hxg==
X-Received: by 2002:a17:902:8b89:b029:e3:dbc0:bc4c with SMTP id
 ay9-20020a1709028b89b02900e3dbc0bc4cmr9725220plb.5.1613988965368; 
 Mon, 22 Feb 2021 02:16:05 -0800 (PST)
Received: from localhost.localdomain ([49.36.150.223])
 by smtp.gmail.com with ESMTPSA id mp20sm17229814pjb.34.2021.02.22.02.16.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 02:16:04 -0800 (PST)
From: Amrit Khera <amritkhera98@gmail.com>
To: gregkh@linuxfoundation.org, lee.jones@linaro.org,
 johannes@sipsolutions.net, mail@anirudhrb.com, arnd@arndb.de,
 amritkhera98@gmail.com, memxor@gmail.com
Subject: [PATCH v3] staging: wimax: Fix block comment style issue in stack.c
Date: Mon, 22 Feb 2021 15:45:42 +0530
Message-Id: <20210222101541.2571-1-amritkhera98@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch warning for "Block comments use
* on subsequent lines". It removes the unnecessary block comment.

Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
---
 Changes in v3:
 - Updated commit message, as suggested by Greg KH <gregkh@linuxfoundation.org>
 - Removed the whole comment, as suggested by Dan Carpenter <dan.carpenter@oracle.com>

 drivers/staging/wimax/stack.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/wimax/stack.c b/drivers/staging/wimax/stack.c
index ace24a6dfd2d..0d2e3d5f3691 100644
--- a/drivers/staging/wimax/stack.c
+++ b/drivers/staging/wimax/stack.c
@@ -55,20 +55,6 @@ MODULE_PARM_DESC(debug,
 		 "are the different debug submodules and VALUE are the "
 		 "initial debug value to set.");
 
-/*
- * Authoritative source for the RE_STATE_CHANGE attribute policy
- *
- * We don't really use it here, but /me likes to keep the definition
- * close to where the data is generated.
- */
-/*
-static const struct nla_policy wimax_gnl_re_status_change[WIMAX_GNL_ATTR_MAX + 1] = {
-	[WIMAX_GNL_STCH_STATE_OLD] = { .type = NLA_U8 },
-	[WIMAX_GNL_STCH_STATE_NEW] = { .type = NLA_U8 },
-};
-*/
-
-
 /*
  * Allocate a Report State Change message
  *
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
