Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88537309E07
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:31:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89D0E87062;
	Sun, 31 Jan 2021 17:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l0uqlMyWcHuL; Sun, 31 Jan 2021 17:31:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6BD9087052;
	Sun, 31 Jan 2021 17:31:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 91B901BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 696E9203A5
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MNT75iKlOmKb for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:30:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 0AA751FDFB
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:30:53 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id q20so10005516pfu.8
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K5wzP23ErPEWymRBo16kOdWR6OMTJk3Dg5mRlDwF45M=;
 b=MA1P6sSe/tvl/xNGth0UQ3xw0mCwCUwKzcYbnFlZk0VMO+WcNO/or5FYh85/OjO847
 RVBv/3AuUzEDlVQFFgp/xqZMRzwlcQ0nqYDhhAgzyxfCxGkgJA87Y0GCg6sRHXBr9e/+
 Cgfay9/8nQ25MYannxKkNbiR0vR23vpNIaXauQEjW92KZrSzX8kZQ0/J6ESMsVCtvTJq
 vHxC5a8dszDULQE7vsP2mrdLFmuV8EDcHBQx+HYYcSAY+X1sXMunI2ugIOMl3AZfvDgx
 v7udoYY8R5ztskYwCnNl5UEtuA/DORxTzUuvMQi390UsIa9OYI5+LqDNyG8Xw715Y2US
 CvkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K5wzP23ErPEWymRBo16kOdWR6OMTJk3Dg5mRlDwF45M=;
 b=WmtKk0oDr0UpXfhbE9G+vuH/D+t91tmboIMMkHNNBPB7FaIFvdQ2UJEzi4b4IaquRS
 PcUQg2vOPTFh2qvtdBuUZ+xfi5vLctAMIWAz3XfxDgSaVdsfhEK1vRWdIFnVoEtT/qdq
 vrCVRWWi6pMx9vTTJXAR4fWVVK8y/xxTyVfkw+dKrUM0AmYGnkp0diY6jtYK5hkZpzXG
 NXaexMWElvT3wx8Z+KKOK9xJGlP2dFS0HfK23SkXE5tunPpQql0BclK82l9NU0AHiFtP
 JgFwVc14gkzaoTN61z8C0SWTiT8i+0/aMcIgD36Ri3cxoNnHYUibIoReRsC6rEh1pAYT
 wkrw==
X-Gm-Message-State: AOAM5338ytsnEuKkch75lq9zwC2Ozb8ee3DVDMIGvLc2XIqBn9uUf1Er
 bTRnGeV8NAUbhiOilXRcXtPtFqtodVLsvQ==
X-Google-Smtp-Source: ABdhPJxqAvDMo/qrnNX2hVoJHZiC2bLwNfcChMrdrFwGXf+D/Pv16veh3L2vYHbiTMOhsalbhu1+dg==
X-Received: by 2002:a63:ec09:: with SMTP id j9mr4194282pgh.179.1612114252401; 
 Sun, 31 Jan 2021 09:30:52 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:19dc:4c7b:99d8:200e])
 by smtp.gmail.com with ESMTPSA id w7sm4751206pjv.24.2021.01.31.09.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:30:51 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 00/13] Convert all users of strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:21 +0530
Message-Id: <20210131172838.146706-1-memxor@gmail.com>
X-Mailer: git-send-email 2.29.2
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

This series converts all existing users of strlcpy in drivers/staging to use
strscpy instead.

strlcpy is marked as deprecated in Documentation/process/deprecated.rst, and
there is no functional difference when the caller expects truncation (when not
checking the return value). strscpy is relatively better as it also avoids
scanning the whole source string.

This silences the related checkpatch warnings from:
5dbdb2d87c29 ("checkpatch: prefer strscpy to strlcpy")

The conversions were performed in two steps:

1. The following coccinelle script was used to identify and replace call sites
that expect truncation.

$ spatch --sp-file strscpy.cocci --include-headers --dir --in-place drivers/staging

@strscpy@
expression dest, src, size;
@@
-strlcpy(dest, src, size);
+strscpy(dest, src, size);

2. Each individual automated conversion was rechecked manually for correctness.

Kumar Kartikeya Dwivedi (13):
  staging: comedi: Switch from strlcpy to strscpy
  staging: greybus: Switch from strlcpy to strscpy
  staging: fsl-dpaa2: Switch from strlcpy to strscpy
  staging: most: Switch from strlcpy to strscpy
  staging: nvec: Switch from strlcpy to strscpy
  staging: octeon: Switch from strlcpy to strscpy
  staging: olpc_dcon: Switch from strlcpy to strscpy
  staging: rtl8188eu: Switch from strlcpy to strscpy
  staging: rtl8192e: Switch from strlcpy to strscpy
  staging: rtl8192u: Switch from strlcpy to strscpy
  staging: rtl8712: Switch from strlcpy to strscpy
  staging: sm750fb: Switch from strlcpy to strscpy
  staging: wimax: Switch from strlcpy to strscpy

 drivers/staging/comedi/comedi_fops.c                      | 4 ++--
 drivers/staging/fsl-dpaa2/ethsw/ethsw-ethtool.c           | 6 +++---
 drivers/staging/greybus/audio_helper.c                    | 2 +-
 drivers/staging/greybus/audio_module.c                    | 2 +-
 drivers/staging/greybus/audio_topology.c                  | 6 +++---
 drivers/staging/greybus/power_supply.c                    | 2 +-
 drivers/staging/greybus/spilib.c                          | 4 ++--
 drivers/staging/most/sound/sound.c                        | 2 +-
 drivers/staging/most/video/video.c                        | 6 +++---
 drivers/staging/nvec/nvec_ps2.c                           | 4 ++--
 drivers/staging/octeon/ethernet-mdio.c                    | 6 +++---
 drivers/staging/olpc_dcon/olpc_dcon.c                     | 2 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c            | 2 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.c           | 6 +++---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c | 2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c             | 2 +-
 drivers/staging/sm750fb/sm750.c                           | 2 +-
 drivers/staging/wimax/i2400m/netdev.c                     | 6 +++---
 drivers/staging/wimax/i2400m/usb.c                        | 4 ++--
 19 files changed, 35 insertions(+), 35 deletions(-)

-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
