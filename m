Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E842EAFE1
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 17:20:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F1F586A4D;
	Tue,  5 Jan 2021 16:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M72BCQ+jmaZ8; Tue,  5 Jan 2021 16:20:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF72286A25;
	Tue,  5 Jan 2021 16:20:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4332C1BF5A6
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 16:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3CCD687016
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 16:20:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bEXQ7ROhKlp2 for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 16:20:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EED4E87011
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 16:20:40 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id e25so105490wme.0
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 08:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=amMDYdE1HwB0WK+aIbkC3QuSFtKRTKZ4qviNmoyJMUA=;
 b=mHASkIvWK2g3oOY6ikhu7Y32PpyxHXD6Zq8XuVGq4Oe7yMIPft36r6TAp0r7YBEJFJ
 Z4lSAjdHzKBuXHsX8MhWaffFfP5ll1oQYrSeLhwzFE/2FHUWlkJjLguAEUi0xT22AEb8
 PGdJMHEycAZ2B+gjc1AXHA1j7I39A5Y04EZTFZR1edVY+WJGTyOos5+gj5oWDLE6Pwir
 rE9H0A1XmSU8J015jeO8Kp84WGGPvSWEn3h2Ymaq+YKHxzz0BBZfDeii2fmi2zDIAuNk
 AQ+lnvvotXGrA9yalixQxaidrlOp6w/eIRX5NHhB7ewmwMOeoP1TPNQD7Nlh8Ez/h5dD
 qVJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=amMDYdE1HwB0WK+aIbkC3QuSFtKRTKZ4qviNmoyJMUA=;
 b=U+ixOIV/Wpp09caOqghI6JF8XVGC3i5j4i+/3awyoSfXROiqhEGHeP7NJBKaL/z6HK
 tz63putbr3m6PBe1S9nY122sx0yVjtBAKEku5VI9qQYjoWgOlVS2bo0a6U5O9OzKEqfZ
 N1MnO7usHjE41u6NqhriiqWyThCJ2fobQwUk4qZybbW5M0vAzUBrrK7AR2fVxx4ljsx6
 /yhU//7o23Ty3wc4mO3OUqVW4gaUOxZTcJi2cJ+mDoM066OjeQGy+2meQl0sItHCFyON
 kCWLLj1GCnFbCHN1/6bJnh7lMBU1EcNGYALP7FtMByIg0/gf18xVP24S7K9VYzoZ+lR8
 JJ+w==
X-Gm-Message-State: AOAM533cYk5wMBA0Pksb8vhbYgnLEUMhyRMC4bLmxa8zjFv4bMe7E1YJ
 GKLAFqyC8F8B1SQ79ykU2I6IzQ==
X-Google-Smtp-Source: ABdhPJxeI583lCyrqA9RmKhDOT9SoGEFZsgFAgBrrnnNpTK8pYh7AXzweAhM3C552e5oz384VM5QJw==
X-Received: by 2002:a05:600c:210e:: with SMTP id
 u14mr65084wml.48.1609863638517; 
 Tue, 05 Jan 2021 08:20:38 -0800 (PST)
Received: from buildbot.pitowers.org ([2a00:1098:3142:14:ae1f:6bff:fedd:de54])
 by smtp.gmail.com with ESMTPSA id r82sm6654wma.18.2021.01.05.08.20.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 08:20:37 -0800 (PST)
From: Phil Elwell <phil@raspberrypi.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 Stefan Wahren <stefan.wahren@i2se.com>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v2 0/3] A trio of vchiq bulk transfer fixes
Date: Tue,  5 Jan 2021 16:20:27 +0000
Message-Id: <20210105162030.1415213-1-phil@raspberrypi.com>
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
Cc: Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The recent batch of vchiq improvements broke bulk transfers in two ways:

1. The userdata associated with a transfer was lost in the case that a
   non-blocking mode was used.

2. The 64-bit ioctl compatibility shim for a bulk transfer used the
   wrong ioctl command.

This patch set fixes both of those bugs, and adds a security-related
note to the TODO file.

Changes in v2:
- Expand the commit message on patch 1 to clarify the impact of the
  bug, and add Tested-by.
- Add commit 3 with an additional TODO item.
- Change the name of the patch set to be numerically accurate.

Phil Elwell (3):
  staging: vchiq: Fix bulk userdata handling
  staging: vchiq: Fix bulk transfers on 64-bit builds
  staging: vc04_services: Add a note to the TODO

 drivers/staging/vc04_services/interface/TODO                | 4 ++++
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 6 ++++--
 2 files changed, 8 insertions(+), 2 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
