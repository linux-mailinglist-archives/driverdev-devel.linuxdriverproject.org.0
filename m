Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B6B309E11
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:32:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E12885A00;
	Sun, 31 Jan 2021 17:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 26pVI1pRNTJO; Sun, 31 Jan 2021 17:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B70385C06;
	Sun, 31 Jan 2021 17:32:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 439AD1BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3C71186F72
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82NZufm5TpBe for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:32:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C2120857A2
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:32:39 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id q2so8671994plk.4
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UATS+ZdWIHunyokeUQ2KzApxYEhPMU9QywnIQp+k1xo=;
 b=b9PXwhx5E5wwbmXTP1RC5Fki7Zw2VLqiM/m2UxK1wU8m1BcPsvMcbEoZKi8Jo/UQfo
 row6SlwsGQ4BvNwDVIFQKQ/exYO3s1SXu5odFHUWe5KJyKgB3MdlNG4erlIsz0qCCsKl
 mWVsToJ0LPw8Jz4M7lkZxQtrfefC0w4E9v94Z8g+fQoBFJWMp5LIJg7kn1zkr+a/kmIX
 OS6IXKIRgJ0Z6rRVCw55ShwQemSUKLOnG27rkeZv06XzlINdBPCLpuk0AsGiO8EDQq7t
 DNrGOEj9pmVX5fRmfrorZSbIo7rwnLgXNjJrVAgsXk6dQZJErelCE7Teavl1RfklKb3o
 Zo8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UATS+ZdWIHunyokeUQ2KzApxYEhPMU9QywnIQp+k1xo=;
 b=Z9eULKObqZta9QUvYgVcwdSi/nDZGyZ0COgCWwTGWuSbcDQzg/GPu2wyGo8w4TkC30
 WajPpw9QjH+S+fzjOYwwBu3u/DP4a3EDH+jvIm2TmDXYCeugeE78Wsaph7+wnakVlqp9
 A6eCscIZNYwEoAijlIjPct+KN6xZhQh5hyqNsYqId7tX5vdXiA+rOllj5u3miDv1kVe+
 a6GilCkTW5CoJhfkQ0yQwA8KrGjvJe4+10FFkAGbeAv/OuvdGyruX1k4vvtChJhAtJSC
 1cnIcXezYoVBKg0i7GO95o5/H6Mgy45T7xxggpUm1PFGvpgs3njCawVnci4qckIDsthw
 fClw==
X-Gm-Message-State: AOAM530layTA58sI73GnuwUrEuDw1mSwUW/IoLci0JV2D/+DdZrbw/Xw
 rAWzHHr6C9ynnfBcESlWz4QyeOW00WceNg==
X-Google-Smtp-Source: ABdhPJxtoGANsdEpKKge2o/29AN1E8VfPfLdlwcKVddQbVKTDT3+km65hFEkM3txwdasUFD8QbEDvQ==
X-Received: by 2002:a17:90a:778b:: with SMTP id
 v11mr13218923pjk.61.1612114358345; 
 Sun, 31 Jan 2021 09:32:38 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id y16sm15492888pfb.83.2021.01.31.09.32.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:32:37 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 09/13] staging: rtl8192e: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:30 +0530
Message-Id: <20210131172838.146706-10-memxor@gmail.com>
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
 Ioana Ciornei <ioana.ciornei@nxp.com>, William Cohen <wcohen@redhat.com>,
 ac100@lists.launchpad.net, Stephen Rothwell <sfr@canb.auug.org.au>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Robert Richter <rric@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Johan Hovold <johan@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
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
 drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.c b/drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.c
index 6ae7a67e7..f4f7b74c8 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.c
@@ -18,9 +18,9 @@ static void _rtl92e_ethtool_get_drvinfo(struct net_device *dev,
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
-	strlcpy(info->bus_info, pci_name(priv->pdev), sizeof(info->bus_info));
+	strscpy(info->driver, DRV_NAME, sizeof(info->driver));
+	strscpy(info->version, DRV_VERSION, sizeof(info->version));
+	strscpy(info->bus_info, pci_name(priv->pdev), sizeof(info->bus_info));
 }
 
 static u32 _rtl92e_ethtool_get_link(struct net_device *dev)
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
