Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F19C20EFC3
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jun 2020 09:44:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 40D7E884BB;
	Tue, 30 Jun 2020 07:44:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q-pmgKrcBa3F; Tue, 30 Jun 2020 07:44:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABCCE8841A;
	Tue, 30 Jun 2020 07:44:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 483551BF29A
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 07:44:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 44C7586D22
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 07:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XpTd-uHdkkZ6 for <devel@linuxdriverproject.org>;
 Tue, 30 Jun 2020 07:44:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCB8A86D42
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 07:44:11 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id u5so9063731pfn.7
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 00:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pl+ivQzyTZFWjfiMczmUWs/8JK6z1fCNvXNXKidR1Rk=;
 b=M5bDGFygd1tmBJiJTP+BT5CtnP9TTXwFpjEryFSPhHSUZ3sMpqRDh7R3ZpjzBtEZlE
 0YLE70QmU2MaTu/56knV0rDP/OS3AIyy8+mDFNrCDAesDzQoifokO1zSJjPEhZbB/b3a
 jRemQ1oUpVArI5IQPxqSdA9jzE4mpckGaTA0GB2LzbgeSOCmCvFGdq6ciikKKC0OgtFF
 A2BuHJaZD69QbnQYd9Z5GqTMIRDPi385wlmbY0CbeeEKKF11sxLaYnvcFpdgNq2DZdmg
 wA3vWB+xrJ2bCp+qPxF1XO6J2+ZjVaTfI8jMa6T04uzlt0oVTkimBSd6QneIWPeU3mMG
 sTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pl+ivQzyTZFWjfiMczmUWs/8JK6z1fCNvXNXKidR1Rk=;
 b=Yr0+lrD/fjoursQEWMy5T7uVFzVaOHIJX7yffQy+oiI/oXdXQJu4f8ysFI6i6HRr6d
 83Aess35zc9+Pcsx94QfSm+emHfDfjhqu+PK/UU9Tk3i7nJFFkYydtD+ML+EKAc1Lnpd
 nQCa1dZr4ORs25a55bD5j45fqD0kllrXdSN96yao2y8MCW2OPHzQzjHMt32dWsy6OThR
 mQkCetedimhXHDh6Z8j8e8etBjGZxQ2K4+MxNJqN6P+VYFxR/Suo0WO5uMcYrP1nf6ii
 CJmm5mr3JXx+l2v1Vywhavc8nPIFjf2IOp9PQBKmn7fxE3xqnjV1RVbyUJSo31bX8Cos
 g5AQ==
X-Gm-Message-State: AOAM530eHwymGNAzlnLnk2sL3E8LIoZYT/VqjNFMWFOGSAJXBfyKjV1U
 +g2f1XJj0RsOOKesPXo+9AOPUQDnEh4=
X-Google-Smtp-Source: ABdhPJxl+dRWQC+dLyZWXlMuchrOSBVSXZODFQ9NQMp3xoyIw07f+vKDkpi4poj+UZu6F8YeetrC4Q==
X-Received: by 2002:a63:5808:: with SMTP id m8mr13948390pgb.110.1593503051368; 
 Tue, 30 Jun 2020 00:44:11 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.182.225.143])
 by smtp.gmail.com with ESMTPSA id w1sm1754276pfq.53.2020.06.30.00.44.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 00:44:10 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: jane.pnx9@gmail.com, ldufour@linux.ibm.com, gregkh@linuxfoundation.org,
 harshjain32@gmail.com, pakki001@umn.edu
Subject: [PATCH v2 0/4] staging: kpc2000: kpc_dma: Few clean up and Convert to
 pin_user_pages()
Date: Tue, 30 Jun 2020 13:22:15 +0530
Message-Id: <1593503539-18649-1-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
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
Cc: devel@driverdev.osuosl.org, Bharath Vedartham <linux.bhar@gmail.com>,
 John Hubbard <jhubbard@nvidia.com>, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series contains few clean up, minor bug fixes and
Convert get_user_pages() to pin_user_pages().

I'm compile tested this, but unable to run-time test,
so any testing help is much appriciated.

v2:
	Address Dan's review comments to return -ERRNO for partially
	mapped pages and changed the other patches in series accordingly.
	Minor update in change logs.

Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Bharath Vedartham <linux.bhar@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>


Souptick Joarder (4):
  staging: kpc2000: kpc_dma: Unpin partial pinned pages
  staging: kpc2000: kpc_dma: Convert set_page_dirty() -->     
    set_page_dirty_lock()
  staging: kpc2000: kpc_dma: Convert get_user_pages() -->     
    pin_user_pages()
  staging: kpc2000: kpc_dma: Remove additional goto statements

 drivers/staging/kpc2000/kpc_dma/fileops.c | 38 ++++++++++++++++---------------
 1 file changed, 20 insertions(+), 18 deletions(-)

-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
