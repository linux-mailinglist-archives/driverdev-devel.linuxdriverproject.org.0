Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EA7384BE
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 09:11:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0873D880F9;
	Fri,  7 Jun 2019 07:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oCHWfgsYchfE; Fri,  7 Jun 2019 07:11:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71CE187EB5;
	Fri,  7 Jun 2019 07:11:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15ACF1BF333
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:11:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 127BD8806D
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:11:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5C0aKyjTaMwx for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 07:11:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8C65087EB5
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 07:11:36 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id p1so471636plo.2
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 00:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Do1Qo6V2JFR310gLCbSRbPWz/dTlopxTv15lvqi6FEQ=;
 b=WeqpyBH41NwApLNKLsD2BZh26hbc4NBURMixCvyihP1LzD8qb98gJNGMxNDGVIbaF5
 B5zdf3V/HdWrPQWXBqyfRAa/VmNb4Y4NZ2cz7Oq6gql6FGb4TiRbms64BQZfWu3btCmZ
 b2g7AhuIV2Ar/t0/8IuGbAc7OmZAP6H0DBohHvo6hSkb1iR5tqoNtdldU/g9ErB2xQ5E
 yBF8OhF4XuT8qwZh+SvjUNjefjESjR6o9UAwT/lVEb2WgR6THJAqskDeydSASGXg/l99
 E4TJNyFyMMzYm7vMFN3YRlU+UCdHBoZBFtR1GHq9tuczY68/53xM0yBNAkiskL+RYgfT
 edCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Do1Qo6V2JFR310gLCbSRbPWz/dTlopxTv15lvqi6FEQ=;
 b=HfqgMGrTpsTQ/kimf9tfCAqVNjRpg7PXqysg2jGU4GzpFIILgOjxIKp6MMpPUVhkLB
 dYEc3qHfVhAW9vMx12VawXWb6dyrd07UKg80YugGP8EmPHIF8jKCwDpN4krRK4/SrdmQ
 3uacgycBmivEzYd+ldaZGx2augbP4NljSjXhiT0mVjZHSImyH10BoUkPz3fUJyQBFSvP
 wOsydQhXq6x3oVKkVlfc9GygtwWkYQc3TYsBhsyOTXDovzzaMkyV9Wvl0uE4H+PfhZQw
 5e2+pHRb/O2gjOlCf7oRWbJRMJd57/KHOiVlYSAGXUCDZqgXAgaOxU6AiUOyd9d4uJNZ
 GNMQ==
X-Gm-Message-State: APjAAAUVYnY3RYwqZUzljwE4JygLb5rPVWwlsrQRrQ7T4IUO53Hafift
 XeB3CXTSbTtXe3csZnGyFBE=
X-Google-Smtp-Source: APXvYqxby4r+nDLbndZ7yeDA+uIOOjaJUNlZ1yew/Iy0Q9YLzfjds/0YrgrCF+z21xRpwPaYFnZSeg==
X-Received: by 2002:a17:902:a5ca:: with SMTP id
 t10mr50447160plq.98.1559891496143; 
 Fri, 07 Jun 2019 00:11:36 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id i5sm1299667pfk.49.2019.06.07.00.11.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 00:11:35 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, straube.linux@gmail.com,
 benniciemanuel78@gmail.com, hardiksingh.k@gmail.com
Subject: [PATCH] staging: rtl8723bs: core: rtw_mlme_ext.c: Remove unused
 variables
Date: Fri,  7 Jun 2019 12:41:23 +0530
Message-Id: <20190607071123.28193-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove variables that are declared and assigned values but not otherwise
used.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 65e8cba7feba..5f0b20038a28 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -6771,10 +6771,6 @@ int rtw_get_ch_setting_union(struct adapter *adapter, u8 *ch, u8 *bw, u8 *offset
 {
 	struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
 	struct adapter *iface;
-	struct mlme_ext_priv *mlmeext;
-	u8 ch_ret = 0;
-	u8 bw_ret = CHANNEL_WIDTH_20;
-	u8 offset_ret = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 
 	if (ch)
 		*ch = 0;
@@ -6784,15 +6780,10 @@ int rtw_get_ch_setting_union(struct adapter *adapter, u8 *ch, u8 *bw, u8 *offset
 		*offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 
 	iface = dvobj->padapters;
-	mlmeext = &iface->mlmeextpriv;
 
 	if (!check_fwstate(&iface->mlmepriv, _FW_LINKED|_FW_UNDER_LINKING))
 		return 0;
 
-	ch_ret = mlmeext->cur_channel;
-	bw_ret = mlmeext->cur_bwmode;
-	offset_ret = mlmeext->cur_ch_offset;
-
 	return 1;
 }
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
