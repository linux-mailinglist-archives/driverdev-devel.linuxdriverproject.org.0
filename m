Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9474E5FFC
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Oct 2019 01:16:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6DFF787082;
	Sat, 26 Oct 2019 23:16:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id doAfhJy03oU7; Sat, 26 Oct 2019 23:16:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A732F86FAE;
	Sat, 26 Oct 2019 23:16:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C2141BF2A9
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 23:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5953986FAF
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 23:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K+X1yTbisggo for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 23:16:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B623C86FAE
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 23:16:26 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id e14so9058258qto.1
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 16:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=WembGSFsbExOh6C9xfy35r52QdLc1q9Nu1Ae4G7IdBI=;
 b=pWkyQ1NGQb6iIZ8q127AjyQtavlLiCaXvTaXTDBO605b0pyxYH/oqDhLauXmQy1r6d
 VzLdCYj3DxDE6D1V3JbJF2UC/geCDPQnkm+xCwH5Ddh0S4Bn2iHlFrXH2SkAVRYo+7N8
 5Qg8AJJjFZzJJLotYEeOqLmfjvTJd6Sfx+9WABWk/eq2uRTR/w7HsohxUPcNAmopzbFx
 VLY2hDEc1rkIXyrd94xHlmVyYWMKbVU+LsRdJ+lojihb9lV4nbEdMDShmQKc8G/J1+H6
 jywm2KLrcgVXe+hENXm7oNZUwxzpYerV5u1zrurD9flBrdnhcHmWqXIXXWzwLrFxrGxG
 UJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=WembGSFsbExOh6C9xfy35r52QdLc1q9Nu1Ae4G7IdBI=;
 b=SX/scCg7IVopAFZq+yE0y96OVoZwduUGAgTPpRz9Jt+TlUIs3q53AxaQSuzOHzuzpn
 d06mP9k+BYNKBHBEBdVv40wZrv7uSD/QIjYPuXyVjyfEj7nRHYjDUfu5El3CFB0rjMe1
 +/qZw3mEP5YwLC3SSntfOtg8r3xzcrTG9yEc2/4L1kiMc8dt0EpAGQsslRZZ45P7br68
 K5emjXXxhhWrE2BwB40KkX23M6+djQWRX252wGbqWXflTmX3YVDlWSh8tEb0Hy9prlSa
 Q9MBn3hhqYF03WT1cCufBdC1XXLuI4lP1tc7th3ziHJsnyZIGAV3U8P6w/FgnHcwoGR0
 UAyg==
X-Gm-Message-State: APjAAAV6F7jr2FfQjtFQZKno1IuYCZMKo1NVJfMOU1q6yuzHhTkeH15m
 lmH22X9Qw/qkNtgN/SB1eDg=
X-Google-Smtp-Source: APXvYqyJ5t2Ti+9RF911OfbntRMNRgN1W+sncXLrr/XZccWG7OXIn9o2GpwwABGpr4uZJtsA+5RqDw==
X-Received: by 2002:a0c:a947:: with SMTP id z7mr10744288qva.103.1572131785586; 
 Sat, 26 Oct 2019 16:16:25 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id t58sm3999075qta.78.2019.10.26.16.16.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 26 Oct 2019 16:16:25 -0700 (PDT)
Date: Sat, 26 Oct 2019 20:16:19 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: allegro-dvt: remove bool comparison
Message-ID: <20191026231619.GA14093@cristiane-Inspiron-5420>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Tretter <m.tretter@pengutronix.de>, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Bool tests don't need comparisons. Issue found by coccicheck.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/media/allegro-dvt/nal-h264.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/allegro-dvt/nal-h264.c b/drivers/staging/media/allegro-dvt/nal-h264.c
index 4e14b77..bd48b88 100644
--- a/drivers/staging/media/allegro-dvt/nal-h264.c
+++ b/drivers/staging/media/allegro-dvt/nal-h264.c
@@ -235,7 +235,7 @@ static inline int rbsp_write_bit(struct rbsp *rbsp, bool value)
 
 	rbsp->pos++;
 
-	if (value == 1 ||
+	if (value ||
 	    (rbsp->num_consecutive_zeros < 7 && (rbsp->pos % 8 == 0))) {
 		rbsp->num_consecutive_zeros = 0;
 	} else {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
