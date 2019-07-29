Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AA378360
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 04:36:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B84E387CE7;
	Mon, 29 Jul 2019 02:35:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yidV2k6pClYT; Mon, 29 Jul 2019 02:35:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E20F187CA9;
	Mon, 29 Jul 2019 02:35:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6571BF868
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 02:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 484C186C19
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 02:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OeuobyT44stj for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 02:35:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B43A986BCB
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 02:35:53 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id c14so26821995plo.0
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2019 19:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=/Y4lNvh0h3jAdVnF5IJqyvh1X1fO4/sHQLpJ3wgtbcU=;
 b=RCk+iXxcIoskmwU+26UFqkUt8BYKDBYE/8h9TEa1cbMtqoF4vNcqpaHTkQbh6jLInd
 pu63bEWzdnlUFbmrV2QP+tgJP6hR0GtVKLj3Z3nTmRq0WHd2LSkPJtlZyurEbPisTutW
 2/B5iHhk5BI4P4aMXztpqHx6WpPnL/8DSU72FUpbxNb3eczXy5jNKh2grBQsVpW3zfP5
 AXtDYu1uprLfdAbQhQclA8fEvUIX42ppZHh8yUf88JkKO/NRbgtMZ/bYF7B3NHUCM6Zv
 0247GfUaJVWdyach97AMYPHXDYLYqk2XSF4QtMdz0TQP1gPQ4lr+Pi2/FDG0ZGesG8D0
 vrfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=/Y4lNvh0h3jAdVnF5IJqyvh1X1fO4/sHQLpJ3wgtbcU=;
 b=UtfO2q5Z8z2sZfOccLdGVJn078BURTAOJSN1djMaAp3hy8EPhwBatHnomwxwd+XZy6
 u26103CbsCR44QiaoqrSkJzfHEIbkxM12cnJF95BfGXVTzP2eMOhT+Q5UnzhQIaog0uZ
 hiBjzEH/NpHHhnCkMbiqgxsDG49m2FFzLgB6ie05VmnphZ44njjhxHOWfs0QQhHD1XtD
 aD/YFgAw4jUtXS6TX2/Z1z1eVkOzvtAU4jTh6eHPN1p3vU+ejdd0BjBn0sNqsWnEhJ+s
 sOPjkdBF1auMoOXgm+4FFTqlhOwvkCHy7yhwXkT9cLjP2/W55v7Po7RdCjtNBP24H+Cm
 Rahg==
X-Gm-Message-State: APjAAAUzTsKrrZDzsEnayNgkHn4INxRPrzk7OjU7SX/fRa2uj9WYYw07
 pG0XA70z8H5zNkwrsnSYmOuW/F3UQcA=
X-Google-Smtp-Source: APXvYqxFNsmm2J2EbPH8YhNy9OW6cMU8+kZ5GKlya0f18XIpJg4zCuzHzXn2O03xcEzaSMR8f71ehw==
X-Received: by 2002:a17:902:2aa8:: with SMTP id
 j37mr102774013plb.316.1564367753078; 
 Sun, 28 Jul 2019 19:35:53 -0700 (PDT)
Received: from compute1 ([123.51.210.126])
 by smtp.gmail.com with ESMTPSA id s24sm60068273pfh.133.2019.07.28.19.35.51
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 28 Jul 2019 19:35:52 -0700 (PDT)
Date: Mon, 29 Jul 2019 10:35:44 +0800
From: Jerry Lin <wahahab11@gmail.com>
To: Jens Frederich <jfrederich@gmail.com>, Daniel Drake <dsd@laptop.org>,
 jon.nettleton@gmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: olpc_dcon: Remove TODO item
Message-ID: <20190729023544.GA25930@compute1>
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

All uses of old GPIO API have been converted to new API.
This item can be removed from TODO file.

Signed-off-by: Jerry Lin <wahahab11@gmail.com>
---
 drivers/staging/olpc_dcon/TODO | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/olpc_dcon/TODO b/drivers/staging/olpc_dcon/TODO
index fe09efb..d8296f2 100644
--- a/drivers/staging/olpc_dcon/TODO
+++ b/drivers/staging/olpc_dcon/TODO
@@ -8,10 +8,6 @@ TODO:
 	  internals, but isn't properly integrated, is not the correct solution.
 	- see if vx855 gpio API can be made similar enough to cs5535 so we can
 	  share more code
-	- convert all uses of the old GPIO API from <linux/gpio.h> to the
-	  GPIO descriptor API in <linux/gpio/consumer.h> and look up GPIO
-	  lines from device tree, ACPI or board files, board files should
-	  use <linux/gpio/machine.h>
 	- allow simultaneous XO-1 and XO-1.5 support
 
 Please send patches to Greg Kroah-Hartman <greg@kroah.com> and
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
