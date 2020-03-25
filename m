Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB2719333D
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 23:01:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 620028820A;
	Wed, 25 Mar 2020 22:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Df6A3jUoawNA; Wed, 25 Mar 2020 22:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BC72787E6E;
	Wed, 25 Mar 2020 22:01:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA2A61BF3B1
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 22:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A456686C59
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 22:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p4TR1POaJkzD for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 22:01:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DAF9D86C39
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 22:01:42 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id u10so5410852wro.7
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 15:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K21ukMg2rSrNdWu0B2OE9Pp6GqyZFADsw1I/2vin0js=;
 b=LTcpa9AH2U87sh+x8mjTD9zy5yhGvEAkoGFgATTjGhqIBrLRQApxp4ieCmAG+RQyt7
 DTSOaztlg4f30UsNAF+G0M4lE/RpfdqeZGlgsFVH7l2gHeKTw95Z6g3alnbEAhMhwysl
 50D03Z7uE/On28h3CNk1ezIr3QWJURibdBcx/BhFNwOU1lwbU71dehjuZU0NOgJmFtmX
 UE40E3PtwKsAEj0j0PtSkLz0Scs4ZUki4SuWmeltmD31S9OlKaB6rdvwUbAj4MR4ydUB
 UgHJ+SDIjSc9k+5bjmHBvXVbYqx+IAqF7Zi0EW1irVFJsC3ip6KZJ6jazcKD/BAII5Mh
 uC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K21ukMg2rSrNdWu0B2OE9Pp6GqyZFADsw1I/2vin0js=;
 b=annENGz6RbKKR3MKfhx/4JVDMShs51JQQqt3PrMjXr12Jo8MVrZswIrOfMBP9V3gMU
 Ro0zl6Dbxq777lx8yMs7ow0jpFPGCg1njJw31P0FDUZn2bpAhG1eVqvxWWBvVgsTe/as
 j3xXHtxUwGeFrnr5sIhodimwtTOqe+VsCQRdy3KWb9yJgrIsSDcYZDvHln/J3qCQzzXq
 ORx50LZsV7OmBXp20zr4LuOt+/4Ft464AKTB/6S9xE5QA3wV0xjbi9nt6jLulq/aOgOE
 yBhhy8dsXDg5XGrScc0NUd8XAy5DoLTef0ZCRc1rXJepH8w4s4nX5aGy3td7LOF3/yF6
 dD2g==
X-Gm-Message-State: ANhLgQ2hXt8LQ0FYuoFkwc8levlKEO6QEpfSFexlytLfSvx5oU0NO4VA
 kXMhG1Y7D8hmo8VEmywu4us=
X-Google-Smtp-Source: ADFU+vv/fvbyUFtUVKnn+VBzvNOvnYxDeCpTO3pOrA0paN4gZFnT0GqdHLFuizR6+NNWjfSMpsVD2Q==
X-Received: by 2002:a5d:6109:: with SMTP id v9mr5849821wrt.203.1585173701248; 
 Wed, 25 Mar 2020 15:01:41 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-140-180.002.204.pools.vodafone-ip.de. [2.204.140.180])
 by smtp.gmail.com with ESMTPSA id u8sm403538wrn.69.2020.03.25.15.01.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 15:01:40 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: cleanup long line in odm.c
Date: Wed, 25 Mar 2020 22:59:40 +0100
Message-Id: <20200325215940.9225-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup line over 80 characters by removing unnecessary parentheses.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/odm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index a6eb9798b6f8..ed1a6ea0eecf 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -590,7 +590,7 @@ void odm_CCKPacketDetectionThresh(struct odm_dm_struct *pDM_Odm)
 	if (pDM_Odm->bLinked) {
 		if (pDM_Odm->RSSI_Min > 25) {
 			CurCCK_CCAThres = 0xcd;
-		} else if ((pDM_Odm->RSSI_Min <= 25) && (pDM_Odm->RSSI_Min > 10)) {
+		} else if (pDM_Odm->RSSI_Min <= 25 && pDM_Odm->RSSI_Min > 10) {
 			CurCCK_CCAThres = 0x83;
 		} else {
 			if (FalseAlmCnt->Cnt_Cck_fail > 1000)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
