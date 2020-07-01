Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 544DC2103A1
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 08:09:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 903C48AC13;
	Wed,  1 Jul 2020 06:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sATWXU5B0ocM; Wed,  1 Jul 2020 06:09:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 721D08AB8C;
	Wed,  1 Jul 2020 06:09:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44B601BF83C
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 06:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 40E1A8A896
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 06:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BLFJ32KiodpL for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 06:09:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91E698A840
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 06:09:33 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id cm21so1207334pjb.3
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 23:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=VEa2mK1n/Z1NoMOue5fFCZgphszoFRdqQh+jray/Ymk=;
 b=c11lPSmAMoAEy2A529Hpm4EzH5oHccsXb3BCAdT5PUbURFnIr6mNCLnvwUhtKZaEA4
 /nxq2gw0/An90b7CHsizv3AhdLTF13GhXeT2ux60h4Tj0VLzVty6EuVSqyPk2G04rbV6
 RxPVHgq+jEXxWR79rfRPcaEBYFVQK3xWBMaYSZpWiQXmZ3vcplmsIcEfM9je2egvcArc
 T79OLPGWXACcwNnR7uNPjYpNVpWT53k1iKfQ8LBfWk0ljkCHgTtmIvaJH8a4r7J9CBPO
 njE0Yz7N9NfUmI6C3cQxxVKSU9xBX1VlSWofsrMyroVtIAPV032uL6HcSZOyaK5M/Gkh
 4IOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VEa2mK1n/Z1NoMOue5fFCZgphszoFRdqQh+jray/Ymk=;
 b=i8NnP7+Ta2x9It2ECWnwtleCaT8HEhaUm+8dPDXTe30W7Ruz0e34su9792arXs5F9z
 vaSeRMafzsLeAJndtmOc+XgOjAEqF7bGyaZgrrgToJM5okv/3eP8StcDaE8pfkBE5p8i
 4e+1ViVRtfOXXrgrdwOnKDHYOSbAhMOpgLyEKNBz0IT7xSGpRrnmIE5fbaTUhAzgQRaj
 Sv58cv3PXiBscwKtT0sBL1shj6HbenItu1wmh8ayQjEzQhmboRsBs5jfpG02VrKkycFH
 1juvW1DwjpSw3hPzwnRARW/AMEmnrXbsUtnj2CSxD8C+jyoG0I4amrh7Xr9+zIKUzOPc
 nxpA==
X-Gm-Message-State: AOAM531OCN5KZlb5BI76iPEXD4jtrDw2hpX1jYlEUq+Yc5qiVkRa+Iij
 QJBpKic0RYi3WXQDeM4SQ+o=
X-Google-Smtp-Source: ABdhPJyU2iRrphLhP03x6tIKHUe9ucsydFbuAFwrHlTHM/WJNn9tnpiYuZVjoaZYDSuRf2zpt5SVpg==
X-Received: by 2002:a17:902:a714:: with SMTP id
 w20mr21265664plq.125.1593583772969; 
 Tue, 30 Jun 2020 23:09:32 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.42.200])
 by smtp.gmail.com with ESMTPSA id 127sm4694073pgf.5.2020.06.30.23.09.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 23:09:32 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com,
 daniel.m.jordan@oracle.com, simon@nikanor.nu, harshjain32@gmail.com,
 pakki001@umn.edu
Subject: [PATCH v3 0/4] staging: kpc2000: kpc_dma: Few clean up and Convert to
 pin_user_pages()
Date: Wed,  1 Jul 2020 11:47:40 +0530
Message-Id: <1593584264-16982-1-git-send-email-jrdr.linux@gmail.com>
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

v3:
	Address review comment to invoke the right goto level when allocation
	failed in patch[4/4].

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

 drivers/staging/kpc2000/kpc_dma/fileops.c | 39 +++++++++++++++++--------------
 1 file changed, 21 insertions(+), 18 deletions(-)

-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
