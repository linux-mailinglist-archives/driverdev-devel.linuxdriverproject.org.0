Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49146309E14
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:33:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03F9685C05;
	Sun, 31 Jan 2021 17:33:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AG_VQA9IOFx2; Sun, 31 Jan 2021 17:33:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDC1985A80;
	Sun, 31 Jan 2021 17:33:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B53CF1BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AAFCB857A2
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zigkiBAkE8iy for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:32:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2A56081C80
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:32:59 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id o7so10446624pgl.1
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gKI25e/jJLfDV6Kg+PuHK7AdOezrhXeGKxAKRdL5O5c=;
 b=NZcWTveJhv5rbkJbLgSmHjwf6GQe9APQLUr0ywzyJM8YOZdKLDVjpOlWiqUVM3EYNh
 kVuCCm5wXBU2CzBpOGGvpr1BpC2rqWrQeI06JQ+SETI199L8+FYBQKp89qv5dG75eYTW
 KWNOwfxDvOcvULC3hmRatn9Q4lf1Cq3pLf8Qx4umAZfUd4mAYHqrmX4Go7rUJOSRRkJY
 AsFOhMO81LuYJHC3r4erHnmawkginx2aVB88AKq463Zgz7HOHICH1Nj2Ej16T3V73iQ7
 2EiZ8RG+u8M76R39DPXF34+0sdMtwNcnubNW+xTw/tY6N2wafaytjUKh5roXYOGeEtUq
 rINA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gKI25e/jJLfDV6Kg+PuHK7AdOezrhXeGKxAKRdL5O5c=;
 b=pwcwDLC9xpKv7rmnjkuH0vrh9FdtOjhF+dRLPL+vAqZiRwdzJGsYcOtqvERBZLCK92
 IMkQKehAtEoJtToGbULsuGwRL2cX8dpkDD2WWZkOkrraXlrTt8F+ReKd/ijazPPLDT7e
 c/iMsNjKu95SzHqvfVy2TNIDJxXZCzfunmGN8muNZ3ZMG3wk9IgLyM2EpDSLuyOL0tcO
 Xj/XEyaDRNFNZcD3BT13u4AUf+Uxn3YcUlbYDbZhI0+lAm7R2GwBRyNT/roxivDrfm8X
 43X5x31+tjN4by3K5hgkmZ7jpXO7WuwuqkIHLHKQn9AzetPNHwxBtsauUFhp9cXZfeLz
 cYkg==
X-Gm-Message-State: AOAM533tZGGaj2HG3K025y2XYyWVhm1fmAzV8SQBMi8ArqPnDXHSFGGU
 ysXLeAHu1r/o7QLaxWrY5vMO86Disst8Ug==
X-Google-Smtp-Source: ABdhPJxJdjPPIgHhUA+gd6c590Us77Rv3SAo0M63OGyZ3eELnR08dADDz7f1OMchhqa7A2U6TYf6aw==
X-Received: by 2002:a62:7b8a:0:b029:1bb:4a06:bb57 with SMTP id
 w132-20020a627b8a0000b02901bb4a06bb57mr12418121pfc.47.1612114378549; 
 Sun, 31 Jan 2021 09:32:58 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id a141sm15124191pfa.189.2021.01.31.09.32.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:32:58 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 11/13] staging: rtl8712: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:32 +0530
Message-Id: <20210131172838.146706-12-memxor@gmail.com>
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
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index cbaa7a489..81de5a9e6 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1784,7 +1784,7 @@ static int r871x_wx_set_enc_ext(struct net_device *dev,
 		return -ENOMEM;
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
 	eth_broadcast_addr(param->sta_addr);
-	strlcpy((char *)param->u.crypt.alg, alg_name, IEEE_CRYPT_ALG_NAME_LEN);
+	strscpy((char *)param->u.crypt.alg, alg_name, IEEE_CRYPT_ALG_NAME_LEN);
 	if (pext->ext_flags & IW_ENCODE_EXT_GROUP_KEY)
 		param->u.crypt.set_tx = 0;
 	if (pext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY)
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
