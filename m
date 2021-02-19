Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE46E31FC67
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 16:51:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2046960705
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 15:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E_-ZCE3aJ8Nw for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 15:51:43 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 3F1536070F; Fri, 19 Feb 2021 15:51:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2671F606E5;
	Fri, 19 Feb 2021 15:51:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7791F1BF3C1
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 15:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7433086C1B
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 15:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kPnv4UzRq-Q9 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 15:51:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9EE1F86C19
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 15:51:13 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id c17so22701382ljn.0
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 07:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/DFMlkrlKAPVKNGX9tkzf+XGf19LwdcZfmqYome26jY=;
 b=uBS2cKH9qW9PEmRZFYHgD0+04R9BLox8kgC/Css492pBnVKv/ojUQwDUhd1D/tTVur
 33CMGsq/TNFRoRLBLu7dGJWObDrIU2radpUKhwmuJZsThdlY3LIRjtfgMzcbobw7B09q
 NAiRv5Ora91RRO7vLcxBYGer1tvxzjru+gxLXGyRPMqe3aCxB8PfRu524iFh8EniPrU+
 871izwGyROvY6O7md5RmrF11iRuPuobq9d93DiRoDFZQQSQ2Kdkfo8NJ0EEmgZ4aPGxQ
 O8n//+HyM9DatnqoDv1ErxSOF/vbb96Ora3ksXgS7lH32Jvjl3dOpY3pABWJn22ju+hq
 lPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/DFMlkrlKAPVKNGX9tkzf+XGf19LwdcZfmqYome26jY=;
 b=RaYK9ECzj1G3e634QZOYmQ1vbT2jrEdvRaAkMHbndSen8LdeBmViRkPi3AjrCLo5E5
 2wbhUx19DUHpLg5AH6lU95DqqRpFpzxmxKg6XmSlOTBPp5jWUKdElgpKcp2ms9xeqZwB
 XElJnMbHO9tWZ8Rr2HlChMgVW+GrW0nZ4YgtDlth0Ey4emaMOxYlf85KtPsDykifZaza
 oAGNPLxVdC0sEwPCi48L6890HsHWASOeNBRj5ToNHZtkdwSKIQ9u9krZUpuq4CSZhqOR
 iw+BR42xTtQKy8YKcI+mQPMFt495SkoHuufJZiHFKWZoliNitBzoVAV3BCe7UA4CqTGV
 qbsQ==
X-Gm-Message-State: AOAM533fP/SIZNLdZVtzWATCTKVSxhPx9ZEVAMG0hilQGQ0ClPTA7pPR
 L2BXZMOlGjQQrmrCkoVC6WY=
X-Google-Smtp-Source: ABdhPJw95RAgf6JuPma0lqmnaUwqpYDJfnfVpbmoTqLjPufexGNReFxhevmJ5qYAetj3hSlIzo4Hcw==
X-Received: by 2002:a19:c201:: with SMTP id l1mr5776989lfc.613.1613749871514; 
 Fri, 19 Feb 2021 07:51:11 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id v25sm1011690ljc.92.2021.02.19.07.51.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 07:51:11 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: gregkh@linuxfoundation.org, adawesomeguy222@gmail.com,
 dinghao.liu@zju.edu.cn
Subject: [PATCH v3] staging: fwserial: match alignment with open parenthesis
Date: Fri, 19 Feb 2021 18:49:17 +0300
Message-Id: <20210219154917.23388-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210219092918.GV2087@kadam>
References: <20210219092918.GV2087@kadam>
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
Cc: devel@driverdev.osuosl.org, Nikolay Kyx <knv418@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpatch.pl check:

CHECK: Alignment should match open parenthesis

in file fwserial.c

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---

Additionally some style warnings remain valid here and could be fixed by
another patch.

v2: Edited changelog, as suggested by Greg KH <gregkh@linuxfoundation.org>

v3: Moved comment about remaining warnings under the cut-off line,
as suggested by Dan Carpenter <dan.carpenter@oracle.com> 

 drivers/staging/fwserial/fwserial.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index c368082aae1a..137e97c9406c 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1318,8 +1318,8 @@ static int fwtty_break_ctl(struct tty_struct *tty, int state)
 	if (state == -1) {
 		set_bit(STOP_TX, &port->flags);
 		ret = wait_event_interruptible_timeout(port->wait_tx,
-					       !test_bit(IN_TX, &port->flags),
-					       10);
+						       !test_bit(IN_TX, &port->flags),
+						       10);
 		if (ret == 0 || ret == -ERESTARTSYS) {
 			clear_bit(STOP_TX, &port->flags);
 			fwtty_restart_tx(port);
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
