Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C68332426
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 12:35:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52D8340178;
	Tue,  9 Mar 2021 11:35:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A7qilOLa3XkS; Tue,  9 Mar 2021 11:35:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21CF540184;
	Tue,  9 Mar 2021 11:35:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E075A1BF288
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 11:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D04514017F
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 11:35:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GTvTNob1feNt for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 11:35:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 010434017B
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 11:35:01 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 r10-20020a05600c35cab029010c946c95easo5770300wmq.4
 for <devel@driverdev.osuosl.org>; Tue, 09 Mar 2021 03:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=v7u+/xV3QKdov9B1WTObPx2BzVZdwCg4jskV5OYGlkA=;
 b=V3WI0GPWQyIGcjgIYQCtrZRV27jeHk3iMSBwP1Cv17RuVNXd/NOQ8N4WCzIicAYSOb
 dRqEj2GojMv4RHd3PE5cfT5Rps7cHljV7OebKreEV4g5yFG1KkdfjAQ/vZXS/Clr0IRP
 AKu03Orwk2RliqOGWAu7rHnQ7BtdhOj8XC4q6x7dmxwF1u9oGY7PmhIW9wnhlASunaF0
 1+TYGg7NG6x2qAKVk4fS/zmf8xmz+b54tVpftoY7oPZ8rhG50rVnBbhErmmNEGdE4+2A
 bURc+S+aH9PQPLyQZN/f9pbE4Pev+fysf2dbUJkwtNNeQmla4Pt8lU+drkBR23MJseXt
 KxIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=v7u+/xV3QKdov9B1WTObPx2BzVZdwCg4jskV5OYGlkA=;
 b=n4XV5S7fcmQp0AmhbFGuPAZ82WLQsN91e8ndFKRKgPrHewvGcbkr1ZpBWKijWrlmlu
 adnqWDGgI4SvD6GY3zc6+dkaj+Qmjr5XJsF7/c+DBm0QpPeAG8akZ2y2CuCnr1XYIQ8K
 /xex4M82+4fTjnD8iLs/koEGPc/su4DDRt1Rx2l7cK+ooUKxUl7b0CmGcnjPTbodrCrx
 JfkIqHgkczHKpD9P7cwgbvz3UrqGe4jWS4vFhtYXqJvSD6/q8GxnJloeToVcLhGWOVs6
 Jj7/glKUKx6aAaX1FGogiM8r1w3vBg7LSYdb4dAHi6FUTLbqlNyqkw+ofL/KCuPv1Fxq
 ssWw==
X-Gm-Message-State: AOAM532at9tRG6nOXXmVNzkKc9CsRItbxg3eLsug3BXRz6UW7g06T3TY
 TUdw2m1oQVKabqTLE+hTi6c=
X-Google-Smtp-Source: ABdhPJwnYdVZJ5jrOI4hEsR5AxDGFNsDTBe5tPOyb01A8o3AIB7nCJHhFd8acUwm7yFKdUv0kuFWHg==
X-Received: by 2002:a1c:cc08:: with SMTP id h8mr3570871wmb.188.1615289700128; 
 Tue, 09 Mar 2021 03:35:00 -0800 (PST)
Received: from ruhe.localdomain (93-173-65-134.bb.netvision.net.il.
 [93.173.65.134])
 by smtp.gmail.com with ESMTPSA id z1sm23654327wru.95.2021.03.09.03.34.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 03:34:59 -0800 (PST)
From: eli.billauer@gmail.com
To: gregkh@linuxfoundation.org,
	arnd@arndb.de
Subject: [PATCH v3 0/2] Submission of XillyUSB driver
Date: Tue,  9 Mar 2021 13:34:23 +0200
Message-Id: <20210309113425.61296-1-eli.billauer@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Eli Billauer <eli.billauer@gmail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Eli Billauer <eli.billauer@gmail.com>

This is a resubmission of the XillyUSB driver, which is the USB
variant of the existing Xillybus driver.

Because these driver share some API related functions, this submission
consists of two patches:

(1) A patch moving away Xillybus' class related functions to a
    separate module file.
(2) A patch adding the new XillyUSB driver, based upon this new
    separate module.

As far as I can tell, the shared code between the Xillybus and XillyUSB
drivers covers everything that makes sense to share. I submit XillyUSB as a
staging driver, with the hope for a detailed review on this issue, as well
as a general code audit.

Thanks,
   Eli

Eli Billauer (2):
  char: xillybus: Move class-related functions to new xillybus_class.c
  staging: Add driver for XillyUSB (Xillybus variant for USB)

 MAINTAINERS                            |    1 +
 drivers/char/xillybus/Kconfig          |    4 +
 drivers/char/xillybus/Makefile         |    1 +
 drivers/char/xillybus/xillybus.h       |   10 +-
 drivers/char/xillybus/xillybus_class.c |  263 +++
 drivers/char/xillybus/xillybus_core.c  |  181 +-
 drivers/staging/Kconfig                |    2 +
 drivers/staging/Makefile               |    1 +
 drivers/staging/xillyusb/Kconfig       |   20 +
 drivers/staging/xillyusb/Makefile      |    6 +
 drivers/staging/xillyusb/TODO          |   13 +
 drivers/staging/xillyusb/xillyusb.c    | 2184 ++++++++++++++++++++++++
 include/linux/xillybus_class.h         |   30 +
 13 files changed, 2549 insertions(+), 167 deletions(-)
 create mode 100644 drivers/char/xillybus/xillybus_class.c
 create mode 100644 drivers/staging/xillyusb/Kconfig
 create mode 100644 drivers/staging/xillyusb/Makefile
 create mode 100644 drivers/staging/xillyusb/TODO
 create mode 100644 drivers/staging/xillyusb/xillyusb.c
 create mode 100644 include/linux/xillybus_class.h

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
