Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0FEC224B
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 15:39:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91B74822C6;
	Mon, 30 Sep 2019 13:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
	occurs 3 times
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nqPBAj5gjWKz; Mon, 30 Sep 2019 13:39:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E53385ECE;
	Mon, 30 Sep 2019 13:39:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B598B1BF3B1
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 13:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AFD8285EFB
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 13:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
 occurs 3 times
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v_PPiPZjcig3 for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 13:39:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CB1B85ECE
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 13:39:08 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D54112086A;
 Mon, 30 Sep 2019 13:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569850748;
 bh=6Bf276P6QEYXtQYfUT30k7/K1Uk4e9eQDDt1SkMLRB0=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:
 References:From;
 b=OYPIT+HsQkwx6qAH0Bq8ZTWfQNvYyznBEnKSGjxjJSLdIKwJ9nNyTNk/4+N++HEam
 pNCvIJSzKuK+W5bGdmofon6UJhrsS3PDu+90nMdMvnxso9P4OfUT+pENN9sp+9YYmq
 IHbeO+9oT6uxIj0e1iwsehciAYcb9Df9Qf5osoac=
Date: Mon, 30 Sep 2019 13:39:06 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Denis Efremov <efremov@linux.com>
To: devel@driverdev.osuosl.org
Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
In-Reply-To: <20190930110141.29271-1-efremov@linux.com>
References: <20190930110141.29271-1-efremov@linux.com>
Message-Id: <20190930133907.D54112086A@mail.kernel.org>
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
Cc: , Jes Sorensen <jes.sorensen@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Denis Efremov <efremov@linux.com>, Hans de Goede <hdegoede@redhat.com>,
 stable@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.3.1, v5.2.17, v4.19.75, v4.14.146, v4.9.194, v4.4.194.

v5.3.1: Build OK!
v5.2.17: Build OK!
v4.19.75: Failed to apply! Possible dependencies:
    8f884e76cae6 ("staging: rtl8723bs: hal: Remove comparison to NULL in hal_com_phycfg.c")

v4.14.146: Failed to apply! Possible dependencies:
    8f884e76cae6 ("staging: rtl8723bs: hal: Remove comparison to NULL in hal_com_phycfg.c")

v4.9.194: Failed to apply! Possible dependencies:
    554c0a3abf21 ("staging: Add rtl8723bs sdio wifi driver")
    8f884e76cae6 ("staging: rtl8723bs: hal: Remove comparison to NULL in hal_com_phycfg.c")

v4.4.194: Failed to apply! Possible dependencies:
    554c0a3abf21 ("staging: Add rtl8723bs sdio wifi driver")
    8f884e76cae6 ("staging: rtl8723bs: hal: Remove comparison to NULL in hal_com_phycfg.c")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
