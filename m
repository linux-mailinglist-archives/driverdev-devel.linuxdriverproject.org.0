Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900861FC408
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 04:19:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF86089741;
	Wed, 17 Jun 2020 02:19:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RtZi-QklDbOJ; Wed, 17 Jun 2020 02:19:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 645CA89563;
	Wed, 17 Jun 2020 02:19:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D3D31BF308
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:19:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E39B2052D
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sRTGyovH8osm for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 02:19:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by silver.osuosl.org (Postfix) with ESMTPS id CA15C20394
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 02:19:23 +0000 (UTC)
Received: by mail-pf1-f172.google.com with SMTP id b16so360549pfi.13
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 19:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Tm2OIAC2wPHIu+J0I11lcX2FQUkFHhPNaZd+SgdUmOc=;
 b=ILtTzXAiow+nG+MFZnQxYWUg0LNfix/Aw1/05PPUVjdMuFqOGCxjCh3sm63ghEyZ1v
 36776c6ULt26LiAbw+qWf/O48btNGUIzyqiHlR+9X9TRaDqUspIX9mIXjlOjzMPdXjfO
 L4EDGYqTtFvGqBnRb0nBPLw1ZsCm3/z7A0EzqdCBMw9fy1IVHPfilrmKgM5ojiY4EBAI
 XXdklcC9hRxhLUYvxAcYOzddiBR/zLp4VGscS7p8wJQ2okzR0DEiWTh/mriR5UoHq7id
 9txgG2P+OSe1swKbcFdfNG+PdO5xkrKX4H2DlILHrrBU9QySckTsyFQyTE08nlkwUsSd
 1HpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Tm2OIAC2wPHIu+J0I11lcX2FQUkFHhPNaZd+SgdUmOc=;
 b=EKNgBGMM2HfRz8O4dz0bZV747rY2dtzO3Cv12Ndngdf2LzewVkWM7oyUMpPrDK+XL/
 tteJTB6riiCf0nNBo3YX9VKkCSQoKBBq2aOwAstelD/5V9XJ9UFw4oKrB6hwIb9KLt3w
 Xs/YdWL2FdZf/BK4wkT9KNsHVadHFd6iMt2PScMLZf6apGksi43iBNPWNHnKGilDvSBF
 j8Ey0xS8AQm05uJ34t/Hb8OmaaNtM0XPufV5MNlDHU/po6BX7YdtER/He5Hti8oNyuiO
 ytPdGiIPnsHq67Zad2gQ+SMN6Bt/E/FUJEOL6Tl49bJR8n+7lMThFr7Qkl4uz+wXuC0o
 aW9w==
X-Gm-Message-State: AOAM531ac3aIUBc7GTI2PHKI4At2ulri0KPXQosXwpqn0oyVg80W8i6T
 rDB1dv7LUL5b1vxGDFLkDCA=
X-Google-Smtp-Source: ABdhPJyupGoqunIqWLgfQKt3nF8HlXkYClkFyrB5g8cPk2QdQYtD7/lKzqzLythjC071dea+D5OJPQ==
X-Received: by 2002:a62:75cc:: with SMTP id q195mr4677936pfc.256.1592360363283; 
 Tue, 16 Jun 2020 19:19:23 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.213.184])
 by smtp.gmail.com with ESMTPSA id h9sm1203208pfe.32.2020.06.16.19.19.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jun 2020 19:19:22 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com, pakki001@umn.edu,
 ldufour@linux.ibm.com, harshjain32@gmail.com, simon@nikanor.nu,
 walken@google.com
Subject: [PATCH 0/4] staging: kpc2000: kpc_dma: Few clean up and Convert to
 pin_user_pages()
Date: Wed, 17 Jun 2020 07:57:19 +0530
Message-Id: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series contains few clean up, minor bug fixes and
Convert get_user_pages() to pin_user_pages().

I'm compile tested this, but unable to run-time test,
so any testing help is much appriciated.

Souptick Joarder (4):
  staging: kpc2000: Unpin partial pinned pages
  staging: kpc2000: kpc_dma: Convert set_page_dirty() -->    
    set_page_dirty_lock()
  staging: kpc2000: kpc_dma: Convert get_user_pages() -->
    pin_user_pages()
  staging: kpc2000: kpc_dma: Remove excess goto statement

 drivers/staging/kpc2000/kpc_dma/fileops.c | 33 ++++++++++++++-----------------
 1 file changed, 15 insertions(+), 18 deletions(-)

-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
