Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6932631DDDA
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 18:04:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD00381A55;
	Wed, 17 Feb 2021 17:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UiBXbmVP0G5v; Wed, 17 Feb 2021 17:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAC6986079;
	Wed, 17 Feb 2021 17:04:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D7121BF429
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 17:04:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 66D026F59F
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 17:04:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S3qiAHdKJB7w for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 17:04:04 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id A02D36F5DB; Wed, 17 Feb 2021 17:04:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75A4B6E4CB
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 17:04:03 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id d15so7729614plh.4
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 09:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/Ld/ShzShm5KDKAgwYyvO0aBML/jn8k0pry3XCWAfd0=;
 b=NNmnKat9LAdeDIp7dqqwINwu/xuel5bwjWV2AhyFHnv1G3xHwim1kZA4VfaG5+3LxE
 +kTEGs36EnXR35RRYWe21MTJ3noNUDZ28NgnVWkcNyanqcNUlxtzUdOCkz5bzy01y0KV
 ob1uzbj1OdkOguh92oZW72e7vMu1EH/k4r6gT1wbvvrdkfRl6Vtn1vfXWgv6ttqsLxBR
 Jl+2nwPlkw0pJBtQZOUJCzbhF4mA05FSLzIykMbN2ljUjLVe7x9kR2OS+mMTqPkQgdBr
 1rN+AaBgusw2bdDfCFRbeaJHPX3K0roEq7KyVX8q5mkr8ligkaLtzWyRqxRXvmStky2H
 Zadw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/Ld/ShzShm5KDKAgwYyvO0aBML/jn8k0pry3XCWAfd0=;
 b=GzmVaavC0axhUubH0+RavBE+uNz/GeOReQuR7+ezkufxo4gmerFsbwPi4O1iNt/2h+
 7nIn829NFzuZtMC6izyCT50R2tQlhqP7BOWEny2iwr6fP07fMDV+76OsZMeD9qsZnZS1
 YZ4NtFUyUVtAlrtP55gpN6nWc+smRJoljc4F1xkc0Pp4HP6xg+wOgYcZjdDkgBki58vM
 6/PwsQr1WNNBG8vMTNLriNmatm5KRhywups9Mlp5J+enimUh5asW2Z0EYarrzm0JtUPc
 P55M21xvEqD8VoayQbpNnC6+K1nnCeRxUNDLmlvqWZsLLXOEMBBW5JC6VWJ9N/HqTGaF
 YdTQ==
X-Gm-Message-State: AOAM531LGhk1nJZY9AO1x+3EbSEKXvtIdQ8Oc2VmBxNRpf93meQgMvbM
 v3W0Ob7q7duPE3jbKC+1SP0=
X-Google-Smtp-Source: ABdhPJyfQ975J7M7Z5JfrVETyiWjBSfaRb+F1ic1oPoJYbpa/SlUQBc9RmrYKjBg0euvkiHeuMrY1g==
X-Received: by 2002:a17:902:6bca:b029:e2:c5d6:973e with SMTP id
 m10-20020a1709026bcab02900e2c5d6973emr25292018plt.40.1613581442936; 
 Wed, 17 Feb 2021 09:04:02 -0800 (PST)
Received: from localhost.localdomain ([27.61.15.122])
 by smtp.gmail.com with ESMTPSA id 9sm3200539pgw.61.2021.02.17.09.03.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Feb 2021 09:04:01 -0800 (PST)
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: comedi: cast to (unsigned int *)
Date: Wed, 17 Feb 2021 22:29:08 +0530
Message-Id: <20210217165907.9777-1-atulgopinathan@gmail.com>
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

Resolve the following warning generated by sparse:

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
