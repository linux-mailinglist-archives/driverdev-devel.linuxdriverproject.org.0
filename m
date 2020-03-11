Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4603180D7A
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 02:26:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F81387D41;
	Wed, 11 Mar 2020 01:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F57Dq6xh98IU; Wed, 11 Mar 2020 01:26:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D1385878EA;
	Wed, 11 Mar 2020 01:26:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3931E1BF5A4
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 01:26:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 347BE878EA
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 01:26:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PWbCy2H0RlwJ for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 01:26:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B2A6F878BB
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 01:26:50 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id f198so551402qke.11
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 18:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UCtkFFyzWvdtpD3qcxemfQRR6JkYt3csnpIWX56p83w=;
 b=QSWmNcSQr6Dkhtf0ataFvPH3lyriSK8dTS69dj+OPApW2rIc2GcT04dSBSF5V1x1wd
 ujvfnHj3wXmHGCeWq5zbM73TusV6OlJgMKTR17sNw+ve1yjX52vdIMJ0azaORdle1BWc
 1Nk2yxDdV7mdUGXgrhudtxPNLhJpXu1gX/o1qo9UOJ69fIleQcAvt1jZHpgQADZusMcG
 6uLVoY8QgxNNN28Mq2O1VDi9A3nhNSTfBZq1PF1ph/MAR/+U7pwooP33eubml8nSASax
 KOaUtsv+z3iepBlPQT6AHsiNdcOWH1Z++3W2998AImEWZkENL/9QbaJcvOYR3Y+PeQeH
 SV3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UCtkFFyzWvdtpD3qcxemfQRR6JkYt3csnpIWX56p83w=;
 b=kUf1vnNboQe4B3ZRSYOhEm9awMgZKDwOh+d0g0FJrlapjqe5e/tfdBPPayX94rAaTL
 l3tcNdi4KYfAejbu41RI1HspMeIbnbGORTI8uGuIwg1NTlWuH09rAW78oNuDHJXIg4nt
 H+pocUArNQOig3JDPv7uinxY+DZNL3bDSPMx9Gkmfe+jqri87KppMeRspmXouLcrxFLE
 bFuX1xjrnMmTbzKfZW+dRD61II14+T4Gxzonbp1okL3e8GIUF/9iLaP7Vg5criAdkDH5
 ACMVAqUlHa7+LogPpxOWdHIR0OrbPPNWXkK03Q7RukASZxbfRXLT2yzJJuj9jM0ljw7y
 Nc8A==
X-Gm-Message-State: ANhLgQ3zk4IqNzNqxtU6RpMhKZqC2INu8+fGbHOTlffqplYaYinIC1UG
 BaJGfHs2394chphZ4dpBozI=
X-Google-Smtp-Source: ADFU+vs80U7uCDpKBrjfjFYBr8EBQ2qV/rC3KPBixrmZP2xvYFRmkKkdFVIp35YjnPAtklWA7Ils0A==
X-Received: by 2002:a05:620a:1644:: with SMTP id
 c4mr572113qko.315.1583890009650; 
 Tue, 10 Mar 2020 18:26:49 -0700 (PDT)
Received: from 171489447db2.ic.unicamp.br
 (wifi-177-220-84-20.wifi.ic.unicamp.br. [177.220.84.20])
 by smtp.gmail.com with ESMTPSA id k202sm12193192qke.134.2020.03.10.18.26.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 18:26:48 -0700 (PDT)
From: Andre Pinto <andrealmeidap1996@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH] staging: rtl8188eu: fix typo s/informations/information
Date: Wed, 11 Mar 2020 01:26:38 +0000
Message-Id: <20200311012638.18889-1-andrealmeidap1996@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch check: 'informations' may be misspelled - perhaps
'information'? in rtw_mlme_ext.c:1151.

Signed-off-by: Andre Pinto <andrealmeidap1996@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 36841d20c..04897cd48 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1151,7 +1151,7 @@ static void issue_assocreq(struct adapter *padapter)
 				if (!padapter->registrypriv.wifi_spec) {
 					/* Commented by Kurt 20110629 */
 					/* In some older APs, WPS handshake */
-					/* would be fail if we append vender extensions informations to AP */
+					/* would be fail if we append vender extensions information to AP */
 					if (!memcmp(pIE->data, WPS_OUI, 4))
 						pIE->Length = 14;
 				}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
