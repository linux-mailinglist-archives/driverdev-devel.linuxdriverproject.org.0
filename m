Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1702EB642F
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 15:17:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ED3342152A;
	Wed, 18 Sep 2019 13:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lZ-02vVjkYcA; Wed, 18 Sep 2019 13:17:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5FD9C2036C;
	Wed, 18 Sep 2019 13:17:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC8631BF30D
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 13:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A911E20361
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 13:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BAKowBsJYG-p for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 13:17:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 811B52034B
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 13:17:05 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i1so4456508pfa.6
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 06:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=bheKpMhi6WMtyBjNwbfCg8EdkhQNlJmf+07VFEf1QwQ=;
 b=TSP1ZwdhcEdxitzLsrYK71aOMFSd5nqd7fuEGDgiR87Gl+avQkjl4dxAcwaLB4MbWS
 nU6HPk0ZB7kgSQ4vaI0yp21jFztXCSPUhefw80XFmAUdBcodXQ3WrqO2gpltcNM6v1WQ
 y4FOhIDCEAmYO+PwSrYXug2OK/3fCbiOZRelQbxKV3OmuNsmf9uZP49FO3ksHZxpwKuv
 J23ZvbERZTDsH7Gzg9LVPiffnppb6TSp5rDxEehl1bg/8MQ4fcb5Itf9GQVUhRRpWxMh
 gFoXAwdmVQ01BdOk3goZWYCbBZ05Pph2IPhusMm3ANzLAzD7IgGq+6vpk1nfHrw6ItOy
 3Xmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bheKpMhi6WMtyBjNwbfCg8EdkhQNlJmf+07VFEf1QwQ=;
 b=YmAa415CW9BMEcKDJfd3BVcOOFlb3QCFYkajNCm0YbO77vT6YSS3KEQuEuavven+fm
 ypjSMoU0JwZgDxrEc5jNdbgmSIlO4yBgjKp3VtnSC5HkWZEZrYU6n1lhl+KiOKLf3Q73
 kND0MAjlkSCsNP+Aqfcgl6RKe1yck/+yGpbjc6n7vxah9hlXmFuby7doKP1YKK5yHo+E
 Y0CbWm/OqDKWIgj0FWBe76oHcqUZXgkrq1Vf14te6fXhtxkRiZjCRh3+MAK9eeyAQliI
 VRMJXyxkkazsyOx16VfbbREFBmJUnk6iI53Gdq52Q9xYtvvYQt08dijL2+DzgZL9uKf4
 b0hQ==
X-Gm-Message-State: APjAAAXvQJVFzjRGnGYX4dfQ8+89mbdYr6MW/OrgQmn3YzZLUZzXKbjb
 eNPO3KgImZxHzjW7U8Rpq84=
X-Google-Smtp-Source: APXvYqyZrDao4r5FKof4oYHwX/mjM7CuL9d81Rgp4TOZtDtAuJ/rwYo1rqOlc910UqKscEGswA1KYg==
X-Received: by 2002:a62:1d12:: with SMTP id d18mr4160274pfd.53.1568812624938; 
 Wed, 18 Sep 2019 06:17:04 -0700 (PDT)
Received: from localhost.localdomain
 ([2401:4900:1951:77d6:2136:ec81:40ab:9b7b])
 by smtp.gmail.com with ESMTPSA id u18sm4672426pge.69.2019.09.18.06.17.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 18 Sep 2019 06:17:04 -0700 (PDT)
From: Aliasgar Surti <aliasgar.surti500@gmail.com>
X-Google-Original-From: Aliasgar Surti
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] drivers:staging:qlge: Removed unnecessary variable
Date: Wed, 18 Sep 2019 18:46:36 +0530
Message-Id: <1568812596-25926-1-git-send-email-aliasgar.surti500@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Aliasgar Surti <aliasgar.surti500@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Aliasgar Surti <aliasgar.surti500@gmail.com>

coccicheck reported warning for unnecessary variable used.
This patch fixes the same by removing the variable and
returning value directly.

Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 31389ab..5599525 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -389,7 +389,6 @@ static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
 
 static int ql_get_ets_regs(struct ql_adapter *qdev, u32 *buf)
 {
-	int status = 0;
 	int i;
 
 	for (i = 0; i < 8; i++, buf++) {
@@ -402,7 +401,7 @@ static int ql_get_ets_regs(struct ql_adapter *qdev, u32 *buf)
 		*buf = ql_read32(qdev, CNA_ETS);
 	}
 
-	return status;
+	return 0;
 }
 
 static void ql_get_intr_states(struct ql_adapter *qdev, u32 *buf)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
