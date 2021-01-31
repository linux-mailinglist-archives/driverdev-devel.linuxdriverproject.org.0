Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C74B309E17
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:33:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B657685821;
	Sun, 31 Jan 2021 17:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 27wNojgRBbKJ; Sun, 31 Jan 2021 17:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0F02858A6;
	Sun, 31 Jan 2021 17:33:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A14421BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:33:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8E0A9203AA
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ql+4VIqXB2g for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:33:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9482C1FDFB
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:33:20 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id w14so10022181pfi.2
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/kqzKgRXAJuYCJnf9qlqUQ95/4dPlUVexaDClNJu+4o=;
 b=dHvdkQ1j42EiilplhPDB6FhMNUf5ZXLmE/uzaLLqe0OXGT7dcsL7G95zRkDlrlN3f1
 G4VK+txzHPVHWBdH+epzhHSC4vYX0Z0BDgeYkEH9gD5gAKiz3BMn90itchE/OWGv655N
 RnNX45jveBHIdz6Fia3lJ78SR2RYjmNXMAigH9Dzg9BXMITx1Ryj4fX0PbvtDtkeLpVZ
 a5D0q47TCAvw/H026XC55s4TCK+VjLVyeCBSC5BgXVQc+TdNfm53TXhmt+I9LlK0RpID
 aS7aVxf0F9rW0fwPiByzapSFkmDfZibac4dt7sZgbjdUU1JP+ihY7/HwC6Fple5Hk0Ts
 /DAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/kqzKgRXAJuYCJnf9qlqUQ95/4dPlUVexaDClNJu+4o=;
 b=kqONnbaU+quVfcvlOn4z7pDJoufKTMG4FIXeQ5bdHQ72GsW0kVyvwI/SKrffqH8Qwa
 lcUEvukxXnCLyl0Gw/t26plRrMSzF1Vuqu1Ikg8chpmk0IpeOANnUyBc20AHL/5fTgzw
 o89792FhOSfh85NsAhnph1j5H6GNRolvjsC10+n9i9vFHfsNgJgYGRMC2d2afVUYO2Sx
 mYyu1M5rtmZkX5K92we3cyijJDmU1Z6LvSQZNFydvfxxxwY5OWPXvoJtnJsONeCgvR50
 gjvefICZNVRnL7vU2/9ZwCqpfbQt29Q4ZoGFQE8RfgT/4gx5xuc/zmBaDlXPWvLsdKYo
 83iA==
X-Gm-Message-State: AOAM533FCo6iMBVmXdjTg7cXHVpDln9kQm5yl/A+0RoIQWZyDzeFHw3I
 EcX6Ef/NwEHjXkckwnJUYwrwoHe5QpKlTg==
X-Google-Smtp-Source: ABdhPJys/KIIkqbArr3BBk6zxyfIuIi9uPQFd4sUr7ipe/WtqEH4D4K7cPU/+BVgCni/eif1aK0rvQ==
X-Received: by 2002:a62:774a:0:b029:1be:ca30:53ad with SMTP id
 s71-20020a62774a0000b02901beca3053admr12869186pfc.42.1612114399971; 
 Sun, 31 Jan 2021 09:33:19 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id 72sm14944814pfw.170.2021.01.31.09.33.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:33:19 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 13/13] staging: wimax: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:34 +0530
Message-Id: <20210131172838.146706-14-memxor@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210131172838.146706-1-memxor@gmail.com>
References: <20210131172838.146706-1-memxor@gmail.com>
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
Cc: linux-fbdev@vger.kernel.org, Jon Nettleton <jon.nettleton@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Marc Dietrich <marvin24@gmx.de>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 William Cohen <wcohen@redhat.com>, ac100@lists.launchpad.net,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Robert Richter <rric@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Johan Hovold <johan@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Alex Elder <elder@kernel.org>, Teddy Wang <teddy.wang@siliconmotion.com>,
 greybus-dev@lists.linaro.org, Andrew Morton <akpm@linux-foundation.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Mike Rapoport <rppt@kernel.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

strlcpy is marked as deprecated in Documentation/process/deprecated.rst,
and there is no functional difference when the caller expects truncation
(when not checking the return value). strscpy is relatively better as it
also avoids scanning the whole source string.

This silences the related checkpatch warnings from:
5dbdb2d87c29 ("checkpatch: prefer strscpy to strlcpy")

Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
---
 drivers/staging/wimax/i2400m/netdev.c | 6 +++---
 drivers/staging/wimax/i2400m/usb.c    | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/netdev.c b/drivers/staging/wimax/i2400m/netdev.c
index 8339d600e..cd06eaf75 100644
--- a/drivers/staging/wimax/i2400m/netdev.c
+++ b/drivers/staging/wimax/i2400m/netdev.c
@@ -561,11 +561,11 @@ static void i2400m_get_drvinfo(struct net_device *net_dev,
 {
 	struct i2400m *i2400m = net_dev_to_i2400m(net_dev);
 
-	strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
-	strlcpy(info->fw_version, i2400m->fw_name ? : "",
+	strscpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
+	strscpy(info->fw_version, i2400m->fw_name ? : "",
 		sizeof(info->fw_version));
 	if (net_dev->dev.parent)
-		strlcpy(info->bus_info, dev_name(net_dev->dev.parent),
+		strscpy(info->bus_info, dev_name(net_dev->dev.parent),
 			sizeof(info->bus_info));
 }
 
diff --git a/drivers/staging/wimax/i2400m/usb.c b/drivers/staging/wimax/i2400m/usb.c
index f250d03ce..481b1ccde 100644
--- a/drivers/staging/wimax/i2400m/usb.c
+++ b/drivers/staging/wimax/i2400m/usb.c
@@ -333,8 +333,8 @@ static void i2400mu_get_drvinfo(struct net_device *net_dev,
 	struct i2400mu *i2400mu = container_of(i2400m, struct i2400mu, i2400m);
 	struct usb_device *udev = i2400mu->usb_dev;
 
-	strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
-	strlcpy(info->fw_version, i2400m->fw_name ? : "",
+	strscpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
+	strscpy(info->fw_version, i2400m->fw_name ? : "",
 		sizeof(info->fw_version));
 	usb_make_path(udev, info->bus_info, sizeof(info->bus_info));
 }
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
