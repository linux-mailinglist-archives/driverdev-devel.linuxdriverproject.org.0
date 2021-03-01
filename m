Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4916328184
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 15:57:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E081484045;
	Mon,  1 Mar 2021 14:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P06r4K_QcRHh; Mon,  1 Mar 2021 14:56:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D0C883F3E;
	Mon,  1 Mar 2021 14:56:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9641E1BF361
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 14:56:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C33E606B0
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 14:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pnDmYhVoelb2 for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 14:56:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B82DB6009C
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 14:56:47 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id p15so10822289ljc.13
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 06:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=b4YVG9Py4cHgdZaq7sFwMU+nu/B8ixbj2C2mF/a34ao=;
 b=DvgLfYNtlevbtDfdtld3ObKtPYFffPRMdhng+/XCQ3ax0HyhwZh0ogKqa8TgLHnu5K
 hWQxiyDoS/wujFuHt3i9vjPclJQP7BSesqB7qkdUVXuStmWM+SiIxhutzLKMW8fX3gtp
 v8sTBy1ElfAd7IjDy/AnljFwENvK2icg3cxRGznpeXI2YhmWiORsyruRXNAj4SBnINmH
 YN+bnQLqZSdNeL90OIv/WWJ+NQUpchB0Pri0I+z6mDo2Rz6RGrIclVgXCYi5gKrGz4tE
 l022jeUO/+xvPU+HOEbk4HWvAlbkgMgUzePoes/HLnx7KgAkjL6vtRCYJiDDYTLiXGKT
 W6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=b4YVG9Py4cHgdZaq7sFwMU+nu/B8ixbj2C2mF/a34ao=;
 b=QIuHFC2N+GVFak97pgOMExyUDQ/qnt/at8xDsGIDebrphGfWWXfjRc8PYDXP+cE0Ik
 WGUJ7JiR92f4T7xN1UmvxRv+at4ElnKbwxKaDhc5jxR6vdgWJIWeskMKFCUNN0yXUoxR
 BQth2y+kN67N7moyrVJNogwxaEMiAxLXgmN6SyBAVnDNIN3cLZHwFZGdcX0cuWtLmL3n
 /r9GzYKrk++Bs2tuVDMVcHNXVMnK88yF4V8Bs7W4q0HaZducbJ20kdiCaFsDUm94jQ7e
 LjpSc2McUxNTvWwDyaTwyIqtBK74yeCLvsLtvhQL7YjN+G8VO86SP0BOgQGXQDyTIlsb
 6xBw==
X-Gm-Message-State: AOAM5304EmJtqnainqsEQDmm5v02elAWEqC/oz5P53cwBzKEEgoEhvXH
 Pb1BHoXL0OXGXUdxRGgOWu7orn40Y5kb
X-Google-Smtp-Source: ABdhPJx2rmvtYdkZ5Ou9r2xG/zh/XSPyZBF381Avcb5EKq7RsXU7j4tC6WoORzoXIUuAT4OywT472g==
X-Received: by 2002:a2e:a58d:: with SMTP id m13mr9418610ljp.347.1614610604431; 
 Mon, 01 Mar 2021 06:56:44 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id e24sm1652612lfn.62.2021.03.01.06.56.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 06:56:43 -0800 (PST)
Date: Mon, 1 Mar 2021 21:56:31 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 0/3] staging: rtl8723bs: Replace sprintf with scnprintf
Message-ID: <cover.1614610197.git.cfebriyanto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net, hdegoede@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset replaces most calls to sprintf with scnprintf, thereby
preventing potential buffer overflows. The rest I left alone because
they write to a buffer passed by a caller that doesn't pass its size
alongside it.

Candy Febriyanto (3):
  staging: rtl8723bs: core: Replace sprintf with scnprintf
  staging: rtl8723bs: hal: Replace sprintf with scnprintf
  staging: rtl8723bs: os_dep: Replace sprintf with scnprintf

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  3 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  4 +-
 drivers/staging/rtl8723bs/hal/hal_com.c       | 45 ++++++++++---------
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 23 +++++-----
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c |  6 +--
 5 files changed, 41 insertions(+), 40 deletions(-)

-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
