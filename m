Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21380E729
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 18:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E1BA863A3;
	Mon, 29 Apr 2019 16:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkTBUfrAZARn; Mon, 29 Apr 2019 16:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D625F863D5;
	Mon, 29 Apr 2019 16:01:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7CFA61BF588
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 16:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 79B3E85A96
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 16:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o5bd9Y9pJOoW for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 16:01:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC1AD85A88
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 16:01:23 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id n8so5262719plp.10
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 09:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rPf+Jg9gkUTB3UU7vbrJ21JITxZ048x6tuDHzRVFfOM=;
 b=IBR54Z9leOSJOoz0krDwbSwvuKCEsLcMS1x+CJIriQ/b+KZcKHLbDTSd6mXnP8BmDK
 8IyMS+KsjdDurLlCaV5yzpzFMprUn2tSgjZRr3Re3TeEiKJcgzeNVZ7dsMH38LnD1YDx
 x8yhr7ZPYa4Gxv2PR4w42VlN8ylCY0ExzCrRYK+gINKwXYkgYnlCK9fiwsGE1pXhXBh9
 WjlvGEhOrnZ7Heu0x5VkBbTcv99egOXqwxucL4wyACyMSrZ2Bp/ZkBiPtZYKdVQXfEVr
 4EYhtppU/D8reOG9JrzzUp8alISqqKB/8EXQShpnO5n0pALSpQQlca1J5MQW0nbcrPt3
 VPiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rPf+Jg9gkUTB3UU7vbrJ21JITxZ048x6tuDHzRVFfOM=;
 b=jhrWOuvSUwzcXp71wxNIRiKvXoWIEqHTwtigjH5HiH6jJVkj2ZM1lX43wuDsxfFo8S
 tOfzc3Emnd5SYkNrtYCBj8oV0fZT5AU1flHblSNbGfVYx4be7ZfjnxsoBbMLprMDsKVX
 ojyK/T6ji6nxlGystffcoOILFyi3N2acTwFieXA+DWmaRUpszLVBDwdOZ6QdYopU4nsE
 8F5nTf3/8VtFUd7FFRi5AMVPzQcvQ9yHKSLBQxPF+TICQFH8c1bI3Qn5sGJUN3Jaj11z
 5JXxbt6/Azm1U0Ur9P4lDru/GWeqkIYXuftPUnpj/OqBftlTKuy0hQcIBGoVXGQ5ryOy
 Ub3A==
X-Gm-Message-State: APjAAAUe/pfk5pXVDthebvPa/o/BaEYqf0dwDD/Nq6E3SWWZIWsRlClJ
 M1hXwjFOVisCaOVMUrGiM/Y=
X-Google-Smtp-Source: APXvYqwZ+NE3AuT1tjwRUxhJET5X/ePxcDnTFesOqzdpklno+d+pvi8HaUHfAGZHALy4yPR+GM4rFQ==
X-Received: by 2002:a17:902:8f88:: with SMTP id
 z8mr56305861plo.54.1556553683204; 
 Mon, 29 Apr 2019 09:01:23 -0700 (PDT)
Received: from localhost.localdomain ([49.206.11.135])
 by smtp.gmail.com with ESMTPSA id j20sm48034979pfn.84.2019.04.29.09.01.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 09:01:22 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: gregkh@linuxfoundation.org, straube.linux@gmail.com, quytelda@tamalin.org,
 colin.king@canonical.com, hdegoede@redhat.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4] staging: rtl8723bs: Fix checkpatch.pl warnings
Date: Mon, 29 Apr 2019 21:30:45 +0530
Message-Id: <20190429160045.13110-1-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190426131249.16198-1-bnvandana@gmail.com>
References: <20190426131249.16198-1-bnvandana@gmail.com>
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
Cc: Vandana BN <bnvandana@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch resolves coding style brace warning and constant on right warning.
WARNING: Comparisons should place the constant on the right side of the test
WARNING: braces {} are not necessary for single statement blocks
CHECK: Comparison to NULL could be written "!pbuf"

Signed-off-by: Vandana BN <bnvandana@gmail.com>
------
 v2- Edited commit message and subject
 v3- Edited commit message
 v4- changed NULL check to use !pbuf
------
---
 drivers/staging/rtl8723bs/core/rtw_debug.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_debug.c b/drivers/staging/rtl8723bs/core/rtw_debug.c
index 0de1e12a676e..9f8446ccf771 100644
--- a/drivers/staging/rtl8723bs/core/rtw_debug.c
+++ b/drivers/staging/rtl8723bs/core/rtw_debug.c
@@ -1425,9 +1425,8 @@ int proc_get_btcoex_info(struct seq_file *m, void *v)
 	padapter = (struct adapter *)rtw_netdev_priv(dev);
 
 	pbuf = rtw_zmalloc(bufsize);
-	if (NULL == pbuf) {
+	if (!pbuf)
 		return -ENOMEM;
-	}
 
 	rtw_btcoex_DisplayBtCoexInfo(padapter, pbuf, bufsize);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
