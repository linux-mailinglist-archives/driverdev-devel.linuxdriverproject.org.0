Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D88A1309E0A
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:31:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E19A085B11;
	Sun, 31 Jan 2021 17:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DhnjrnCgUNSx; Sun, 31 Jan 2021 17:31:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ECB8C85815;
	Sun, 31 Jan 2021 17:31:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 133841BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 00D08203D7
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mP6nFF0qO4pg for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:31:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id D231A203AA
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:31:26 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id q20so10006181pfu.8
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=elcSuzCsfiYge55RbGFb9kTR1L7/5bJ4aw6jmtvexpM=;
 b=WpI7Td9mz/HM9oDzyPiwhy3IQV1iTBEOIEuZa/D/SKv6J/4n+bccfqaJqtRyeBFtkU
 AIunppgOPhltRXbfPQ6i0CdmjTT4pKHeTUOtLCVsoMBKww5Jz3NbeS3SPRY1nGl3ZL98
 dlF0yT1h4whxfcj5bDWsLxsIOKibEfYPvaYWUwEpmk+9xaCMF7BIEcGIPL6YWg0IGrK0
 s0GFcDAQ140iZGRdWkBHTMyeoMmOeCVyJEAnQu+L3l3DNAxKFhE2O82X41fLo6AoDgbV
 SoHs/+ef54Us6Jh+NeZKEQz8yE/n3lBzU/QbQ3xu+pAVSawxWsUo1qFRP6kOTiXfbspM
 xm3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=elcSuzCsfiYge55RbGFb9kTR1L7/5bJ4aw6jmtvexpM=;
 b=KuSOxgiB5xrfKioHq2GM/8ovERuoJ3LtQTKMoISwtK3i4qp9QrVr3Lh3XXmPlMcUu7
 +9xO+BnZaanMgwYzvepkRbVZ1LV3vx+V/YaQyu7veQZyCDVuMI/qcVZ1dRMTRv1GpCyT
 S051XYTVdDW5IaY+tzW9YSFb+9i3Fa5RzSEaqvaR7Ueg+WhyK09Q+nA4BvbqVLVExpwE
 K0DaTSCsJwi8ZVyQC6yClVW/j0zAAM5OAlYdaJeDq0+mUHKLPEA2WRHYMqz2ZEWejI+D
 7xzj1Bi5zOflRKHrRfNxGG6loAdhzmlOjhOtJhKbf3Lh0PP8wfLUtrrt3B+0uolyvfdw
 BpuA==
X-Gm-Message-State: AOAM532jT9TXHZXPKHg6DQC7SQ1zB97p8HlspulJTnNf/SnsKaulDaHQ
 lDp6/n5aj1mwOS5dkwpnmA+p5xcPSX3VDQ==
X-Google-Smtp-Source: ABdhPJyxYeeH+ESPtB0JAl+VwK7F+t4XhpvKZBK/qumKbzweqJodO0pWHAslA+k1SpI5/DtlxhBkKQ==
X-Received: by 2002:a63:1a44:: with SMTP id a4mr13091045pgm.41.1612114286266; 
 Sun, 31 Jan 2021 09:31:26 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id q22sm15746139pgi.66.2021.01.31.09.31.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:31:25 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 03/13] staging: fsl-dpaa2: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:24 +0530
Message-Id: <20210131172838.146706-4-memxor@gmail.com>
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
 drivers/staging/fsl-dpaa2/ethsw/ethsw-ethtool.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw-ethtool.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw-ethtool.c
index d7f4ed1df..0af2e9914 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw-ethtool.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw-ethtool.c
@@ -38,19 +38,19 @@ static void dpaa2_switch_get_drvinfo(struct net_device *netdev,
 	u16 version_major, version_minor;
 	int err;
 
-	strlcpy(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));
+	strscpy(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));
 
 	err = dpsw_get_api_version(port_priv->ethsw_data->mc_io, 0,
 				   &version_major,
 				   &version_minor);
 	if (err)
-		strlcpy(drvinfo->fw_version, "N/A",
+		strscpy(drvinfo->fw_version, "N/A",
 			sizeof(drvinfo->fw_version));
 	else
 		snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
 			 "%u.%u", version_major, version_minor);
 
-	strlcpy(drvinfo->bus_info, dev_name(netdev->dev.parent->parent),
+	strscpy(drvinfo->bus_info, dev_name(netdev->dev.parent->parent),
 		sizeof(drvinfo->bus_info));
 }
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
