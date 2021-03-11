Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EDA336F38
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 10:51:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F15E56F598;
	Thu, 11 Mar 2021 09:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YSgicQP_DpQO; Thu, 11 Mar 2021 09:51:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27E606F710;
	Thu, 11 Mar 2021 09:51:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2811F1BF2C5
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 09:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14F1383547
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 09:50:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 85OZxZY16hKu for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 09:50:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BB49834EF
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 09:50:57 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id b18so1085862wrn.6
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 01:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=v7u+/xV3QKdov9B1WTObPx2BzVZdwCg4jskV5OYGlkA=;
 b=hF3fIxsLGBJ0FEzYEV2W0GgU8/yJ4EPnKKr5hHsn/iDmPV+8KsQSMfxJ+OTMQThVtC
 RY0tfBY4NE4TAYr1tf7BIl4Z+Kno8Tpkfz2vb5XixlZNbg11LvtG5faVxDpgoMO9MmqK
 Brj8ZU+duoetl0hjqJenU+0GK19niUzotwQ+ymvc+BeW0bd2AkkTQKB/VSQSx2UG9V6y
 p8xZgfVtRB2dO8YoZEURxlLGa/qsjWGCy/boWbEzk1Stm9E+AjCGu2zDvyP7bV/BxiUV
 09GOb+Wo6s9dMXGTl+LFZV3/j2TxP50KHWlv+1ZFtCseP7QyOl0Jgt0FRGlEn7yOPGzt
 3tog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=v7u+/xV3QKdov9B1WTObPx2BzVZdwCg4jskV5OYGlkA=;
 b=Yvybx8SKXD59CKCWIRBIZKLuuzkmFG55UcqqqCtK6N8JkDj0/i5j1xCiAWBQaICxVA
 ee0ndJ0VNGhNHU1L3jCFl/zIRiWCvon+h5Mpr0JPFxv2qOdLapLMEVGBWokm5Gq0KLQN
 dVw2BARFFLbeqYc7tI+QCj5z90eSZt76E7HiCOfcQKXLFQMUKgnJAuC8+HbXTMstgrDj
 WP4OjTAtu51Oz1kmcdIxGUkysmQcNE/BqvLbyk2dbofMlUyBG3lZQg1vdc1c3JtXX68J
 bM7Ua6RAvOiuWtSUy0OVqCDUMAvtM0sbfzmrP74jx058Gm8N7QtuDLd8jlzKPesCpHfK
 deeg==
X-Gm-Message-State: AOAM5334IMyJxJn/+P6m+CwNqJhmOaF5aHdgzw1Ef2sEG0t+7W7jfre/
 wxDnBTOUNyLc0Y2giaIHDHQ=
X-Google-Smtp-Source: ABdhPJx4iMjO1sLKUxIXX9hQKu0kZ/uv2L0MOdqIBzz26tGDyHhy3RPEEJ3CIU180z4XHlznGD8qKQ==
X-Received: by 2002:a5d:4e83:: with SMTP id e3mr7858865wru.82.1615456255306;
 Thu, 11 Mar 2021 01:50:55 -0800 (PST)
Received: from ruhe.localdomain (93-173-65-134.bb.netvision.net.il.
 [93.173.65.134])
 by smtp.gmail.com with ESMTPSA id h22sm3270337wmb.36.2021.03.11.01.50.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 01:50:54 -0800 (PST)
From: eli.billauer@gmail.com
To: gregkh@linuxfoundation.org,
	arnd@arndb.de
Subject: [PATCH v4 0/2] Submission of XillyUSB driver
Date: Thu, 11 Mar 2021 11:50:31 +0200
Message-Id: <20210311095033.20956-1-eli.billauer@gmail.com>
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
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com
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
