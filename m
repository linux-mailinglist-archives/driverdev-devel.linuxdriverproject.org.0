Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D49E3107B7
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 10:24:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D697586ADD;
	Fri,  5 Feb 2021 09:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bA_oK5NQzYP7; Fri,  5 Feb 2021 09:24:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2098861F0;
	Fri,  5 Feb 2021 09:24:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3CD81BF383
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9FD758731A
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6pOkQHtEdAzy for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 09:24:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2A9EE87319
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 09:24:54 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id w14so3948491pfi.2
 for <devel@driverdev.osuosl.org>; Fri, 05 Feb 2021 01:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qexEQoeH1VSbD2lPxl3p/1QlcpcYLIFQ/7sBV8TdkfY=;
 b=mOhJhH0meN4iXus5taRNl4EEa/TV0a9rUklNoG9lKnCj394FryVY2ue+nOLqRCORsH
 ANR6Qux4ysp2fjLT9wcU+QraHsjrr9vX8I8O9u0BTYYkDObK8QmOVcaxaQF3S7wRnoPn
 n5JBzYGm/ZxqHTwBPpfQKIKdHId1eiMkESyQmNNdlGfNl0hMX7s2LEsCJuI3Q2LBZTP5
 vAk8MZ1+k3iKBIpW/Ur2d8rQheja4JrZydTHOzyhW2JVPEs9S/40l3IQf6ELiI/LF4FF
 ZjMB2+xAy8TrlBe8xE8SnZ1Qlu3hPtcBWYhFBPHM0ujq4IniuGUWrfQk72JwIYcIBNR0
 RgjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qexEQoeH1VSbD2lPxl3p/1QlcpcYLIFQ/7sBV8TdkfY=;
 b=NoXcdQgBpEuVTSFyRwYbsJ7DExO07rzluduaVtPmxj1tYjbnwTFY2XuANFruWYjbat
 YSdqsjvM+hRxNFhTGfXHSYfvbwoS5R8F6EX4jGL8ubgsvvlh7BRQ+ktQcoWZ3UO5e87d
 HrM3X/4/3jOkk8sKqE5JRqNBwfbqhp1yqSRN3ujdBgaUwua7qP+Fc7RurKGwY+yXzpyg
 cOlU567P9wEXL1R0LoOjBBiJ+oHSQINuo4EsiL4ue36ISSLVOtUK6G/VMLKxWlJMh/Gh
 2xS42kBoV96Z17cfigIMWDE5KqTL9u3OiQTV2u81BOIjj7G3yQg6QC9cEpTnBpdQUxH7
 jfhQ==
X-Gm-Message-State: AOAM530W2ZrOXKLYRU16XiLMnTwtbPyQpl0Kh1O/3NdkWJbKmFE53/ND
 e9Cbdk0ezj1/qON1NqHzDjQ=
X-Google-Smtp-Source: ABdhPJxxfbi6YegTNvDkPD0QsamZIF6xpsZ+DRE/W0qlYkXNz9++Lfz6Q/36hw76w+jvCWo820ZMIQ==
X-Received: by 2002:aa7:94a2:0:b029:1b8:eba7:773e with SMTP id
 a2-20020aa794a20000b02901b8eba7773emr3734384pfl.51.1612517093664; 
 Fri, 05 Feb 2021 01:24:53 -0800 (PST)
Received: from localhost.localdomain ([103.200.106.135])
 by smtp.googlemail.com with ESMTPSA id a6sm7902129pfr.43.2021.02.05.01.24.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Feb 2021 01:24:53 -0800 (PST)
From: ameynarkhede02@gmail.com
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, nathan@kernel.org
Subject: [PATCH v2] staging: qlge/qlge_main: Use min_t instead of min
Date: Fri,  5 Feb 2021 14:54:33 +0530
Message-Id: <20210205092433.4131-1-ameynarkhede02@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amey Narkhede <ameynarkhede02@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Amey Narkhede <ameynarkhede02@gmail.com>

Use min_t instead of min function in qlge/qlge_main.c
Fixes following checkpatch.pl warning:
WARNING: min() should probably be min_t(int, MAX_CPUS, num_online_cpus())

Signed-off-by: Amey Narkhede <ameynarkhede02@gmail.com>
---
Changes in v2:
	- Remove superfluous int cast from num_online_cpus

 drivers/staging/qlge/qlge_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 402edaeff..213bd11e7 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3938,7 +3938,7 @@ static int ql_configure_rings(struct ql_adapter *qdev)
 	int i;
 	struct rx_ring *rx_ring;
 	struct tx_ring *tx_ring;
-	int cpu_cnt = min(MAX_CPUS, (int)num_online_cpus());
+	int cpu_cnt = min_t(int, MAX_CPUS, num_online_cpus());

 	/* In a perfect world we have one RSS ring for each CPU
 	 * and each has it's own vector.  To do that we ask for
--
2.30.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
