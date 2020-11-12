Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E952B062D
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 14:20:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B3E887079;
	Thu, 12 Nov 2020 13:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UDObZE_8Jzmv; Thu, 12 Nov 2020 13:20:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0404986FA5;
	Thu, 12 Nov 2020 13:20:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E02021BF3ED
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 847D12E1E7
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ZQWVrzCLVL4 for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 13:20:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 86E522E1B2
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 13:20:07 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id w24so5527925wmi.0
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 05:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1EvnHF8fJtxX0TvIRevhCbYRdcfG85M/ScXKW761pZc=;
 b=UlKfMiMkOGEGNZogzeC2joDgluOiMtaAKYZlbLR89inDce3Y2gmRzUDP6cATJW6rik
 yJi37oJWC8h0dmq5PmaPrHP/j4w7FBozQtvEi5jTt1yX7Z+1EcZbAou78CciHQAbfaid
 eWYtsROUDZao8rm4Kpy+o/1rfO6WLhZay8uLC9lvRiixueauO6xI7EF+fi4M/b+Kd7n/
 gwnf1w0L3Mmksa29walXzQR5t0/yCu2Sa+yh3ZKiVnfT8EppB3DXaVh7gZMzOqprPy0K
 LhcWxqEHzao6mX15IC8JcjUvRoiZUIrm0Vu0ZQpG4yqpl+uLT3Ft5Gczz6jAwUn0d9cs
 gAsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1EvnHF8fJtxX0TvIRevhCbYRdcfG85M/ScXKW761pZc=;
 b=LlvkdzZtsVLnlAtU/1pFbqVHYPqLEkN9dM2oPMLv+MBTcp3aI/5t6yPp9m9nY9ojaX
 jvstIxe9PovD6+d5p5YAJ021tXwMn5jbKzPvxIzl3ASg6UwNxGIQ6jgcWAlrNRdKUC+s
 h19XeU1YKM0oO4b+jdNpxbv7iBFpgOCDxFRcWFGVAqhBrSUtJktRqpM0bliJ0nC4IuNH
 IUc0gg4gg7Zl5O00zfHzw/79fuDXpAqo5k4aLIgPTahq8ZWeBU0MhAMCmA4w/Lg3UJY0
 qWSZEHEOzizJPnlSI2oRA6ukd/+BAxsVOq4Lybwmx/y1xbqlgXoMV1Nock4AR//qgT2O
 F9rg==
X-Gm-Message-State: AOAM531c3QLYhpDUghw/oY5eX3N8wT/oMNGuzhm9xj8WbZtCmqTFNKjm
 W9BrXkPpkG6d6982FEDulY5dhw==
X-Google-Smtp-Source: ABdhPJyAbNw54rZ5sKbQTYvSpBDpkfMWvOWBElV+daUrnbBIKx42dx1uFwwk5hOuGumsR8Sx+2h9Rw==
X-Received: by 2002:a7b:c925:: with SMTP id h5mr9598763wml.5.1605187206038;
 Thu, 12 Nov 2020 05:20:06 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id t136sm2806326wmt.18.2020.11.12.05.20.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 05:20:05 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/6] staging: net: wimax: i2400m: driver: Demote some
 non-conformant kernel-docs, fix others
Date: Thu, 12 Nov 2020 13:19:55 +0000
Message-Id: <20201112131959.2213841-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112131959.2213841-1-lee.jones@linaro.org>
References: <20201112131959.2213841-1-lee.jones@linaro.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>, linux-wimax@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes the following W=1 kernel build warning(s):

 drivers/net/wimax/i2400m/driver.c:681: warning: Function parameter or member 'i2400m' not described in 'i2400m_dev_reset_handle'
 drivers/net/wimax/i2400m/driver.c:681: warning: Function parameter or member 'reason' not described in 'i2400m_dev_reset_handle'
 drivers/net/wimax/i2400m/driver.c:775: warning: Function parameter or member 'i2400m' not described in 'i2400m_init'
 drivers/net/wimax/i2400m/driver.c:842: warning: Function parameter or member 'bm_flags' not described in 'i2400m_setup'
 drivers/net/wimax/i2400m/driver.c:942: warning: Function parameter or member 'i2400m' not described in 'i2400m_release'

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>
Cc: linux-wimax@intel.com
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/staging/wimax/i2400m/driver.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/driver.c b/drivers/staging/wimax/i2400m/driver.c
index dc8939ff78c0e..f5186458bb3d4 100644
--- a/drivers/staging/wimax/i2400m/driver.c
+++ b/drivers/staging/wimax/i2400m/driver.c
@@ -665,7 +665,7 @@ void __i2400m_dev_reset_handle(struct work_struct *ws)
 }
 
 
-/**
+/*
  * i2400m_dev_reset_handle - Handle a device's reset in a thread context
  *
  * Schedule a device reset handling out on a thread context, so it
@@ -685,7 +685,7 @@ int i2400m_dev_reset_handle(struct i2400m *i2400m, const char *reason)
 EXPORT_SYMBOL_GPL(i2400m_dev_reset_handle);
 
 
- /*
+/*
  * The actual work of error recovery.
  *
  * The current implementation of error recovery is to trigger a bus reset.
@@ -766,7 +766,7 @@ void i2400m_bm_buf_free(struct i2400m *i2400m)
 }
 
 
-/**
+/*
  * i2400m_init - Initialize a 'struct i2400m' from all zeroes
  *
  * This is a bus-generic API call.
@@ -831,6 +831,7 @@ EXPORT_SYMBOL_GPL(i2400m_reset);
  * i2400m_setup - bus-generic setup function for the i2400m device
  *
  * @i2400m: device descriptor (bus-specific parts have been initialized)
+ * @bm_flags: boot mode flags
  *
  * Returns: 0 if ok, < 0 errno code on error.
  *
@@ -933,7 +934,7 @@ int i2400m_setup(struct i2400m *i2400m, enum i2400m_bri bm_flags)
 EXPORT_SYMBOL_GPL(i2400m_setup);
 
 
-/**
+/*
  * i2400m_release - release the bus-generic driver resources
  *
  * Sends a disconnect message and undoes any setup done by i2400m_setup()
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
