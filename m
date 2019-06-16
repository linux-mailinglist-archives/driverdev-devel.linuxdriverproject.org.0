Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3336A472C7
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 05:35:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D55692040E;
	Sun, 16 Jun 2019 03:35:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m1k-akcsEum1; Sun, 16 Jun 2019 03:35:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6089220400;
	Sun, 16 Jun 2019 03:35:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A1DE61BF372
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 03:35:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8014A85B09
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 03:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4pO3k6E3wRI5 for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 03:35:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F2DAC85AE4
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 03:35:33 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id s27so3852357pgl.2
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 20:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=P+dZfWhhczsv5TTRUbrSlNE3547rfcjOFelTNKUKczI=;
 b=SJq9+4xUablqDSXRTAq0ercysLl4BrTt8Wr2v4V+ZitlX+vGwokkg1PBXq28Ib7C3F
 7jpzuvr2lhhWoruFFoSOKhrw08dLdumrTA0bEkKkIqRHT/OMx7bPHi2X40UryG+12fVM
 1O4CSlDx/MNDO0QZVaKHz0h17gc/NwMgvJF43I8bu3GWv3kxpcGUjM4f64Uv3uIrdnew
 5O9iao2Yi7etmG3zEYgrdLkyY2hlvodEQ1BRgUyxf4bR86kGSgYuWv0g1XlSX9wUTsVW
 5Afxt2Js165Qgx6FPJS2CW1Tb8k30p6bdklfqZ9iEnrYfcOU7ATHqkFcDg/XiG1HONnz
 zDdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=P+dZfWhhczsv5TTRUbrSlNE3547rfcjOFelTNKUKczI=;
 b=d2VwWrW0agnZQ+dHewaHwI79sW6TT5S7lOnWR8lmy/cLceoOEjJOknLQyORfjyxbGK
 Jg9ihacBtp8XyyLuE/uyhIMucYO+fJN/9HTT3NxSwnYV5kAFOjhiQ8+k6fWTWp9q6qb6
 MJzFIHxaKaEuUl5bZFkneIIzCb6S9FyK8RauEsAIsepD7w6rIkxBIKvJJLxKsfYXz2dW
 /4DDjL5lzWj+zP2oOHVXzVSri6WuFfcUo5D2YxGx4DNhCb9w4ybxJdMICCvM1/i87Xc5
 2c6mop5aHx2Z1HCO3cGNa3V6L64wtHLpQ7kiO8/FTe7sQKkHU2BPqGNQKk6zPwBOVxoT
 qNAg==
X-Gm-Message-State: APjAAAXY9eZxZeMludvNC0f/AG419Ru5tRu39a8NZv3pKRlcu73R/zFJ
 s4c/lvAqDPMNNaTh6a/aBjs=
X-Google-Smtp-Source: APXvYqy4PejcM3KwVGxdZDCvOpg1et1o372+G1zs9MV0Ol4tYlbZHMG7CMmACiAtZO+Q/XdE/S7bww==
X-Received: by 2002:a17:90a:480d:: with SMTP id
 a13mr18548872pjh.40.1560656133623; 
 Sat, 15 Jun 2019 20:35:33 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id g6sm7318314pgh.64.2019.06.15.20.35.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 20:35:32 -0700 (PDT)
Date: Sun, 16 Jun 2019 09:05:27 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Kimberly Brown <kimbrownkd@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Bastien Nocera <hadess@hadess.net>,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging/rtl8723bs/core/rtw_ap: Remove redundant call to memset
Message-ID: <20190616033527.GA14062@hari-Inspiron-1545>
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

rtw_zmalloc is internally doing memset . So there is no need to call memset
again.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 87b201a..df055b8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1502,8 +1502,6 @@ static int rtw_ap_set_key(
 		goto exit;
 	}
 
-	memset(psetkeyparm, 0, sizeof(struct setkey_parm));
-
 	psetkeyparm->keyid = (u8)keyid;
 	if (is_wep_enc(alg))
 		padapter->securitypriv.key_mask |= BIT(psetkeyparm->keyid);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
