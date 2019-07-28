Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2556677F6C
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jul 2019 14:22:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A433A884DB;
	Sun, 28 Jul 2019 12:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4W-H6HGji-HC; Sun, 28 Jul 2019 12:22:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BBA288227;
	Sun, 28 Jul 2019 12:22:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C4401BF35A
 for <devel@linuxdriverproject.org>; Sun, 28 Jul 2019 12:22:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 26AA08842A
 for <devel@linuxdriverproject.org>; Sun, 28 Jul 2019 12:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4MzMg5ucO2jt for <devel@linuxdriverproject.org>;
 Sun, 28 Jul 2019 12:22:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CA4E188227
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2019 12:22:03 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id c2so26407291plz.13
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2019 05:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=b29LihJdPjKD5ZSci7TYZtxlcxyajF7XKhxSumAdqsk=;
 b=lQsswQ+VTxiKE2mi2suSwrl3kHRweSwFJAp4PUWPtA58n2StuuWkT/uqvjROInfB6t
 EOg6BrHTZIeeMinek8H4nbQ6owsClvUR+9EzIRXI+rqSNWQBeM6bvuMnASOpQKk36pzR
 uCWMOoIoNvEfupONYRN+J7yFbQKL0eUrWpj3Sg+RLqNGfSMQrnxkbUgD6yncZLzGOKaz
 qmE+IVEknkNg3wBef1/GIfe9ISziLL+GmHGBT9jVDmJRU62Y0CoevS2CBBl+ZPo/diw+
 KywDCFm96yBmF6h4GrGqn5xnzAkCPIPyIg3NivfKNbs2Gm42dgWeDboBltN/qbVDLG6z
 kVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=b29LihJdPjKD5ZSci7TYZtxlcxyajF7XKhxSumAdqsk=;
 b=ZDz8NavJzCNvUxv4OLQo+8A76kTZ/dBIBQLXtJiKH1qSETXV+MK+5scaBA9OH1WWLt
 dhI2N3O4wA0VOrjWw6SbafxUJ9zBMVSsLtDWefJDYokkqxYJYjTetVBob2Npu0Jf+IwC
 hWRNuKSr5WMmOJrWMm9b7121QB+yJ+WIQJ8XIew9m2BW10eSHl5VclzcuwUsYIYxAfeX
 bLG+naBMqjZdNeL105cCgT1t9ImzeiyynHRtpqRl1cm1V0tP17CrXpadi7kFoqfG6qbw
 WGB3mCxVlczeCMOwLXzP69cSAA7THZZUW/THItxxuInmzom2zGBeMC6SUfkbWV1SJnTh
 fO4w==
X-Gm-Message-State: APjAAAX9+zmU4lfRlgIeyZ9EEr5kpoksT6FsDFQgBqcQYzfFDeEZ3c7J
 vvDS7tPvQDXYnPtuSWCrIb8=
X-Google-Smtp-Source: APXvYqylSlyTZUGnoZbekXb7h4FARNgsi6E2ZcMv7MKiX1mfSFdpWJwNwUxfsXIHzi25zbjzaz3Rpg==
X-Received: by 2002:a17:902:76c6:: with SMTP id
 j6mr104842003plt.102.1564316523363; 
 Sun, 28 Jul 2019 05:22:03 -0700 (PDT)
Received: from saurav ([219.91.254.41])
 by smtp.gmail.com with ESMTPSA id r2sm76203600pfl.67.2019.07.28.05.22.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 05:22:03 -0700 (PDT)
Date: Sun, 28 Jul 2019 17:51:57 +0530
From: Saurav-Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, devel@driverdev.osuosl.org;,
 linux-kernel@vger.kernel.org
Subject: [PATCH] RTWAP:Fixed Coding function and style issues
Message-ID: <20190728122153.GA11748@saurav>
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
Cc: saurav.girepunje@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RTWAP:Fixed Coding function and style issues
      Removed Unnecessary parentheses

Signed-off-by: Saurav-Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index c98b9c0d79fe..2c443d1b28b2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -34,7 +34,7 @@ void init_mlme_ap_info(struct adapter *padapter)
 void free_mlme_ap_info(struct adapter *padapter)
 {
 	struct sta_info *psta = NULL;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
