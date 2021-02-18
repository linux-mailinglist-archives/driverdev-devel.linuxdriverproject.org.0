Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB4631E793
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 09:44:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74903861AA;
	Thu, 18 Feb 2021 08:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wyhgFuzKuR6y; Thu, 18 Feb 2021 08:44:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59D288615E;
	Thu, 18 Feb 2021 08:44:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8746F1BF312
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 08:44:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7FCED872CF
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 08:44:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JD8XrEfJfC5H for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 08:44:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 34F93872BE
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 08:44:33 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id gx20so1026816pjb.1
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 00:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ed3oT+OewzwPMtx3xp3F8acYmpBybfyINlaZN6Lx5c4=;
 b=hqjskiM1dcTdIdLHKY6FqQx9B2WAf4ATIFDry3FEwSvqDP2jExxzydONzGn/fwQJnX
 1mU63R8Z5HstVm8M/AmDpsq8eSGLxz/wOYPf2pvGICbcgu5djbu6A8epIrNqiJL/Tk04
 C0L5YDCvtU90evEj2rHHYnZTpD3irmUSfW2Ls7gE4b8pc2u3hPH3lNf7UEnLMT1jEvhQ
 qA0YH+dIXRH6wwIu9zkYi9VmfIuvngWIP8WAZqJhBzst16PkcT5rTwSTU9aAwI/8bl6J
 rE2Xj7eXOcr60Geok91+1V8yxSY3uUlKvXPL6AhNQd8k2JazEWfrx0MkyuE3+2otg+3+
 nKtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ed3oT+OewzwPMtx3xp3F8acYmpBybfyINlaZN6Lx5c4=;
 b=nQHzRW9iEGl7gPQpNQTPwBUDWA0l8j82t6xlZGn1lbLgcSp6fil8kAYeigh5xEAmF9
 TwvZaUJGIgT4OcWkawidjRU4lIznhax9vjvirW2Z2qCSbshwlwW0JGqcDJ2X07s7mmXN
 OqyH/ZfNGI0e6MDC9atX8uQB97sg9DzDgruiYRSlCn1xEa9uJqePIZuO09XxFGPo5Zi8
 vmSvIPGP3mBmWbB1Wn2sL+pedLZwgEVh7ZYWTpVB1NCjcGZ1aYA8Hk0H3QAQdbotlfMw
 qM/2Co7Q5cDfGLG2+L0Au/9R3xQGGKwhk7DYU0G4j7sNGTHho2nT/uYnUB+9scyKvMvA
 S4vw==
X-Gm-Message-State: AOAM530xs8OD0idx4nqXU2QwCPwyJVimLxO8ZtMjc6PtZBs5l2BNcb+f
 62vN3/AXrUaFZwZogiHTB/Y=
X-Google-Smtp-Source: ABdhPJwEXv7DYrOjgQZNRGKO+GCDcYpgQpIRlfSpKHeEhbxRz/SXiEM3Uof1IEQ6CiAy/3tYM5XSRA==
X-Received: by 2002:a17:902:bd85:b029:e3:11d0:367f with SMTP id
 q5-20020a170902bd85b02900e311d0367fmr3326951pls.12.1613637872814; 
 Thu, 18 Feb 2021 00:44:32 -0800 (PST)
Received: from localhost.localdomain ([106.200.12.142])
 by smtp.gmail.com with ESMTPSA id u20sm4941761pjy.36.2021.02.18.00.44.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 00:44:32 -0800 (PST)
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/2] staging: comedi: cast function output to assigned
 variable type
Date: Thu, 18 Feb 2021 14:14:03 +0530
Message-Id: <20210218084404.16591-1-atulgopinathan@gmail.com>
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, linux-kernel@vger.kernel.org,
 Atul Gopinathan <atulgopinathan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following warning generated by sparse:

drivers/staging//comedi/comedi_fops.c:2956:23: warning: incorrect type in assignment (different address spaces)
drivers/staging//comedi/comedi_fops.c:2956:23:    expected unsigned int *chanlist
drivers/staging//comedi/comedi_fops.c:2956:23:    got void [noderef] <asn:1> *

compat_ptr() has a return type of "void __user *"
as defined in "include/linux/compat.h"

cmd->chanlist is of type "unsigned int *" as defined
in drivers/staging/comedi/comedi.h" in struct
comedi_cmd.

Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index e85a99b68f31..fc4ec38012b4 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2953,7 +2953,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
 	cmd->scan_end_arg = v32.scan_end_arg;
 	cmd->stop_src = v32.stop_src;
 	cmd->stop_arg = v32.stop_arg;
-	cmd->chanlist = compat_ptr(v32.chanlist);
+	cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);
 	cmd->chanlist_len = v32.chanlist_len;
 	cmd->data = compat_ptr(v32.data);
 	cmd->data_len = v32.data_len;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
