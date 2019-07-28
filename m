Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FFF77F2D
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jul 2019 13:19:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9637F884C4;
	Sun, 28 Jul 2019 11:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dOnhhWlGLG6u; Sun, 28 Jul 2019 11:19:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56EA888250;
	Sun, 28 Jul 2019 11:19:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 533B21BF31D
 for <devel@linuxdriverproject.org>; Sun, 28 Jul 2019 11:19:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5034388250
 for <devel@linuxdriverproject.org>; Sun, 28 Jul 2019 11:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UZ6gx3FbsODM for <devel@linuxdriverproject.org>;
 Sun, 28 Jul 2019 11:19:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3575A8824F
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2019 11:19:28 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id f25so26810452pgv.10
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2019 04:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=B6TX782w2nBGeMiqESzq7NZYdapmEI2iIuDzWwvD73U=;
 b=MXZ+E676Ntw3aSNHqfnVD+vV93kAQFhnjN7v5+bVIai1HEiJ9IdyRrMQj6g7+npQTL
 To7doQ5Skx9J7FxAUX7BdrvD5EX+ReNYmjeMpEDQ/APqAaTMJNpsRVoid+drvHj7oGwh
 BCpSC0QOV1+0uqSypplKpllUII17eXJkASlpUYFSKjRx3cv67eog3bwtAw7ma1klYER0
 HPJZQzppsp/9xG3gC7dC8/vcStTfOt7PI+fAkd+dCRl3/5HqyJYoHKyY+JYk4DxO4k9q
 MqZxpgHVpO4+pTOlDCe5T/Wfca6MvRt2Zmx1HqWSxoYQtAgw7BQj8A2OdTAzZUAEtehM
 xNWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=B6TX782w2nBGeMiqESzq7NZYdapmEI2iIuDzWwvD73U=;
 b=LfAevK8JVO+24FEaNbgvLbJ2ks90sYaW+/6RgAeStTKimTkMuJbPOHoigbtqmo4hMl
 CubX9PZqApGgl5pPqmzP87hMq+GBfbEMpQ3RlKMANobfkzE73gCchRLgc4VOmU36j/S9
 VFCjB95GRg78HbWD5d56Xnk4WAIt6SE46DZJuXU/S3eB4V3+JoyTT5sU9kOJWUumkXoP
 Ko4BxLJjA6Y7Ro7HAJ+w8GeK9qu63K4NzryxL301GXUEyxDCKmR65n7Y5PnxIwHIEXD+
 8INi6Hg+YOkpKimegY9U+CR5CFOzCvBP1DhDfe3neH7D8IMyPGQ5uApgt7VuIWGiAOzs
 SPug==
X-Gm-Message-State: APjAAAVEf4Vcj7+Mjjhe8Xb4/c2QkRSThf9lmo36jqjGSqGjHcbI3Uwc
 lyo31wqxdbzS2YMzZWbBLuY=
X-Google-Smtp-Source: APXvYqxxfgP0hAWjsHS3mvtNIYhn4ZiY0lxJaD8PKrUgtK38LgU7uiI2Z+xjPs4VKbPFdF41titAYg==
X-Received: by 2002:a65:52c5:: with SMTP id z5mr85384058pgp.118.1564312767754; 
 Sun, 28 Jul 2019 04:19:27 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id s11sm56220185pgv.13.2019.07.28.04.19.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Jul 2019 04:19:26 -0700 (PDT)
Date: Sun, 28 Jul 2019 16:49:18 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 Kimberly Brown <kimbrownkd@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net,
 hdegoede@redhat.com
Subject: [PATCH] staging: rtl8723bs: core: Remove unneeded extern WFD_OUI
Message-ID: <20190728111918.GA24278@hari-Inspiron-1545>
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

Remove unneeded extern variable "extern unsigned char WFD_OUI"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 7bd5c61..2bb20762 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -13,7 +13,6 @@ extern unsigned char RTW_WPA_OUI[];
 extern unsigned char WMM_OUI[];
 extern unsigned char WPS_OUI[];
 extern unsigned char P2P_OUI[];
-extern unsigned char WFD_OUI[];
 
 void init_mlme_ap_info(struct adapter *padapter)
 {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
