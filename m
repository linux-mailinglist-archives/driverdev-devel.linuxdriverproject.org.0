Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6928F224A9E
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 12:31:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 60BFA2051C;
	Sat, 18 Jul 2020 10:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fkElCFIZ8v+T; Sat, 18 Jul 2020 10:31:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8892120498;
	Sat, 18 Jul 2020 10:31:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 379011BF5E9
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 10:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 337D320498
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 10:31:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C+2FikR1iEBN for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 10:31:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 7BFDE20449
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 10:31:34 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id e8so7919700pgc.5
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 03:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/8w1hUmAKLCqgC1Q6ZP9P8RuBo6OaxEVOjtKeU5FNxg=;
 b=aZoWONeyN7xDbuCqgzZgVq2tCmErtKP0zODLYZzHi0Qas0Woh3Z0de4ROa5SLtp5tB
 Ra7B9cJlFKYXoD+B1oW+u05itqIFxXeNpdb3QWakumcX6ALGqVKOxvPtyVtUMoj20suL
 9u9z9EMIhPLsm1+i0Ao9JhlLBK4cIugz87uKQaUe8QayAEDXqdDpJjEQZqtjCyTXud5V
 v7OsfnM//uyle9FXqDv9EBr3FP80VTG1cggi5073p0KTlsT68zURcsp8SmH2ZEsMrAgQ
 OJuNEN+xvgjBmdHT0DdHihkw9spwHherzjGTZr4v6atj1/QufjKeO5F7dvIKBgzr8cXI
 HHAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/8w1hUmAKLCqgC1Q6ZP9P8RuBo6OaxEVOjtKeU5FNxg=;
 b=DnWXHFj6tVKd/7FIvUXxmDHADjfqP5fXVEhND7/HjWOI/nKs8YcSwccCgZ0IFC1ptM
 wkfyDVWoKyckL5YgOua/KPXKjWbg2r6SMIh9nHKA/eLBPPFSFab04+Qglz/udjDU8M78
 Ef2JYJSkO6abvreCy41DkqYgVUxv9JsLG/g59UIbrUUJCcXEOilb8uyz0JY+gLGOuig3
 eOPjtRmfffcQ5gDFUnOB+kqw3n4L33RpqgeE6TEECTG4fCJJNIBv+1bxr5d4v8ZdvUrB
 q/qWeHtlRgaznrN/SERd1FhgbguXeJlE5TFJDfrG1TCCNMJ4mKXwUMeOEbtDwdALoFsp
 K88Q==
X-Gm-Message-State: AOAM531sL0HPwjxiuBXELCmP3Xd6qhku/HfrZ+h4odnCc4SRy/pvKwUj
 TGvnXTXZrh/4KBo9WYwO0Q==
X-Google-Smtp-Source: ABdhPJxtQLDsHd6/GmwVM1lEks+dSoB65AelxK3USCvo77vRW7iHRqlshIKyPNQsSrbEvzJAMx+PwQ==
X-Received: by 2002:a63:8f08:: with SMTP id n8mr12367712pgd.9.1595068293995;
 Sat, 18 Jul 2020 03:31:33 -0700 (PDT)
Received: from blackbox.localdomain ([112.133.248.228])
 by smtp.googlemail.com with ESMTPSA id e5sm5194540pjy.26.2020.07.18.03.31.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jul 2020 03:31:33 -0700 (PDT)
From: Anoop1507 <anoop.skumar1507@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8188eu: core: Fix coding style issue
Date: Sat, 18 Jul 2020 16:01:25 +0530
Message-Id: <20200718103125.62528-1-anoop.skumar1507@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, Anoop S <anoop.skumar1507@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Anoop S <anoop.skumar1507@gmail.com>

This fixes the following checkpatch.pl warning
WARNING: Prefer using '"%s...", __func__' to using 'rtw_tkip_decrypt', this function's name, in a string.

Signed-off-by: Anoop S <anoop.skumar1507@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 435c0fbec54a..ece5291ce7c0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -718,7 +718,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				res = _FAIL;
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_decrypt: stainfo==NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n",__func__));
 			res = _FAIL;
 		}
 	}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
