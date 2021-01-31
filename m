Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EFB309E15
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:33:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC4E787090;
	Sun, 31 Jan 2021 17:33:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HQvGb0CYtoSB; Sun, 31 Jan 2021 17:33:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3474D857A2;
	Sun, 31 Jan 2021 17:33:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 548C41BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:33:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 37D711FDFB
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:33:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1xikxQBAGetK for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:33:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9890C203AA
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:33:10 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id u15so8679500plf.1
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OCqlwfO8Y29nGZpydwpkYYTLuT/Y0WSarB/5hJMpIrI=;
 b=clsAZXvxgZ/QYBDXDbtJ4ra1untXoh43m/JKXpoj36mFm0NTF9xDZ4Fi6UUWdXVLU2
 Y2NyRER0oiHmVIINV0iIbfMP9jEN2oswqdjlsA1PdtxmpvHogl3KEFRiiDRXet3IjpbY
 VX3bdj8TnT2DO6FEoc42Z8aIfClVIJYWI7V2GHHaSuLUfbuysrEWnA0dSiQGnbyrMlyD
 vNHavG8UTyA6Td5n4FOSphSDHxBAKT5qDWSqn5jhKXAgY8hmM12i0jDOe3eZGqJB/NBF
 RVsZrpV19eW5wedv6j6jw+usPKIlLbfw2s9RmT+uUdu1qcbzBci4hKPzE6jSCgCGR32f
 +JLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OCqlwfO8Y29nGZpydwpkYYTLuT/Y0WSarB/5hJMpIrI=;
 b=gedSkePcZ7jYFp+Vy3ZDEE/TBA41OO2qhiWVNGHpOzSnQ736gO7G3ABDXRsevtbhMk
 1heRB4Mq0eJl95plhOZcVogHxOJezi6qSqHwe3toW+vw1a5UCXpRL/FvS2aXhp5LjD02
 f/VNvsUTlvIqn3kOMMtQzPc1M6AzFLli5OfILpYXVyfxY/b3/rD0cZx4ZzHAaM3juRKN
 L2m85unuY+8RAilSnhYG28GsvmNWBeamsRISR82b8f/TfSSx8ikeJaqTaapdOanZs8Hy
 h1/0UOeeOIC1JW0jHyqoC4M+bKlC3I98AWG0TDnxxBqz0XcABLV9jo1iUbUqtYU5VRN5
 2MiQ==
X-Gm-Message-State: AOAM531H46648tHBFWwkieFfHwn2k2k/C1XcXcda7lMMSFky+gBcKhu0
 H6cuWEsIxV5jzcWmp3LD22GUenM2KQqAxA==
X-Google-Smtp-Source: ABdhPJxrcDtakyOOGA891Q1rZXY+m90HEiouugXutZuV7hNkCAUtDlwX09zIR5GawshucqOHMUegOw==
X-Received: by 2002:a17:90b:1955:: with SMTP id
 nk21mr8221442pjb.206.1612114390012; 
 Sun, 31 Jan 2021 09:33:10 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id r5sm14566058pfl.165.2021.01.31.09.33.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:33:09 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 12/13] staging: sm750fb: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:33 +0530
Message-Id: <20210131172838.146706-13-memxor@gmail.com>
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
 Thomas Gleixner <tglx@linutronix.de>, ac100@lists.launchpad.net,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Robert Richter <rric@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Johan Hovold <johan@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>, linux-tegra@vger.kernel.org,
 William Cohen <wcohen@redhat.com>,
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
 drivers/staging/sm750fb/sm750.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 029f0d09e..c237a8f8e 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -814,7 +814,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	fix->ywrapstep = crtc->ywrapstep;
 	fix->accel = FB_ACCEL_SMI;
 
-	strlcpy(fix->id, fixId[index], sizeof(fix->id));
+	strscpy(fix->id, fixId[index], sizeof(fix->id));
 
 	fix->smem_start = crtc->oScreen + sm750_dev->vidmem_start;
 	pr_info("fix->smem_start = %lx\n", fix->smem_start);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
