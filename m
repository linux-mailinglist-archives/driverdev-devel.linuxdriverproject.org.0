Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B122EAFE3
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 17:21:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93F328705D;
	Tue,  5 Jan 2021 16:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jhyDqnIFZS6N; Tue,  5 Jan 2021 16:21:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1326587016;
	Tue,  5 Jan 2021 16:21:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31B291BF5A6
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 16:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E39B86A24
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 16:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hmtLfZZv8Z-5 for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 16:21:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 159EB86957
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 16:21:19 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id q75so95849wme.2
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 08:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NCnvHAHkzUFnoq0ovTDscrNRoGR9Jfo5kX1KshXgTPQ=;
 b=GcGVJ5DiKgpyGN650ea3kJ3OqoxuRBt3m7JNWj6eRU7OrMTpwp8DBIDryiiLPGVdI/
 dh50hlfyhdatZLCfeyLtFz6liCbmwUjAZA0paYVlkEe+if3IcA7GuWHfoon1CtYzibn7
 NOJMisZwgH+sXGWdR8FoOkd9toE8qZbuw+bC0o1tvWeJhYaLIWrHV241Ksh5WrdHDisQ
 jleRvutwfmTLsRhQY3sPLgHRUVd8bHeUPoJmKoQAyH1Tj3OU1ZjPML6j/XVr5/d2GHRi
 OnAtNjQ0BO44HCrGMEgJQvlcM/LOdwjdiym4a3zEP29UuYEMyFJoGg8StowwQ1hMI4be
 0IhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NCnvHAHkzUFnoq0ovTDscrNRoGR9Jfo5kX1KshXgTPQ=;
 b=k2JSvyiSkjOGVE1NZR0VqHGxBzatEDRSjSLrWE6WcN80gBxM8CL9frAjO2yOZX0xwO
 ugksZ+ZSWlnxtCKCWwv/MTJ4lVGtLeIvGs4nvp7Hzlg1K5h9rzwQ8eElV56FWmBCKNdc
 huiyotXm4ELYsAgv8IKVZ0rx3SpAkyNrcbR/onQdCrU1zwoWvT1BRcfeuuP6SSdel5OX
 9WWdppsW9VqcptxackxbT/+nrUn84LysSHdDr3YNH1YeBIamILhrw3suf4YIWX4G3n9l
 qNMHfo++EvMXr5S9azV1vwxLl+wQOnojeZaUnN3TSsZwDkEv0y4Zr+ZfVbrrWYe7DMHY
 HLkg==
X-Gm-Message-State: AOAM530OokS996JNcbm8se6NUXaqEbgDN6CZ9Inmp14terlf4fKx2YVz
 p+AtZuHOeTrCwBEw3lTLBuC7JA==
X-Google-Smtp-Source: ABdhPJzJVka5prqJOPLT5+7ebYaW2AjwFFLUlLmL+aeR3cbuNjNdTMNyHZLDLIGue0s1kqlGKOCXRg==
X-Received: by 2002:a1c:6208:: with SMTP id w8mr57053wmb.96.1609863677626;
 Tue, 05 Jan 2021 08:21:17 -0800 (PST)
Received: from buildbot.pitowers.org ([2a00:1098:3142:14:ae1f:6bff:fedd:de54])
 by smtp.gmail.com with ESMTPSA id r82sm6654wma.18.2021.01.05.08.21.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 08:21:17 -0800 (PST)
From: Phil Elwell <phil@raspberrypi.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 Stefan Wahren <stefan.wahren@i2se.com>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v2 3/3] staging: vc04_services: Add a note to the TODO
Date: Tue,  5 Jan 2021 16:20:30 +0000
Message-Id: <20210105162030.1415213-4-phil@raspberrypi.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105162030.1415213-1-phil@raspberrypi.com>
References: <20210105162030.1415213-1-phil@raspberrypi.com>
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

Record in the TODO file that the address of "&waiter->bulk_waiter"
should never be returned to userspace.

Signed-off-by: Phil Elwell <phil@raspberrypi.com>
---
 drivers/staging/vc04_services/interface/TODO | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/vc04_services/interface/TODO b/drivers/staging/vc04_services/interface/TODO
index fc2752bc95b2..0bcb8f158afc 100644
--- a/drivers/staging/vc04_services/interface/TODO
+++ b/drivers/staging/vc04_services/interface/TODO
@@ -91,3 +91,7 @@ The first thing one generally sees in a probe function is a memory allocation
 for all the device specific data. This structure is then passed all over the
 driver. This is good practice since it makes the driver work regardless of the
 number of devices probed.
+
+14) Clean up Sparse warnings from __user annotations. See
+vchiq_irq_queue_bulk_tx_rx(). Ensure that the address of "&waiter->bulk_waiter"
+is never disclosed to userspace.
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
