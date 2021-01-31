Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBEE309E08
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:31:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDAF586FEB;
	Sun, 31 Jan 2021 17:31:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d2kmLt3D7maM; Sun, 31 Jan 2021 17:31:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1742985005;
	Sun, 31 Jan 2021 17:31:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F6A11BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:31:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 75022203E1
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qAwjbSjUb4qq for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:31:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 8CCC01FDFB
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:31:04 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id j2so8769344pgl.0
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NsrHxAV5PZRT0YgTo4A1rjxZSTbbsgPPfPS9F8n4M0s=;
 b=H+vbac//Dohzhqf4uzo7Wh1bTpOU9crwTKPPrwUfD+VR6tfJ3JlTfaTs3nK3gpqBAK
 DcBUADLAAizhT3jdb44+vU3a86Ury9d03ieXl+El/SRi5d/1a4bPMe715kLrYMpck2nQ
 s19JaeOV4UbPtkR9P5VgJbR8XgDATxkolNO5mLGbBUf3+wvzK2zfrCjqU6aCDBjZ2i6r
 /CsKETyuNQ7bM7LhEnoPAjJlCP4EPP6nC8QtggDaUarJfQA+VB6LiF8qiM6Wyf8vwpA5
 3YLeSTHeGx2eZSxcabtGMTA97EDpmRuiDk2b3u7MitW0ds1a7+jd7OmJdygBBtgyEq84
 il3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NsrHxAV5PZRT0YgTo4A1rjxZSTbbsgPPfPS9F8n4M0s=;
 b=txO3774+Qc0ON1ZyzzfYTbarvD9lJ8QXXi4rh6+mDTBIbMkWSoOFGAZJTBOaRHGG9A
 x+jqNv6tQf4eJByDdwdcoxI4KJ3gXQMYoZQyhWyjko/rDpfEkSRCGeZKsIrWdwGT/tIg
 KLyVp3vAtOEb/VBavSI94wkcVCMa03XaLkoThPQ++M9ibqTPbIg1LHyecJtIScYOgXxw
 AI+9TBlXMHu0WOS58JzDOm0Q/xSOufqPu9RpdORmGG0Qc3gZT9tddEvGIB7SvxKMSGQR
 fyVfG9wf1ZUSfjb+CojFBvQ1VgWJO+aZ3Rsb4TLleacABnMboov3WrRj+rzc4mvh/PG3
 hw1A==
X-Gm-Message-State: AOAM533pDsOB6WeJc+fJjBRUxjIex3PYeJhZYrXmo1/66kZ+Zaj3WctT
 wy+0O276OKx/lIait382SRX1KHkpGUcDcQ==
X-Google-Smtp-Source: ABdhPJzda11kt+qccbnF1yfOwNWF3nMY2iL53BppiuYflQwHqJhYz7LlOJWZ4ynLYwJZqbjXTkkFXg==
X-Received: by 2002:a62:5505:0:b029:1c9:2c59:b1ff with SMTP id
 j5-20020a6255050000b02901c92c59b1ffmr12194567pfb.69.1612114263947; 
 Sun, 31 Jan 2021 09:31:03 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id a12sm1929409pjs.53.2021.01.31.09.31.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:31:03 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 01/13] staging: comedi: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:22 +0530
Message-Id: <20210131172838.146706-2-memxor@gmail.com>
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
 Mark Greer <mgreer@animalcreek.com>, Marc Dietrich <marvin24@gmx.de>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 ac100@lists.launchpad.net, Stephen Rothwell <sfr@canb.auug.org.au>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Robert Richter <rric@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Johan Hovold <johan@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, linux-tegra@vger.kernel.org,
 William Cohen <wcohen@redhat.com>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Alex Elder <elder@kernel.org>, Teddy Wang <teddy.wang@siliconmotion.com>,
 greybus-dev@lists.linaro.org, Andrew Morton <akpm@linux-foundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Mike Rapoport <rppt@kernel.org>,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>
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
 drivers/staging/comedi/comedi_fops.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index 80d74cce2..df77b6bf5 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -939,8 +939,8 @@ static int do_devinfo_ioctl(struct comedi_device *dev,
 	/* fill devinfo structure */
 	devinfo.version_code = COMEDI_VERSION_CODE;
 	devinfo.n_subdevs = dev->n_subdevices;
-	strlcpy(devinfo.driver_name, dev->driver->driver_name, COMEDI_NAMELEN);
-	strlcpy(devinfo.board_name, dev->board_name, COMEDI_NAMELEN);
+	strscpy(devinfo.driver_name, dev->driver->driver_name, COMEDI_NAMELEN);
+	strscpy(devinfo.board_name, dev->board_name, COMEDI_NAMELEN);
 
 	s = comedi_file_read_subdevice(file);
 	if (s)
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
