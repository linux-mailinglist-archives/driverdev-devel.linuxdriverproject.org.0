Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A4123254A
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 21:21:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6356F87820;
	Wed, 29 Jul 2020 19:21:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z8lA12H-p-Ge; Wed, 29 Jul 2020 19:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C362787762;
	Wed, 29 Jul 2020 19:21:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AEAB1BF328
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 19:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4481787762
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 19:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vo7fBsVGSMax for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 19:21:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 685EE876F4
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 19:21:55 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id b9so12306735plx.6
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 12:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CyZyqFI+XAr4XPDXxXl/eruhWi9Hm+rYqmX4iZ+USns=;
 b=FRfOzvLbV/mf5lnlVREPCAuLLWN993iqbGhRBftPZBoNeFAkU2XbZjCgBKw0nkU6Lb
 fNIBcg/B4NcVq35Qk2vIizFFcHDK3E8/iIYDnNN9p9SdWsZZfcCuGO7da1L2SOBEr8wt
 /WcLELl09txi5pqBKeyodMdyHCeZcF3z0LXAax46+ypLjcp7zBaSoZhsoQOi/3mu5fw6
 WNZ2opzWv1EFV+mkd+IJJRvseEE/8n96xEOsGCopMjF863lK7VudXfH30A5UdyuN7UbF
 tB05rKoTI4eMN9+n+caFMzv9yWZ276cgY4EtZ1MMtrNYUPdZgC+DNbEp6Tg5vSEge9XT
 cecw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CyZyqFI+XAr4XPDXxXl/eruhWi9Hm+rYqmX4iZ+USns=;
 b=CpUcAYmctxkgnfwLVFsPU0YrztLPP/kqiGbd/i6NT7rbEAvGsJzGcgt/SmeIra/MWn
 riFaoB3jjXZPlG3McMpDPlnH78fvmltXHxb832S0VPstOv0ZjKgdqYW6seQvDf/x+R8a
 /RrnAvuLblnTPd1uNcqIxkLrXkrU/5TL84qrY45+ZbnBC7gi3UFcnoaGKM/7Bc184DwP
 z89nPi0ALoznNy2isNLhS4W3LQ6rUrTHX7Hh1MA3HcPxZYotnpNETSQ+tmbS5/VckfDP
 n0X6WQJcTbC98LkzRM+gC1bTLCH9XVdP+mkSW2azE8uPy1FkAuMBch4LqVbKe0SVf1aY
 ot/A==
X-Gm-Message-State: AOAM531kJv03E46GpL6EqAcwGFu4MyGNBGDnirT0SO3kXfqTRdW9ZN+t
 AzVvcYRaAylCnIeycpD4m9s=
X-Google-Smtp-Source: ABdhPJwSMhh3G/aPj7aRHxIrocMc+jlvrmkMz+HumqEtyC+4OjsjsEBRGXKhcJLLnw6Tc4CoM8EpHg==
X-Received: by 2002:a17:90a:ea8e:: with SMTP id
 h14mr11149292pjz.105.1596050514903; 
 Wed, 29 Jul 2020 12:21:54 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id hg7sm599431pjb.24.2020.07.29.12.21.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 12:21:54 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 0/3] Fix coding style issues in staging
Date: Thu, 30 Jul 2020 00:51:33 +0530
Message-Id: <20200729192136.23828-1-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
References: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Aditya Jain <aditya.jainadityajain.jain@gmail.com>,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, joe@perches.com,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hey everyone,

Following the comments received I've updated the patch.
The patch cleans up coding style issues in the file
drivers/staging/rtl8723bs/include/hal_phy_cfg.h

Changelog:

v1:
Fixed ERROR: "foo *	bar" should be "foo *bar" reported by
checkpatch.pl

v1 -> v2:
Cleaned up multiline function declarations as suggested
by Greg and adjusted spacing in macro definitions to align them.

v2 -> v3:
Broke the single patch in v2 into multiple patches with each
patch doing one single task.

v3 -> v4:
1. Corrected the patch subject following Larry's suggestion.    
2. Merged the second and third patches into one following Greg's 
comment.
3. Removed comments from the PHY_SetBWMode8723B function declaration.

Aditya Jain (3):
  staging: rtl8723bs: Fix coding style errors
  staging: rtl8723bs: Clean up function declations
  staging: rtl8723bs: Align macro definitions

 .../staging/rtl8723bs/include/hal_phy_cfg.h   | 116 +++++-------------
 1 file changed, 32 insertions(+), 84 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
