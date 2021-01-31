Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 157BA309E0E
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:32:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 440968677E;
	Sun, 31 Jan 2021 17:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7I1vsewxyZ8F; Sun, 31 Jan 2021 17:32:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4451C86798;
	Sun, 31 Jan 2021 17:32:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9D511BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 896261FDFB
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q4PeD2I1zmgo for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:32:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 9D6AB203AA
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:32:17 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id m6so10019962pfk.1
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9mx9QDkqfNUwWdACyM2Fn2TS+NlXzO5XMeT4wvvF4yM=;
 b=FKhRyOzoZSbBuvWwr0fTJ+iFeZN7JT2FPX2669eIzdGFo5UYBxWO2lMckA9wnehLTS
 xHmrEWENAHskb5BhFX6J42HLdCsFefK2aEtxG+yPckdGw3BsDu96v/DESQiAw56isE0b
 92NLHHC68hguqKz0GvB+ulD4I9TKRUFtGwmpjbUEFBrTaIf3OgckiVwzJ4/ROpw8BSoX
 oNKalg6R33IaEWts0MFGrxDLnL3XZx2GMYqee70sRg1dd1sE0JdHazOda1TasbNt87tJ
 kfglu74r09XJiZR8kMAJf+x7dJ636t7EoxwawooqaIZ/J1affyE1+5moWGYYW8MxlYCO
 LFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9mx9QDkqfNUwWdACyM2Fn2TS+NlXzO5XMeT4wvvF4yM=;
 b=uHydiYmXH585umEpfzAX3nQkfNxMOPqoAfh91ozxAoGpKYFu40toANQO9MD6L4PqK7
 Hnc9f8UKpOq54+4pnV6aI24NslfmMpDws7cT/+rB++mTuBazmUxgqK/S/D0J4tHlhkS8
 uY3hP/cIwMJPUG8VEoMgNYr3w6R5S64wbCvkRhVR4KAO3JKZri0XBYzPDa69FymI0Iud
 0eVwbkQ1zrETtqRF3QmJqQgko4M55lgn9j+xF3ApuXQcwWNEJGSIHvRBIHNhlA55nIJp
 U/zTYNUaSzoAwFkuyAKNVNiO0eXsSCtGefG1wOkkV/eqTg2KkuRF8t+Zd+tSppil+J78
 5T5w==
X-Gm-Message-State: AOAM530dcySa5BCMIqPSh5c5YqtnA3ND8wMktYrl8rYGrLShgI73gf7L
 isCuhrDDgBZ6OYMI1C/xmE/o613cYqBgwQ==
X-Google-Smtp-Source: ABdhPJy0FOOeBvw8A30nFmOClcs73UGIMxJUMDIk2k6K7lguT0DTnIX/42iZkIg0q78K2sAG9Txfpw==
X-Received: by 2002:a63:c43:: with SMTP id 3mr13088289pgm.250.1612114337079;
 Sun, 31 Jan 2021 09:32:17 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id y11sm14165281pfn.85.2021.01.31.09.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:32:16 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 07/13] staging: olpc_dcon: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:28 +0530
Message-Id: <20210131172838.146706-8-memxor@gmail.com>
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
 drivers/staging/olpc_dcon/olpc_dcon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
index e7281212d..6d8e9a481 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon.c
@@ -576,7 +576,7 @@ static struct notifier_block dcon_panic_nb = {
 
 static int dcon_detect(struct i2c_client *client, struct i2c_board_info *info)
 {
-	strlcpy(info->type, "olpc_dcon", I2C_NAME_SIZE);
+	strscpy(info->type, "olpc_dcon", I2C_NAME_SIZE);
 
 	return 0;
 }
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
