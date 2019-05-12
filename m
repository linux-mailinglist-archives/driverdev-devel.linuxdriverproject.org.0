Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7411ABE8
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 May 2019 12:54:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A7FD86456;
	Sun, 12 May 2019 10:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BgfY0pspP7iP; Sun, 12 May 2019 10:54:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED5228646F;
	Sun, 12 May 2019 10:54:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC1221BF2B1
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 10:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9DFC687475
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 10:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id spcCsXJe6rpf for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 10:53:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B4C8A877E2
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 10:53:51 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t187so5224350pgb.13
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 03:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=TSGu2ypgclukAqwzWAhyyZz9L1hyT8DNMzdH0VVP+ls=;
 b=bttDhfVz8HY0KhYUQY5A2DXkh37y80EeuswqpRP6YWvx3koosM3DbP/E0b/OW21Vaj
 Be93js5stxMQ/Nyo1X/xb4bz2v4NckyZjuwXSOG1Bxs8Pc7dultuo5P2MrqCXN28hn5G
 DPhJ+tv4un4kjdVKgp6aIop/Dd8lQ3VQNT+lDdi2aUp3qAJZHGl28j5qjDarw32luwrT
 e/FJHzaS5hUSkk8Pp+QXK2iD9sWOmaTRMu0bp6c3epBZQPsmVdxdis09V/CAmxpdx9x2
 gpMuviY3+r3KDICb6P2P8je7RgSXDdZ5Wdhq0CWjD8pVtm3b423N8xaay01eLsnOdc0f
 Y3yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=TSGu2ypgclukAqwzWAhyyZz9L1hyT8DNMzdH0VVP+ls=;
 b=Q49AmYrxp1bDbGvUbiN3S5wZjQJpGnEDkTgDj1vcF7BFEiM/EU9pQhvDoJaD7D8QPS
 V4elzIbGMsPwPBNpblG33i8lbYmcxfbvSrspxuH1+ESQUMjNepiacrKnSkqS8E7Yu+S5
 MJPFrvIfXCLC2QHvenOGrwLHY/1evmFUr34mkGYxmOjrPPtvRUWyRGr0NTFIMxaHTHmO
 9Wd9MsDJEs2Xm8j09iy58NLOUDPxwKB7A0zn2QoHcdRBiQUb6DP0c8zuaCi8R7z4UG9f
 JXHjVV4v8aSnaLNu3N5EWMWhJjLcbNmkETPWiulZ8cKuu6aT0JMf2BBx4zLhf4EiPWxP
 GQ/A==
X-Gm-Message-State: APjAAAWa2Pt24J486qmWbWzi6kJtck8ENYGPz1EP6l0KrKqBJ4YERNXo
 H2l2Jnmg+nYi9Uc0uNLTITM=
X-Google-Smtp-Source: APXvYqyFPzMI6w9lR5oCkUpK788PEl+uNYLmnANR2jb6caiJyOSTDoP0lGdctxOsO+N/4Wxyy5zdiA==
X-Received: by 2002:aa7:90ce:: with SMTP id k14mr26243087pfk.239.1557658431357; 
 Sun, 12 May 2019 03:53:51 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id s19sm13060801pfe.74.2019.05.12.03.53.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 03:53:50 -0700 (PDT)
Date: Sun, 12 May 2019 16:23:45 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: dan.carpenter@oracle.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tim Collier <osdevtc@gmail.com>, Chris Opperman <eklikeroomys@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] drivers: staging : wlan-ng : collect return status
 without variable
Message-ID: <20190512105345.GA4046@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As caller rdev_set_default_key  not particular about -EFAULT.
We can preserve the return value of prism2_domibset_uint32.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
----
Changes in v2:
  - remove  masking of original return value with EFAULT
Changes in v3:
  - merge patch v1 and v2 sothat it can be applied on linux-next
---
 drivers/staging/wlan-ng/cfg80211.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 8a862f7..eee1998 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -231,17 +231,9 @@ static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
 {
 	struct wlandevice *wlandev = dev->ml_priv;
 
-	int err = 0;
-	int result = 0;
-
-	result = prism2_domibset_uint32(wlandev,
-		DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
-		key_index);
-
-	if (result)
-		err = -EFAULT;
-
-	return err;
+	return  prism2_domibset_uint32(wlandev,
+				       DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
+				       key_index);
 }
 
 static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
