Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8900B2790DB
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:38:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A495C86237;
	Fri, 25 Sep 2020 18:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jp1H74KwFdXZ; Fri, 25 Sep 2020 18:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26A9485F93;
	Fri, 25 Sep 2020 18:38:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DB8D1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6A99485FC9
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cu-OziU7KeOh for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:38:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3DFE985F93
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:38:52 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id k8so4042936pfk.2
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Z5xy1HmEK3Cb2cGuOZNBEue37qSrHj+Vnq/OwfaPORg=;
 b=sBlYShu+9vN6ayWh4BrzZFB3L8UBBVdI0bE+jUCCnUWfYdR0Dfg9rRQ+jLtIUsVd3W
 NWIUbQROcUaoftLHhbGfzJi5Rg/eJtmLfrYcfS4X05/YqwKtVXCVikqj+/hQT6QBFoAg
 ollSSj2k+OMDAnEUAMH1GJw2W/ijQHZGchwJj3jUIVyQL+rLR5y1CLy1+uJXBAy0AtP9
 W+1E0pWNzJp23zMt2nAXk/J3tCSXHYpvKzZMeURXPZPxgk8RyCBHqU70Gd3CCoq76WRa
 xlNgbHuw62gQekcuNM8L38Mq6kYGTZMHiIyOjyXSy5RTNjEqf8yBp2h/A9zLm2Roe+Rs
 I29w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Z5xy1HmEK3Cb2cGuOZNBEue37qSrHj+Vnq/OwfaPORg=;
 b=TMW2WDCtk7f8m7sYpzP1ve4nLnjrPXXA6wm+1fDu0DSyJh+h0ARjO6q/Wj04OrnOEO
 8axK9meOu02UTngsgazZEI5jHAijdBoLkWC6uv702MM6ccJfeWGKcagHOoErzhGqFrjr
 JDMNrR3973N3D4+maUJtUzLaW2JOr0kqmKesGQQzlMLswbmUh7FMhnZhvME5aS+TbdMF
 gY/rsUcFvgTCfH8jRAfJKO6z68K7lebC41kpPxdgXZo4QosKTop2YzGj+krFOcmeYXbj
 MVtfVf9XOuszQJiVNV6WV9XKL6QAKVOCvZ45bFy9MnFxOx1Pk+McfxkZZW0YParwpU3j
 TYrw==
X-Gm-Message-State: AOAM533NUZkSyuKgeQXYqqlIICD/33MouNpWDuzepeB3YwM4E1xEHkZF
 X+5eiYz8WTgmfjVw6NxDQ35OG1QzLr6eMw==
X-Google-Smtp-Source: ABdhPJwdn4XhS1Fuqdi3Nmv5dQHDo9mWrn2Zwo9AuP7EkwR9dIm+/lhIaXMse5TDA/s6sztjt+48wg==
X-Received: by 2002:a65:6104:: with SMTP id z4mr250114pgu.184.1601058695275;
 Fri, 25 Sep 2020 11:31:35 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.31.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:31:34 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 03/47] staging: media: zoran: datasheet is no
 longer available from zoran.com
Date: Fri, 25 Sep 2020 18:30:13 +0000
Message-Id: <1601058657-14042-4-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Simply remove this broken reference

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 04162be80420..79da964c678b 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -265,9 +265,6 @@ jpeg_codec_reset (struct zoran *zr)
  *   Set the registers for the size we have specified. Don't bother
  *   trying to understand this without the ZR36057 manual in front of
  *   you [AC].
- *
- *   PS: The manual is free for download in .pdf format from
- *   www.zoran.com - nicely done those folks.
  */
 
 static void
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
