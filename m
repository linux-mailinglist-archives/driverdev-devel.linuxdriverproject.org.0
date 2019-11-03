Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20324ED14B
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Nov 2019 01:59:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85EF889E62;
	Sun,  3 Nov 2019 00:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dh0orDuHjTzx; Sun,  3 Nov 2019 00:59:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2AC2189691;
	Sun,  3 Nov 2019 00:59:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F23881BF20D
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 00:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EEDD68ACD3
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 00:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9wArHUCaAQQi for <devel@linuxdriverproject.org>;
 Sun,  3 Nov 2019 00:59:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com
 [209.85.219.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B2638ACCF
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 00:59:11 +0000 (UTC)
Received: by mail-yb1-f194.google.com with SMTP id c13so6314252ybq.3
 for <devel@driverdev.osuosl.org>; Sat, 02 Nov 2019 17:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7q6Xq7rmHNSrovKS8aUtbAZiEFB5v4eQ1NKAasuvin0=;
 b=qe/QV06/xian0rDAQgM+qAbX7/ACLaPY6U1qvPK/JYxMuZyLu2TBZKiDYgtCNho9yN
 X/5uQFQKrr2HY5fpULDVYzwpvHhOFgiz7Fd4ZyBYRMyU2ETDArGOjhuYvUXOtANWQcac
 mI9wPqYc4Q73sSkILRIey5fKQbxxgp1Akcpc9cwO4HkDMu2b2iTk8/7ALLRm0pTYEVPd
 pWUd2f3unLUTvaCnhekTDYQuKrwTE4o13OL1L3RiKIlFlAsjiDxeyJ/QhK1Vmn8WtS7K
 6vd9nU2q0zw7sgG95ROLQ0qOptvzbgC/xh6BWQ0ay+Dc8LTqOs19AGR0dcJJWiTt1c43
 ytOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7q6Xq7rmHNSrovKS8aUtbAZiEFB5v4eQ1NKAasuvin0=;
 b=e5Nx2tVvQZNru2INosEWrbROkriYWtRQWC5IkORDrtboqxYjG43bwgneXYaMWnuc7H
 ZPQf2htUXM00Az8tG+ZMSiiQ6GpXP+EK5rLdYo6Ebq0r01Eycu/ts+JoA4vsrHUPlkih
 3OMk01qsJli33WpQzd90A7r67m2n9X5U9l1GbE17poXGL+wwD0/tmv6ELKdDTQNNcZsb
 CBGRJ59/N9CTxLYnu3lg2jbCVOpRo1yOjvBBdsRtOEGBwZ5rnjy2pn2TRJfgvRNqeunu
 lriwoKWV6b2BoP8GzedQu6ggDrnFwbxqSiHmCEL2ixnf/MHcHfFhZuJ3DKIGLTGGeYA9
 enSQ==
X-Gm-Message-State: APjAAAU6JfIGi2TtuPJnIjQntBODGG3psfzAu8iSZ/vmz03D5dK5KjBZ
 E4f9ha8KWsDqaOlfIxBEMlc=
X-Google-Smtp-Source: APXvYqxSp4k92cn+p3Zvs5Fp7XQQ7Lm/W5dD+hONzeMlFEuxTsXcX1OL+HSDoXeqW8IDYsqLL5yIHg==
X-Received: by 2002:a25:13ca:: with SMTP id 193mr17124173ybt.196.1572742750301; 
 Sat, 02 Nov 2019 17:59:10 -0700 (PDT)
Received: from rkanasun-VirtualBox.ad.cirrus.com ([141.131.2.3])
 by smtp.gmail.com with ESMTPSA id 203sm5240896ywp.76.2019.11.02.17.59.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 17:59:09 -0700 (PDT)
From: rama <ramakumar.kanasundara@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] FBTFT: fb_sh: Changed udelay() to usleep_range() based on the
 Document,
 Documentation/timers/timers-howto.rst Excerpt from the document: -SLEEPING FOR
 ~USECS OR SMALL MSECS ( 10us - 20ms): * Use usleep_range
Date: Sat,  2 Nov 2019 19:59:06 -0500
Message-Id: <20191103005906.17112-1-ramakumar.kanasundara@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, rama <ramakumar.kanasundara@gmail.com>,
 linux-kernel@vger.kernel.org, nishadkamdar@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index eeeeec97ad27..471a145e3c00 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
 	dev_dbg(par->info->device, "%s()\n", __func__);
 
 	gpiod_set_value(par->gpio.reset, 0);
-	udelay(20);
+	usleep_range(20,20);
 	gpiod_set_value(par->gpio.reset, 1);
 	mdelay(120);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
