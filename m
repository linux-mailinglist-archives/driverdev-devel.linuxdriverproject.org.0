Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42077309E0C
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:32:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE42F87060;
	Sun, 31 Jan 2021 17:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xj6jYAhX-7ik; Sun, 31 Jan 2021 17:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 55C3287052;
	Sun, 31 Jan 2021 17:32:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66A241BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 38843203AA
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jSvsiYMaIDgh for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:31:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 7F0E51FDFB
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:31:57 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y142so2018849pfb.3
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qJkSDHaVmo+fJzrmd85PruQ7oVf+hPtIrZplmqs4FsA=;
 b=jseMqVYIOvqKcPA/OwJOxqo47r1bns7PdZ92MYc8WnLySr4D9EAs7DqgJS0+aE8YHp
 R8TRcr2mBuWyyAAy5kMFW74lfmeeAxESnQcBgiyn/Ygtzlc+X17sQFhrX3RuiD7jBgjA
 kQQFOh8zaCwGjKXkO8QQoXf8ti/f7oF7bAzBdFLX6mLNQ56pgi8gdyBaigXw2eEJbFei
 JREaN7WndHVD5yH56eDTFcjU5L0djrKpOR1X+ITgwK8+NY3wg0y3WgqE03YhgPG9aOLt
 uqhg3IIWZ1ghNrXu+IabOuwbbptykfG8YcpVq4enlECFi01637z7p7cYH+nTI21I+C0T
 dnhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qJkSDHaVmo+fJzrmd85PruQ7oVf+hPtIrZplmqs4FsA=;
 b=jQfrrpV6UydoY74GLpfO5hRb/VE8NuyjLX7L3G73l1Nw7kBDI7yP75wFs5995tZrVl
 LMN6Fh7YW8YVhmESf5rj8ZDK5NiaiHQMsXigJk9xad4ZbsMP3epWJOsm2QIs+9j1arve
 cN+ifGyC93D4Z0EyKNG6mLeRuMT3+RdYVe1kZGqzN68tjykgM75QODJ3CsIIma5uPDF1
 5YG6+X2u/XQGOtpjA6/JX3kq5nuLXo5C4xLk3bNwO+eOFY7BPfrtMPuR2KQ88IueYni7
 UY1tkiZSl49KLEJ/lN2AoYiHZ8MsdGax3oKe4iLsI45FnXZmtwf61dqHIHxBc0POWypv
 yd7w==
X-Gm-Message-State: AOAM5339bSm2+zAAkr0bsnDxrrx+4rXD9yx51vz95spAY6te3ue3ibKd
 Nf6ahB7tlQlwlBnmUkJhNcuubL1U21vOoQ==
X-Google-Smtp-Source: ABdhPJx20zg4Eel9orHc/z6tQYJ/L78aqH6IGuvnMGtz2Lor1bTYfNI80zv9b09QNyvsIwBHoDcw5w==
X-Received: by 2002:a62:32c3:0:b029:1bc:7e0:ae66 with SMTP id
 y186-20020a6232c30000b02901bc07e0ae66mr13089095pfy.53.1612114316906; 
 Sun, 31 Jan 2021 09:31:56 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id z2sm5127218pfa.121.2021.01.31.09.31.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:31:56 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 05/13] staging: nvec: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:26 +0530
Message-Id: <20210131172838.146706-6-memxor@gmail.com>
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
 drivers/staging/nvec/nvec_ps2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec_ps2.c b/drivers/staging/nvec/nvec_ps2.c
index 45db29262..157009015 100644
--- a/drivers/staging/nvec/nvec_ps2.c
+++ b/drivers/staging/nvec/nvec_ps2.c
@@ -112,8 +112,8 @@ static int nvec_mouse_probe(struct platform_device *pdev)
 	ser_dev->start = ps2_startstreaming;
 	ser_dev->stop = ps2_stopstreaming;
 
-	strlcpy(ser_dev->name, "nvec mouse", sizeof(ser_dev->name));
-	strlcpy(ser_dev->phys, "nvec", sizeof(ser_dev->phys));
+	strscpy(ser_dev->name, "nvec mouse", sizeof(ser_dev->name));
+	strscpy(ser_dev->phys, "nvec", sizeof(ser_dev->phys));
 
 	ps2_dev.ser_dev = ser_dev;
 	ps2_dev.notifier.notifier_call = nvec_ps2_notifier;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
