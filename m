Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE75211548
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 23:44:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1EC69896CA;
	Wed,  1 Jul 2020 21:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vF5tQ-Oy2mbn; Wed,  1 Jul 2020 21:44:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D74FA896C0;
	Wed,  1 Jul 2020 21:44:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7A91BF5DF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2FFD626EAB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lz-0mJtQGbX1
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by silver.osuosl.org (Postfix) with ESMTPS id A0DFF26639
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:27 +0000 (UTC)
Received: by mail-qk1-f173.google.com with SMTP id l6so23747283qkc.6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 01 Jul 2020 14:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6T6YA20xC+S8lY2QXb/Ucmp9XTdM61eZOyaPtvN7At0=;
 b=ZWfsgFDs5fyJRYthu0lF973mXzdqnuSkbZmqOZSHagFjE91Ya3RBxXR4upE9QmhaFk
 BQtBSHxCcp4wu6w+xKY7l5+bTWWVlVZX3Sk0XMjhwpxasdBfK4AZG2FnTMrNkIvuGSF/
 HfxC271y5lIDhfA+JpOBZUiRqgi/WW8S5s+csoN3v4BHQaIqIVT8bL+Z4s8hkNzXhlUi
 SCl4QbtpYBqY8VC/bMyQHisYpYX8M2eH/NQtS75yM326zb0DH8e6oc/zhN47Y9od1KJe
 NnupPl7zGAGoEfwuG/C36e3lOWkvwTpLszQ2l2eFaf5dWl8yPIKbdwFLbApLG2L2WTLE
 K+rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6T6YA20xC+S8lY2QXb/Ucmp9XTdM61eZOyaPtvN7At0=;
 b=PbfBhh+XWHAHFosJWs+nGKF0W18I/4r9D+cmGZvMtGJz/P22QjO1QtQUEe//aQRrle
 JjpHB3ynKGcemDMREt4Rtb0m+kXWTtan1xgkF1dPX0FHQnSC471Lprw5ruJc9+/gdc8f
 JhxFSwMdoCiWkL1pCnEaRsscV/8jY1gaWA0tWNWBgzo155EoV9DMuv1viAoq2432Lddi
 Vp5GnyDtZmaPGJioRft0mAQRsaxUO2kVFeRE/xJ4RCNBjYEU+/tRQLPrEsAk0rRvEPXO
 lcgmsXxkmjHWhbdscwdgWnjJ84aw7+sHUoEIkVh4v9mEqKjp/nIcZLFWIyv67Yd+hLCu
 8EUw==
X-Gm-Message-State: AOAM531nyUW7v97mi5Dxm41l7mwH3WYA5Ktmz1sNhAEmo033d/kiRJbC
 /GshFtOyPa1sGJhdB3QoNEE=
X-Google-Smtp-Source: ABdhPJy0oURimzNiMwWDDUTfp6kR0DX7Bogg2vB5fJ5yiu8Qlgor6LtLGJH7ylqJb71ZLZRnOF3+Ug==
X-Received: by 2002:a37:9a01:: with SMTP id c1mr27009390qke.111.1593639866662; 
 Wed, 01 Jul 2020 14:44:26 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:4cd7:9852:3dad:c366:f019:19b3])
 by smtp.gmail.com with ESMTPSA id x197sm6822962qka.74.2020.07.01.14.44.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 14:44:25 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH 0/2] staging: rtl8712: Minor cleanups
Date: Wed,  1 Jul 2020 18:44:18 -0300
Message-Id: <20200701214420.5566-1-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: Mauro Dreissig <mukadr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series applies minor cleanups for rtl8712 staging driver.

Mauro Dreissig (2):
  staging: rtl8712: Replace FIELD_OFFSET() with offsetof()
  staging: rtl8712: base_types: Remove unused macros

 drivers/staging/rtl8712/basic_types.h         | 8 --------
 drivers/staging/rtl8712/hal_init.c            | 4 ++--
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
 3 files changed, 4 insertions(+), 12 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
