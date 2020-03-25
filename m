Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3681924BA
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 10:54:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06F29887EB;
	Wed, 25 Mar 2020 09:54:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPKRWl+Lx9CJ; Wed, 25 Mar 2020 09:54:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 741C88879E;
	Wed, 25 Mar 2020 09:54:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0CBC1BF37C
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 09:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD16825521
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 09:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ewh9h7spRD5 for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 09:54:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D47E23A53
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 09:54:14 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id g6so621736plt.2
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 02:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=/NYrQ5Nb270diTDzFJ+L0kNuyBm+yeaEX8X8C+1Apag=;
 b=aj8sinew6nIdVUkJwgQGDJhQiVwGka6OnfHJ53+z5eW8gMpeRibO9PV0Vwpuqoi780
 RM9vJC1zwcBwvZ99XYh5ohg1vMUBNfu1JVMiDr+jpaHtGir7c2G+YTv6zOCVyDAJV89K
 6PlmMW6C8QDBYO3UvMd5BcD6KkcsTQaE0yyyB6u8fVOv12exxzm+SGkMSuW4tdFRmuPm
 +9D7+XyG5kyWvItfDlEPX5uk47IEA4jvrLOIU8QPSm0iAZzpSoionHk6vePFrZ05e/He
 hCAI41GrhOBJ73VzgQzefwGqTAKiRgvlUDcfwvnr+beer4mk5uN+ncme0Ra0ShJO9owg
 LurA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=/NYrQ5Nb270diTDzFJ+L0kNuyBm+yeaEX8X8C+1Apag=;
 b=Q47yl50ydUjbf4XHRasqv6OjahpdYJ3tbl1nusjiPEYc7zhp7+mlDybHHYlDkJzhEp
 e3jf+ABp55FqLkB0v11i7X9Co5Ht84eUhLmi1di84LEnzIfyCDxi6YUPLcAXSRWt7/4s
 IalE86SUjKary7sjZjvnGF+kA+q2swsR/HpqKIbnNviEg9zfXOam1En6o/C2eJx3VzGa
 bbjoYEUGJLJNjFIOgpbss9XQMbzaXsMCZLjiuNYdUQE11O22nTo42OTGx+dlTQ+EXpfz
 q6v8EWFJZBhosnK0qoGL8WLhJtudV0yGdjRftZ4iHhPYg9P7S80ovl0Dkc5VAiYmdT+x
 /gfg==
X-Gm-Message-State: ANhLgQ1sh+NCtPEoSrUqSRIrLFdvjVSvRvAoPLASxx7Q54IQif03qXfG
 /IQAfmtBfkuzKSNLGqhWR44=
X-Google-Smtp-Source: ADFU+vvRGXRu0CV7DtzLSZpoYom710jnvxbX2PjNh+ccZLTCzj9zXqjsLNhrxx01Nt2nYV13ifT9Eg==
X-Received: by 2002:a17:90a:a385:: with SMTP id
 x5mr2855334pjp.102.1585130053661; 
 Wed, 25 Mar 2020 02:54:13 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id
 k4sm18907553pfh.0.2020.03.25.02.54.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 02:54:12 -0700 (PDT)
Date: Wed, 25 Mar 2020 15:24:07 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, jeremy@azazel.net,
 driverdevel <devel@driverdev.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] staging: kpc2000: Removing a blank line
Message-ID: <20200325095407.GA3788@simran-Inspiron-5558>
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

This patch fixes the checkpatch warning by removing a blank
line.
CHECK: Please don't use multiple blank lines

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
Changes in v2:
  - Make the subject and commit message correct by mentioning that
    this patch specifically removes a blank line.

 drivers/staging/kpc2000/kpc2000/pcie.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index cb815c30faa4..f1fc91b4c704 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -6,7 +6,6 @@
 #include "../kpc.h"
 #include "dma_common_defs.h"
 
-
 /*      System Register Map (BAR 1, Start Addr 0)
  *
  *  BAR Size:
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
