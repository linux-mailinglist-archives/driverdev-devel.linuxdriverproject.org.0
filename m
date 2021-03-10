Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDA83341A6
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 16:37:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A32A084396;
	Wed, 10 Mar 2021 15:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s47shdzQpT0q; Wed, 10 Mar 2021 15:37:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3DFF842B6;
	Wed, 10 Mar 2021 15:37:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5ED481BF873
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 15:37:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4DDC64C5CF
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 15:37:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vBztXRHJtEpu for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 15:37:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68FAE49771
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 15:37:26 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id bd6so28637934edb.10
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 07:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=apyUMBZZE0k4eMvODh0ON7nsxjy7HSDAUMAXl0tkWDo=;
 b=K05yxDPuVCoK64qGr2BTqW6abWbLFv0gvRaqNyUvHjh79JCiZ1MD7Pu6fwLDjVdIt0
 hBXh5yrhChxLJWT8cnMG11j+/kfeqdYIf3+SglwKEO35/wGsITOpGinx8ZV30TMQxkr7
 wN6RLpJBSP1vPQVBNMS9VHC6Df8xpZf6cAfEFVuwX0iQsYpSqg4rQc/DgWuSz2wbRjBj
 dSqGuqgHRaMXiZzdwWucBrvOWuzWRi82CHUoeB/P6Wx2yjzlDGbjx5l25uThIl7a+W4e
 ZCMV4NS2X8zMWXouzSZ6K7lxW4xKPws146G+0lvu1Eivky3pZtACnx3m/Fk54+2uhjYn
 IHdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=apyUMBZZE0k4eMvODh0ON7nsxjy7HSDAUMAXl0tkWDo=;
 b=aoZY5G+l7hvCjX41KJlsWTohyQNHhmeVgSewsQHLh/cBuTVS/+arXwxRx7GaSZZqmF
 uqS+B0jjcOI38ybkn4xEhh0hj2ac9ytIdkapWCqb1NHEIAQJfFO9dmdbJty3sDJO1gyv
 BGizr4oTV1VHlqMisGtNjtov8ymPsw0dEbMbXsUcs3drKrb1sbXYzrwnFwE+JJ0dYWYr
 9ucFcGEjr0qCfFqbX1ujYMyphC+HDGZahTBjnMGi+51juaaOB6s+N/heCMKwepmNv6sF
 tTfowTqun83Gs6TiSfLh5UxwMgWrENvh3vzZrym1tqZGINDa6TLXfr5a6oDr1oVcoZPl
 9J7Q==
X-Gm-Message-State: AOAM530VvQzHyyn3OJ792VEJ/E0SvCWL4j08rNHf6mmeFq4fcvGD/RRg
 5mvsn7zTYF6h3qIaaMupw9Y=
X-Google-Smtp-Source: ABdhPJznorbhhqtXwiCFqJVJaEElQN7crQXZjkF8flPJfMkUyMzbRDsgVnigw6af+kuGN97l68FqRQ==
X-Received: by 2002:aa7:cdcf:: with SMTP id h15mr3962516edw.28.1615390644585; 
 Wed, 10 Mar 2021 07:37:24 -0800 (PST)
Received: from agape.jhs ([151.47.162.135])
 by smtp.gmail.com with ESMTPSA id v8sm10951448edq.76.2021.03.10.07.37.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 07:37:24 -0800 (PST)
Date: Wed, 10 Mar 2021 16:37:21 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: align comments
Message-ID: <20210310153717.GA5741@agape.jhs>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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

fix the following checkpatch warnings:

WARNING: Block comments use * on subsequent lines
+	/*
+		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
--
WARNING: Block comments use * on subsequent lines
+/*
+op_mode

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 28 ++++++++++++-------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index b6f944b37b08..3a0e4f64466a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -721,9 +721,9 @@ static void update_hw_ht_param(struct adapter *padapter)
 
 	/* handle A-MPDU parameter field */
 	/*
-		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
-		AMPDU_para [4:2]:Min MPDU Start Spacing
-	*/
+	 *	AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
+	 *	AMPDU_para [4:2]:Min MPDU Start Spacing
+	 */
 	max_AMPDU_len = pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x03;
 
 	min_MPDU_spacing = (
@@ -1815,17 +1815,17 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 }
 
 /*
-op_mode
-Set to 0 (HT pure) under the following conditions
-	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
-	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
-Set to 1 (HT non-member protection) if there may be non-HT STAs
-	in both the primary and the secondary channel
-Set to 2 if only HT STAs are associated in BSS,
-	however and at least one 20 MHz HT STA is associated
-Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
-	(currently non-GF HT station is considered as non-HT STA also)
-*/
+ *op_mode
+ *Set to 0 (HT pure) under the following conditions
+ *	 - all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
+ *	 - all STAs in the BSS are 20 MHz HT in 20 MHz BSS
+ *Set to 1 (HT non-member protection) if there may be non-HT STAs
+ *	 in both the primary and the secondary channel
+ *Set to 2 if only HT STAs are associated in BSS,
+ *	 however and at least one 20 MHz HT STA is associated
+ *Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
+ *	 (currently non-GF HT station is considered as non-HT STA also)
+ */
 static int rtw_ht_operation_update(struct adapter *padapter)
 {
 	u16 cur_op_mode, new_op_mode;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
