Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 594C3309E10
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:32:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 163CF86962;
	Sun, 31 Jan 2021 17:32:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ftGkmAeYf+1P; Sun, 31 Jan 2021 17:32:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B202868FF;
	Sun, 31 Jan 2021 17:32:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 343811BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 30D29858B3
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id am_2DJQa7lNI for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:32:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB86085815
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:32:27 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id g15so10423737pgu.9
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:32:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KL4ClHuz/7I8c1v93iqBuHCJ0LGBrBIt4lTt0h3HcoY=;
 b=N/B6V8BD5XiYvAupdqW1vbawkg3gyLvdAlZeMM0bF/xLOQGjMnDlOWSSkBZFul0+f5
 EP7QtNlUMFjALXak6Sx5W/LhQa8wUdSw2zzV814nawqfyffFp/qzHxk5oFDD6LvxhwNC
 KuSBJKr5QRBMUi8quKx2XQA6OahBrMn1fCrb+5AzTrcXPfhieGh3yelskc/1ShXYudWm
 mpfa/YeCPiJGRU9Fvc+eAnLd7rkgNuPbq8cbM6hchVCZYs055YHO2nTXx4SybPNyHmhE
 hc5ykRlg+XSnQtHL/8NcEqkoeVrLLMWUj9I0NvDGNSv5BuvZUymDt0LKcmlBYwPKVwHe
 gUBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KL4ClHuz/7I8c1v93iqBuHCJ0LGBrBIt4lTt0h3HcoY=;
 b=i2NTsn0EnooRdkB0GB6U+eeIAiU9Zk2ero08Cwm7pTU5ALMfMe4hd3say4g2PsQSfm
 ocTv3/YdnXkeU5BNkeToVwZ9kVAUURi8DnNNi4shkOiH9kz84xlvh59l58VnTGSYykaI
 XIpVlUUSG6xjhwWeVXexYyIbn5PuEUsPtxLohFqOVKZEILpmhlZ+NbB+qjSZwLl7t0wG
 cP4PkUnM4yr+31+Hh3zcLGYKYer4Au4VwoogvA5HIi59ngy37Yr51Dg8rvLwt5Xl1xN/
 n9M0NHaj57y+1NtuaBPhGdTGKmAZDmkchKH7rZ37JQgVcKNIfVAJc1J3ZUwlyHSPBm/9
 sp5Q==
X-Gm-Message-State: AOAM533GUeBR8jkMpoDAvPcvq2aXpHf1y4wZvgLoB5BgnhuK0kIQjy3R
 BLPEPjib8sjaBUwbU6Ld0+vCj2paDo12LA==
X-Google-Smtp-Source: ABdhPJzABChOsNRDUCRWU+Gq8jzbKzxAgBkonx70PABubyLmysiQb+CwOj4WPPSnTZHh1di8jIFoFQ==
X-Received: by 2002:a62:aa0a:0:b029:1c2:1baa:eaea with SMTP id
 e10-20020a62aa0a0000b02901c21baaeaeamr12833472pff.52.1612114347133; 
 Sun, 31 Jan 2021 09:32:27 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id b24sm1597174pjp.12.2021.01.31.09.32.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:32:26 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 08/13] staging: rtl8188eu: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:29 +0530
Message-Id: <20210131172838.146706-9-memxor@gmail.com>
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
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 6f42f13a7..bf22f130d 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -1865,7 +1865,7 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 		goto exit;
 	}
 
-	strlcpy((char *)param->u.crypt.alg, alg_name, IEEE_CRYPT_ALG_NAME_LEN);
+	strscpy((char *)param->u.crypt.alg, alg_name, IEEE_CRYPT_ALG_NAME_LEN);
 
 	if (pext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY)
 		param->u.crypt.set_tx = 1;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
