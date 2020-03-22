Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FAB18EADF
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 18:30:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDB848842D;
	Sun, 22 Mar 2020 17:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JRht0Td7XiCw; Sun, 22 Mar 2020 17:30:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32E0A8818F;
	Sun, 22 Mar 2020 17:30:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58C4A1BF41F
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 17:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CE168818F
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 17:30:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y1EMh5VilNKA for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 17:30:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2F9328818E
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 17:30:51 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id f206so6262219pfa.10
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 10:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=4ZoVQ1c9ycCJ8Gj1lfk5UAo2vuQPMTOZvWhGMpvKEUE=;
 b=e5+mDZWLNRbJUuoqDXwBJW5YIqPp6MblyeiFGTFz3gUtrNwjYD7VVxg88u89qdnkNB
 YonZUzNE4K4spQGQQaxpmB/zxewAiyjExivnkz1SukOWdnYfY584NrKJvaeVHq2Pfwzq
 AQtbrNIz1px0DMNltutapcWkEHl1kNZuBO1qKZFNA1xoQQiy2R1L2T4Mih1YSf3xqsrf
 eB34YXdekCSGzYajt85QS/JbkjkO7qM0/Qu3irCQ8yM/ifWOqfKo3tSo9e2GrcA6MGmP
 P/0El1GF701OqtbedrdpRjuEVfCjiuFelVm40Q+f2opsVKz4fzR/qDmFn5eVPbgoQbwb
 p+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=4ZoVQ1c9ycCJ8Gj1lfk5UAo2vuQPMTOZvWhGMpvKEUE=;
 b=ZZtaaFl4xdzOmGB8/hlgXJUHObCanUN+GVfNvXVPaNtFryxZ/rP9oyehjNG6wpCGzc
 q+YUHkq96f0BbPz7VD6StyeMJn723ywtUN/9R6eFI3g90Md+uCSe+3U4zHT6hbAg93NT
 WR/y61F/g3JIl2T6rZdCJ3dxctw7SuLK8CrYIfjjNqGBTPH35OxPd6N//IHv3wkCSjZa
 psEaFZr+eXRPTBWoZd9MKUpgqBH9qbWD/GobEdcVvBRUB+4aIrdC1TBM1dsfA7XFnieU
 fI/HmhT26xqEbA/M96oBeXS7BT/Wz5X0ZD0mQxazwLOsM+UO53wPaXZbup69ysC/hVAz
 JdzA==
X-Gm-Message-State: ANhLgQ2q362iqA3xha/NKWqtpCNWalLBuctnGWnRmUmq7OjidBwo0uSZ
 Vj7A/Xd+AHrdwi7a8WMwzbs=
X-Google-Smtp-Source: ADFU+vsc9Fkdk9zntgPTPaN31WhDeuT4qIt/2hez13I2SE6xGSsiXmMfBlFOK/tcmzJE/O3ONSjnoA==
X-Received: by 2002:a62:6244:: with SMTP id w65mr20692876pfb.89.1584898250652; 
 Sun, 22 Mar 2020 10:30:50 -0700 (PDT)
Received: from simran-Inspiron-5558 ([14.139.82.6])
 by smtp.gmail.com with ESMTPSA id f64sm11732499pfb.72.2020.03.22.10.30.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 10:30:49 -0700 (PDT)
Date: Sun, 22 Mar 2020 23:00:45 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: greybus: tools: Fix braces {} style
Message-ID: <20200322173045.GA24700@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

This patch fixes the check reported by checkpatch.pl
for braces {} should be used on all arms of this statement.

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/greybus/tools/loopback_test.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index ba6f905f26fa..d46721502897 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -801,8 +801,9 @@ static void prepare_devices(struct loopback_test *t)
 			write_sysfs_val(t->devices[i].sysfs_entry,
 					"outstanding_operations_max",
 					t->async_outstanding_operations);
-		} else
+		} else {
 			write_sysfs_val(t->devices[i].sysfs_entry, "async", 0);
+		}
 	}
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
