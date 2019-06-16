Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5904C475DB
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 18:20:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 604E2203AD;
	Sun, 16 Jun 2019 16:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E0H-7SOiqw0I; Sun, 16 Jun 2019 16:20:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B7209203B4;
	Sun, 16 Jun 2019 16:20:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 742FC1BF316
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 16:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70EBD20372
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 16:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HzoBUcBmRWOw for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 16:20:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id AABA42026D
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 16:20:17 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 83so4368447pgg.8
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 09:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F7c4Ii2lIRg4WK3LnUHH3EukYlQjj7xEBu6zgZJFeNk=;
 b=Kl49fisHXJsYiIBKU06XjHxEyTJHRp+V38FFaOPlaFMjG84Yo0oq8RqsbqMiIIN7XZ
 ngPuYX9FsazrftHHyXrK1WSIuzykC8s+g4hUNkypGY9mgbY9RRnlZ9vFl2PvIYYjoKuU
 BPF/GwrnvCiuc6vypLX/NswQCxARywR7xJgJKlP/PNgmnAK4WRcqGUSAHgxVAG8D8EbH
 E7A1s2itc/S5969rHUhkTbi/0KYEQP1ZD8ih8crAqM/Npx65R9B+3HlK12GWW06AX563
 Fl4DT9L4m+eNUu07oOl190IISweJCsO6oP9HJ4rlxZbfmrjj3A8nWv0zRfZZtzvOSbPS
 jQcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F7c4Ii2lIRg4WK3LnUHH3EukYlQjj7xEBu6zgZJFeNk=;
 b=l4NHbmT5FyBu1EJRgSGZEKMDeMXiPT7Qxs4a6sTVt2Fnz/B/JAwLx1k203GhF1FLjC
 sxBI4mv0DXwQaMROJEyYKoyRFpaypmVLMcMkODDlWDsI5nsgqWTg/gTWeDtoHiCE+Gqe
 95dhQVHJHXbt+BD1w8H9twfDcVs/HMFL97gZR7T1SnPVme7pmTOlsN4qE8TNNs8S/nHE
 lDkScu6DV3OxIiPqNUKQcVHG0oBl5nkF79MYa4gw2OXesdxjxf82ZE+2LimTYMwzMwtr
 OpEl1/CFeT3jwgTkUrj6vsRxdI2sdsj4WiO72aF1Rtsb189sYBalrmu/iNhf6co23pD8
 cERg==
X-Gm-Message-State: APjAAAUpFsvvx2jtQ6usrHQMAge5xgGMo5x8np3q3Hc6xq8KC/aYk5g+
 nGKztp38psj2QVWDMUhSxl4=
X-Google-Smtp-Source: APXvYqw+6nLTcradR7JO8k4lVxHqCgfn1DsqASSPlvp5sfwnmu6BNo/Nn/SXUUNTnGziemLe1aHlLA==
X-Received: by 2002:a63:eb56:: with SMTP id b22mr44191744pgk.81.1560702017175; 
 Sun, 16 Jun 2019 09:20:17 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id 8sm1687908pgc.13.2019.06.16.09.20.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 16 Jun 2019 09:20:16 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Joe Perches <joe@perches.com>
Subject: [PATCH v3 0/3] Resolve checkpatch if/else brace style errors
Date: Sun, 16 Jun 2019 09:19:48 -0700
Message-Id: <cover.1560701271.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <20190616131145.GA30779@t-1000>
References: <20190616131145.GA30779@t-1000>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Bastien Nocera <hadess@hadess.net>, Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset fixes the following errors reported by checkpatch in the 
staging/rtl8723bs driver.

Patch[1/3]: Fix check patch error "that open brace { should be on the previous line"

Patch[2/3]: Fix the error else should follow close brace '}' 

Patch[3/3]: Fix Indentation Error

version 3 changes:
	- Converted the patch to a patchset
	- Resolve checkpatch errors:
		else should follow  close brace '}'
		Fixed Indentation Error to use tabs
	- Compiles and builds, untested on real hardware.

	
version 2 changes:
	- Removed Trailing whitespace introduced in the previous patch
        - Moved comments to a new line in the else statement

Shobhit Kukreti (3):
  staging: rtl8723bs: Resolve checkpatch error "that open brace { should
    be on the previous line" in the rtl8723 driver
  staging: rtl8723bs: Resolve the checkpatch error: else should follow  
      close brace '}'
  staging: rtl8723bs: Fix Indentation Error: code indent should use tabs
        where possible

 drivers/staging/rtl8723bs/os_dep/mlme_linux.c     | 19 ++---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c     | 90 ++++++++---------------
 drivers/staging/rtl8723bs/os_dep/rtw_proc.c       |  6 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c      | 54 ++++++--------
 drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c | 24 ++----
 5 files changed, 71 insertions(+), 122 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
