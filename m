Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B219169FEA
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 09:25:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 731AA86F8D;
	Mon, 24 Feb 2020 08:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d2JGSlPmA8xl; Mon, 24 Feb 2020 08:25:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 748AC86DDB;
	Mon, 24 Feb 2020 08:25:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D1D211BF410
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 08:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE73D85247
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 08:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSDvz4dIPRcl for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 08:24:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 43CA88511B
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 08:24:56 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id w21so4729251pgl.9
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 00:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=lhlKxXAIvhacc2714cSl7CgN47VyLjNdXE5+TJ+pWfc=;
 b=iVRInhr+0XNetO76iReb1HcqRUj2veJmpOz2VGFnl2Wxi+8TPSjiu/xM/adgh6XmCK
 8Vk6u/EjOINY+qvQ7ISa91IkBrWENxEMunIgH0aMBekN48kC+rBPr5JyAEUo45egz+Tp
 cAfVlus1c+zANML1yovm8FDV01jcNS6RpGQajOVBDCK+/Jjc/UJNt13m1yDXbJXfPS4M
 QAqcA/H6ZQ2ZJC+3y7NBZgnRHOcGHpQmT90FXX4cLkHmg4AhWA2om8knIKC7EegqlEK1
 HwC07FQ6y/BIblr71lhZuxonaXOkd4NCVQG97jtEN56rZ5z7djSpq3XiLZDJB2BvC/Ns
 iMGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=lhlKxXAIvhacc2714cSl7CgN47VyLjNdXE5+TJ+pWfc=;
 b=cxYBGgOvBDC4CH7qbNMltCkkczw9pWJUPrfPSy7ZCaiULXtdLFJsQKPZOKbZR3hUzC
 qFmUbVRlOUPXVGyTBmBnMZt5mb5LwySQIvBTzBE2KgA15Hbnofln7F8HBPqXufD5fAn4
 DfcyKw1UVRmktDu/gr9qE0A59af6Y5QLpCMHj+1uCDtU2NFD3XVMH/RJr0FNNLH8+PWO
 1wWG55T7bx6BRB3573P8XWWaTbe7pADzhZyEog1fDvXehltEFf5IpXzA1WSRjP+gT2gI
 ZRhfWU+G+j07ytz7jChr3fa1Ri8CbhQ/SxUuwMtroFWsemPW3KLPpZk7z47KfgjNlTQm
 N2zQ==
X-Gm-Message-State: APjAAAXpit6m4pWDdouYYo4YaKlMLbzv3DgggsZklNr/6+jt3DXxCfSW
 TZMRf0ZJQfHPAvqBrl9tQs492A==
X-Google-Smtp-Source: APXvYqw7fF7F0dn1XMTNUKU+SpQUH74ObcV+LpB7LmVe/J4gIU4K/TSo0CCwfrQ6XOBMin29oU+CKw==
X-Received: by 2002:aa7:84c4:: with SMTP id x4mr50338458pfn.144.1582532696231; 
 Mon, 24 Feb 2020 00:24:56 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.170])
 by smtp.gmail.com with ESMTPSA id g12sm11515210pfh.170.2020.02.24.00.24.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 00:24:55 -0800 (PST)
Date: Mon, 24 Feb 2020 13:54:48 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4] staging: qlge: emit debug and dump at same level
Message-ID: <20200224082448.GA6826@kaaira-HP-Pavilion-Notebook>
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

Simplify code in ql_mpi_core_to_log() by calling print_hex_dump()
instead of existing functions so that the debug and dump are
emitted at the same KERN_<LEVEL>

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---

changes since v1: make code of ql_mpi_core_to_log() simpler.
changes since v2: directly call the function instead of defining a
macro.
changes since v3: Remove prefix string.

----
---
 drivers/staging/qlge/qlge_dbg.c | 23 +++--------------------
 1 file changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index c7af2548d119..0c5f6859e645 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1324,27 +1324,10 @@ void ql_mpi_core_to_log(struct work_struct *work)
 {
 	struct ql_adapter *qdev =
 		container_of(work, struct ql_adapter, mpi_core_to_log.work);
-	u32 *tmp, count;
-	int i;
 
-	count = sizeof(struct ql_mpi_coredump) / sizeof(u32);
-	tmp = (u32 *)qdev->mpi_coredump;
-	netif_printk(qdev, drv, KERN_DEBUG, qdev->ndev,
-		     "Core is dumping to log file!\n");
-
-	for (i = 0; i < count; i += 8) {
-		pr_err("%.08x: %.08x %.08x %.08x %.08x %.08x "
-			"%.08x %.08x %.08x\n", i,
-			tmp[i + 0],
-			tmp[i + 1],
-			tmp[i + 2],
-			tmp[i + 3],
-			tmp[i + 4],
-			tmp[i + 5],
-			tmp[i + 6],
-			tmp[i + 7]);
-		msleep(5);
-	}
+	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET,
+		       32, 4, qdev->mpi_coredump,
+		       sizeof(*qdev->mpi_coredump), false);
 }
 
 #ifdef QL_REG_DUMP
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
