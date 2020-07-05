Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C2A214945
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 02:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1FB686C04;
	Sun,  5 Jul 2020 00:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n-kTMzGctq4Q; Sun,  5 Jul 2020 00:22:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B668286B77;
	Sun,  5 Jul 2020 00:22:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B8FF81BF8C7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B115B20401
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y+LLhiwwUnCQ
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by silver.osuosl.org (Postfix) with ESMTPS id 058BA203FF
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:30 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id 80so31896599qko.7
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 04 Jul 2020 17:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uRxUcUjnl+XCu/f82bBSC2HRRA8vlg0Y0pDLtzeI3cQ=;
 b=dpF+fqWlAmI7CseVBbz1zT6+kTxmiRLZyL0dPOsKs9ICDtAPfx13jAn1xfBbQVP+kE
 mW9M7vx1yZJYHHb1qsMUkYR0B3QVB/zl3mNtexCrBe4KJ23NRB10fh3G/R+T77Uzez02
 M6rD+JG+g/0uPfq2xJwqOEU0oqDTyWLK2D2qK4AYD66d0G8VVggGt9jgNecYB6LO23wx
 zwG3qRg14tWphCNqZDeU+bt1c843PRktKIH+V1EU5Atrsy+/OaGuqaRgbs56noukul+q
 Z7yqTx6N3dVNim/L+owoBGXA3TsziVmP20tqhyhMF5J1ccrFkTnExh2mLPPa/YCsHwAz
 fPSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uRxUcUjnl+XCu/f82bBSC2HRRA8vlg0Y0pDLtzeI3cQ=;
 b=S2TfcjAtlcAgzVBBvlLeNH0E8bHOlyc+fQI+k+y49E3+GUOeUfkTEwGamf3U7fWqua
 AcW2TQnqNkt0MDU9YPDq7zPJWpdsn/hvMvSJnj3/fLBx0oZe5UcGwQofVnIbLU6NDQDr
 H/T6+5blD9aFEZwlIW7T9g3G6nGmVvxArX8PDcqWIFMq4UR0Z+VZ28sSNJCQHq4a3zOO
 UqQyYojuPhuG1Ppj86xk6PyK+iQwvtJ9UVbXaJ1f1XQDpP9fqYftR0aXLWhgd73zu4ul
 unvE5uKAIJWcREvGHKqpLPdjjMsUFW1fll9m/Q2avroIrQvq0FZUXp9XjGrbOLVScemc
 knbQ==
X-Gm-Message-State: AOAM530Njnq+8yLmdUbTzS+0H3YwiuAew3PTnws7trt+0tyaP1Y2fx7o
 tujBR6DrTaF0zjNVcmBNKUU=
X-Google-Smtp-Source: ABdhPJylNq4p1A8eXop8nIKcStM5AiPeX3ogn3KHpECWltdaS3YqmVryhIcRIsDEfXKWsUuVYSpZsw==
X-Received: by 2002:a37:850:: with SMTP id 77mr40203859qki.209.1593908548905; 
 Sat, 04 Jul 2020 17:22:28 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:1a4c:230b:91f2:972d])
 by smtp.gmail.com with ESMTPSA id v62sm10254072qkb.81.2020.07.04.17.22.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 17:22:28 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH 0/5] staging: rtl8712: Code simplifications
Date: Sat,  4 Jul 2020 21:22:10 -0300
Message-Id: <20200705002215.17968-1-mukadr@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series applies some code enhancements to rtl8712 staging driver.

Mauro Dreissig (5):
  staging: rtl8712: Replace constant 49152 with expression 48 * 1024
  staging: rtl8712: Simplify expressions with boolean logic
  staging: rtl8712: Use ETH_ALEN instead of hardcoded value
  staging: rtl8712: Remove variable 'raw' from rtl871x_open_fw()
  staging: rtl8712: Use proper format in call to dev_err()

 drivers/staging/rtl8712/hal_init.c     | 18 ++++++++----------
 drivers/staging/rtl8712/osdep_intf.h   |  2 +-
 drivers/staging/rtl8712/rtl8712_recv.c |  5 ++---
 3 files changed, 11 insertions(+), 14 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
