Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB61309E0D
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:32:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA56487093;
	Sun, 31 Jan 2021 17:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4r1ViD1iEAXF; Sun, 31 Jan 2021 17:32:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43DC887014;
	Sun, 31 Jan 2021 17:32:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B61A1BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86733858A6
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lVy9SrrBvUdK for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:32:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1C0BD85821
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:32:08 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id b8so8650745plh.12
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8z7T30JwVaWaq0MDWkzbLRl1Zk2i9+kaaFA/9JES7Xs=;
 b=Uoqbq4QkgIl9VP9kliAkYuDQm21xB+XmNDU1AxMz1RJf8ufeaxxdJyfbPtuk5Ue9Sy
 MsdwlBDkuXGbADiWX3vmEvafdwHpDVKRSJ9NoYmEi915UYcqRWEQPKMo+cP6rmBvv8bF
 qkIqPu6ztvPeb9ysJJLiyUFmRIrZVzyr9cs/x02p9cSb4Pt62moPq/QSkjFuqmHJ/4V6
 E2opHNxR9Ga44NNvcciGBBq2C025jSGE+TkcgPUq2BZ1KJf5K5IlNq0oVQnrPipGjDLr
 XRzLuQtPzaP5fBIV1iwtCKI5ZRISbgq/zvxGOm4x9XsH6BxWulI21PlLJsi/m4HS2xyG
 1Q6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8z7T30JwVaWaq0MDWkzbLRl1Zk2i9+kaaFA/9JES7Xs=;
 b=tjjxhDpTcLwTDxwnQ9xzQd0J1qIKCO/yND4yCQicm/QN2ZrEU7v2uG5ivtVOeouy4Z
 358WhkdvgMj9EuQMdT7dhN4TIm7gbU8jktjadTbgaaOL51U99sMJO/jC3uJY17+raTJR
 IDlRlV4iuviOWFmcZmfd2wgvPO8egCxyeEdEGcf5X14EARIB3d53i9lgRAl9CAStmdht
 nxSF+ZX2176tuJHM59ZyrOugxsn2HStdD7Fbjh/awk/Fz0+kaEedspnOMv9Gzwu84IRY
 OBH3TOVuO9xqTP9UVbSeR09qkfMXzV/udr7+xswcOpfnHqchrUKTkrPWtHd6WXQxbicN
 HSWw==
X-Gm-Message-State: AOAM531J/Zst53M7JI5sY9/n5Rz7942+Ab7aJQ/L2gWmZXNSQPm/H9eF
 8hOUKfn0WNhtt+x45kf3m1cdXyx/Fy7B/A==
X-Google-Smtp-Source: ABdhPJxlrmQpiP0t2W7sFWGvxmRHJQ1EXLzsFuG1+Bm3Y/OPuczoXDBzhNcDmo58qBTT9cFSwqvRTw==
X-Received: by 2002:a17:902:eacb:b029:e1:2de4:72b6 with SMTP id
 p11-20020a170902eacbb02900e12de472b6mr8975072pld.17.1612114327515; 
 Sun, 31 Jan 2021 09:32:07 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id 76sm14898291pfz.174.2021.01.31.09.32.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:32:06 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 06/13] staging: octeon: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:27 +0530
Message-Id: <20210131172838.146706-7-memxor@gmail.com>
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
 drivers/staging/octeon/ethernet-mdio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
index 0bf545849..1bb91a904 100644
--- a/drivers/staging/octeon/ethernet-mdio.c
+++ b/drivers/staging/octeon/ethernet-mdio.c
@@ -21,9 +21,9 @@
 static void cvm_oct_get_drvinfo(struct net_device *dev,
 				struct ethtool_drvinfo *info)
 {
-	strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
-	strlcpy(info->version, UTS_RELEASE, sizeof(info->version));
-	strlcpy(info->bus_info, "Builtin", sizeof(info->bus_info));
+	strscpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
+	strscpy(info->version, UTS_RELEASE, sizeof(info->version));
+	strscpy(info->bus_info, "Builtin", sizeof(info->bus_info));
 }
 
 static int cvm_oct_nway_reset(struct net_device *dev)
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
