Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1782E334B9F
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 23:32:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA1F7431BB;
	Wed, 10 Mar 2021 22:32:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 865Yej3kXCMP; Wed, 10 Mar 2021 22:32:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7A37431ED;
	Wed, 10 Mar 2021 22:32:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 990A41BF29E
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 22:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9475A42FF4
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 22:27:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Q-H8ufsxyNS for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 22:27:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C5DAC42FF2
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 22:27:35 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id w11so25105995wrr.10
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 14:27:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=87k2e/RW0d520c+kOrMfvUjoXVowQB+P8Fhwo1lIzWg=;
 b=MPdn/zzkA9cSAtCRL3Zk323wBXDzpRAhZ6bKHmhjnCBn8t5yjtjnqYbNxD84jPi8uE
 gCghBbBxxMjLwLs3pspgnf4POv9fSc2v97h5U3SCvsL3kNJuurE9aly+gjmXZ+QytWoF
 bhvtdLFuFFBVKY2fX3XbES6t+ilkpUkjfTVjEKUc4ByYZX5fuJr4Cg0O9vEGNkL2THgW
 Kw6tYvNVgXfMr0KVdv5AXLaIplS4gZ79dajTXnra4jplzrQK95l+zFLgQzjFqYl6HMSr
 PFVUpQ5kDqAMENyll+e8BCvPuQncXS8xO1g+RylwNy7zPngtd65idL215ZYTf8slmNlr
 1pgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=87k2e/RW0d520c+kOrMfvUjoXVowQB+P8Fhwo1lIzWg=;
 b=c8UerDY9XWz7brsp9BxGRPK9UUEjV+5bNnSDSTKYN8uNKuHWIvXX6MCRI4GsDwHvOg
 hpKjqdKNsyKlTAjI6ZuN2Cn0PZ6+w+aHBdWIWpJM7p78cl85v0+a2k+B2egQMYGi1lKM
 +W/zjVapSA8YIy/X+H5/KNCVGNoLAZGLALtJ7lCciK3Of5ed2uSnCX7921sgngWZjFdd
 ms7ygDn/bBDX2BFXZmTXSkVMXxXVzjHJ2TRaLrP6guC0ZHBSB0ld2YOsrBcuzB8VipAl
 bQm+hG+ji2VTO5tLYIbPd36DFfvGbdi4S6P8n89ETEzFw+pU9OGCUbX2R3yqq71CcAUr
 d73A==
X-Gm-Message-State: AOAM5324uIQh3sQ8MOhynrmdALYkWpJSQLqJcVexSsYMzYbcoG0GtssH
 TIIlFO9WqEFBUb71R4JL9xC4fUK7MFo=
X-Google-Smtp-Source: ABdhPJxlGD3c8eGIZ+4Qd29Gun6laMCmO2yRYRW9dNlFLOzHNu62vhwO1y+Qz2RBFflEzIZN1Oz6kg==
X-Received: by 2002:adf:ed12:: with SMTP id a18mr5681195wro.249.1615415254202; 
 Wed, 10 Mar 2021 14:27:34 -0800 (PST)
Received: from agape.jhs ([5.171.72.165])
 by smtp.gmail.com with ESMTPSA id z82sm744157wmg.19.2021.03.10.14.27.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 14:27:33 -0800 (PST)
Date: Wed, 10 Mar 2021 23:27:31 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8723bs: align and beautify comments
Message-ID: <20210310222728.GA3246@agape.jhs>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com
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
 drivers/staging/rtl8723bs/core/rtw_ap.c | 32 ++++++++++++-------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index b6f944b37b08..6d203814260f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -719,11 +719,11 @@ static void update_hw_ht_param(struct adapter *padapter)
 
 	DBG_871X("%s\n", __func__);
 
-	/* handle A-MPDU parameter field */
-	/*
-		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
-		AMPDU_para [4:2]:Min MPDU Start Spacing
-	*/
+	/* handle A-MPDU parameter field
+	 *
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
+ * op_mode
+ * Set to 0 (HT pure) under the following conditions
+ *	  - all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
+ *	  - all STAs in the BSS are 20 MHz HT in 20 MHz BSS
+ * Set to 1 (HT non-member protection) if there may be non-HT STAs
+ *	  in both the primary and the secondary channel
+ * Set to 2 if only HT STAs are associated in BSS,
+ *	  however and at least one 20 MHz HT STA is associated
+ * Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
+ *	  (currently non-GF HT station is considered as non-HT STA also)
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
