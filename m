Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D26B11687F8
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 20:57:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34581865E0;
	Fri, 21 Feb 2020 19:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vY3wxJXJ5dx7; Fri, 21 Feb 2020 19:57:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1D648655C;
	Fri, 21 Feb 2020 19:57:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 523431BF3D8
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 19:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4E68020454
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 19:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2cDXkKyUIT3l for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 19:57:01 +0000 (UTC)
X-Greylist: delayed 23:46:22 by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B247C20408
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 19:57:00 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i6so1800400pfc.1
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 11:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=btdpP75zyRVNd2zdgzUEwBQJP+VyfWPJzrchDwkOdOs=;
 b=PEKn2MBcmvOEnkpWiIbdjv9ZxqEbvv+hAMODBy0nzIAv4StveA+VGLTeX2JDlTFEJp
 tdcNhIA+M1Nwm3hEkKkVeDapbpCcNaSrHKuMod09Ej5rITU1adajdij1pqlZmVx6EBXW
 XTq2YspggUFvNn91B6mYvitzYdXAxxYC71zP2AKUql8n6+wROY/qu9O6X4LSv2gUcnpa
 +0RZ8xM8AriE5vZgEyNnHmHJjsDRAjqb7dg0Vo4c//+95R+IaT/Dl9GQtEL7I/RraezV
 nE4xMHTV6ZhGG5KkmN7W51vDD9/utKvHatkX0CHIh/mYu7r0cYaA3Mgk2D1gEfFCSP9R
 fbbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=btdpP75zyRVNd2zdgzUEwBQJP+VyfWPJzrchDwkOdOs=;
 b=D/+aaXw1FjASOneoMsefxOjjRHcaZUWfot4BSwgRvIPnJxO80M2wU+0YLq/QdSkANO
 PrnpIo6fLjC7cTSOsJ4d+bvm4ly3A2UWDC9PewVCyjwi+EJJRnMaesPoAHq0sDvFzz04
 8B/Gr4CW5rAAivdlvZLZ+malcBT7+lWAm+EW1TPWf0meA0v3RrZr1FgBtK6kOXBhX6mu
 JX9hZvaY0De/DPFh6tFEUCXnUkOtuPwXgmxRFSa9y1VgZAS38XjipclmU50/x4ckBFww
 dMcRCBU/WhVBuVt52FE4RzT38sozQ/yPyz/4DHfm4su28xaxuhFwSl9gxzKOhzPiCD1a
 Uppg==
X-Gm-Message-State: APjAAAX9ldGrhagAALPj5pXW8IrokevLDLgGyEf3wcOV2Tn3EMZe3r/J
 rVVyh2hxE2VgKMqlxpNIijKJ9g==
X-Google-Smtp-Source: APXvYqyuzt+qh+/9qPz7Xo4v2MMC+7vbZxDZI/rp3+7oRsDVJjoc9KxF/5d1CXRa9xg4vob5FiB3Tg==
X-Received: by 2002:a63:487:: with SMTP id 129mr39862540pge.193.1582315019992; 
 Fri, 21 Feb 2020 11:56:59 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.178])
 by smtp.gmail.com with ESMTPSA id x28sm3274324pgc.83.2020.02.21.11.56.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Feb 2020 11:56:59 -0800 (PST)
Date: Sat, 22 Feb 2020 01:26:49 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: qlge: add braces around macro arguments
Message-ID: <20200221195649.GA18450@kaaira-HP-Pavilion-Notebook>
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

Fix checkpatch.pl warnings of adding braces around macro arguments to
prevent precedence issues by adding braces in qlge_dbg.c

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/qlge/qlge_dbg.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 8cf39615c520..c7af2548d119 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1525,7 +1525,7 @@ void ql_dump_regs(struct ql_adapter *qdev)
 #ifdef QL_STAT_DUMP
 
 #define DUMP_STAT(qdev, stat)	\
-	pr_err("%s = %ld\n", #stat, (unsigned long)qdev->nic_stats.stat)
+	pr_err("%s = %ld\n", #stat, (unsigned long)(qdev)->nic_stats.stat)
 
 void ql_dump_stat(struct ql_adapter *qdev)
 {
@@ -1578,12 +1578,12 @@ void ql_dump_stat(struct ql_adapter *qdev)
 #ifdef QL_DEV_DUMP
 
 #define DUMP_QDEV_FIELD(qdev, type, field)		\
-	pr_err("qdev->%-24s = " type "\n", #field, qdev->field)
+	pr_err("qdev->%-24s = " type "\n", #field, (qdev)->(field))
 #define DUMP_QDEV_DMA_FIELD(qdev, field)		\
 	pr_err("qdev->%-24s = %llx\n", #field, (unsigned long long)qdev->field)
 #define DUMP_QDEV_ARRAY(qdev, type, array, index, field) \
 	pr_err("%s[%d].%s = " type "\n",		 \
-	       #array, index, #field, qdev->array[index].field);
+	       #array, index, #field, (qdev)->array[index].field);
 void ql_dump_qdev(struct ql_adapter *qdev)
 {
 	int i;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
