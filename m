Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFBC309E13
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:32:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 482BD858B3;
	Sun, 31 Jan 2021 17:32:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7MDdXspLUt3h; Sun, 31 Jan 2021 17:32:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1EAFE858A6;
	Sun, 31 Jan 2021 17:32:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 839FA1BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7DFF181C80
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IWvYw2Ne5Iph for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:32:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0EE7F857A2
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:32:49 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id r38so10405815pgk.13
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mo0+brrhGMjJednSGVa7WEJAUXKYi42r2CVW4s4Y5xs=;
 b=QAkz1tON5iYvjkr2NHcgpozTGPVoPfYRL4IL0BfDh3zUuFMq5MAc0McwM/O6fZxYTx
 4Ox6Wp+bygqNnDl+e1e+XZOK8Cn9ZXwWO0yGKqt7AY0w64FQcDxXGdKMjfqfYY7Wcpir
 qTdPyjnOjGe/hr+t+2gSz6alaE01d7BUa4KwH6+1ZGajL0RoAVzxsrJ7L//OQWb7U5ZR
 IbbUp31V3HHVm0+gA4trWkKa4jjz7KCsKnILVQNDMBRNjT/IX6/jth0aCQIM44Vn5WBE
 ZLCisAIdk8IokOJ7qhqv32Rof2XzRSOSCJ00916W7BF1hKgKTiADIs5mFPy+JeqHJ5vu
 Bgbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mo0+brrhGMjJednSGVa7WEJAUXKYi42r2CVW4s4Y5xs=;
 b=Xhu+dLSuWHE1lke96F7jKf8zmIg9YZwY4vGpqv6XUnEMPfRUcDbII4tWGoyctu8Xuq
 G9iRD7+ZsUs6twkFYp4iTpxBQvnZTCA+jMEdI+2M6LcO/90JGZzAddz3BdEJEyKkJQtp
 9h8yRMfS0xkcXmaurXOf0i+SEHvz66n13/wAn2js7gRZOYQ/PU/I5j3P/byoMPgRM/Hj
 U+4mYF81b6Rl8mufBPQg6CY3edPLJOqM/sfukCK0ohuV2YtDxiaFL/NfqAd0NQjbodYM
 gOcmXu8zctetFMpabqq9INU4O58wHmmav/xEHJRy8x8bpeEvEfypSEAU+HTNBhwImGyc
 f5tg==
X-Gm-Message-State: AOAM532u4Z2vWcDAh4emXNh22zEUHD/YrjYjMC/4GMeAeVZsOSMbOvEC
 QycGFkiPl0mhkCWBdibS+V9RK+/PalykYQ==
X-Google-Smtp-Source: ABdhPJwcxoFrwI/FRC06emoEJxOlhapapq3uXAbaNvZgMSxCrsCYsYe4eF797A5mhxRg8Rzkb7s87g==
X-Received: by 2002:a62:ae0c:0:b029:1bc:a0b9:f0aa with SMTP id
 q12-20020a62ae0c0000b02901bca0b9f0aamr12613811pff.78.1612114368491; 
 Sun, 31 Jan 2021 09:32:48 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id f71sm14799711pfa.138.2021.01.31.09.32.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:32:47 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 10/13] staging: rtl8192u: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:31 +0530
Message-Id: <20210131172838.146706-11-memxor@gmail.com>
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
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
index f434a26cd..afa92ddfa 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
@@ -484,7 +484,7 @@ int ieee80211_wx_get_name(struct ieee80211_device *ieee,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	strlcpy(wrqu->name, "802.11", IFNAMSIZ);
+	strscpy(wrqu->name, "802.11", IFNAMSIZ);
 	if (ieee->modulation & IEEE80211_CCK_MODULATION) {
 		strlcat(wrqu->name, "b", IFNAMSIZ);
 		if (ieee->modulation & IEEE80211_OFDM_MODULATION)
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
