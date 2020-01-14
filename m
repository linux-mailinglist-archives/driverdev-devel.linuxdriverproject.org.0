Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E83C13B20D
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 19:26:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8DBE878E3;
	Tue, 14 Jan 2020 18:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GeMRiZRs57Ms; Tue, 14 Jan 2020 18:26:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4805784BAD;
	Tue, 14 Jan 2020 18:26:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B663A1BF847
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 18:25:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AFF0A864B8
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 18:25:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H6DKWhGFN95k for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 18:25:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp111.ord1c.emailsrvr.com (smtp111.ord1c.emailsrvr.com
 [108.166.43.111])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 276D186489
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 18:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1579026354;
 bh=mJXDOVmyQnLPIEOfgT1BgAAbTanRahyW+uQTzgnQ2XI=;
 h=From:To:Subject:Date:From;
 b=Qda1g2/vhO9vTeB+YWSA0qryHOw0BoQeKf0bJxh6dFEUZO7ImO5B74by9wTMJAaUz
 Dyd/Sz8rP/H/uKg01Wse2hJj008xw7hmnYIH4/1u+s6ZmNF96Seoam3Yp89ck3qmf2
 w4B/LlD8QaAZG+xkxg/A8o//t61ZUtGzqvyTp/wI=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp6.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 8A700A0239; 
 Tue, 14 Jan 2020 13:25:53 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from ian-deb.inside.mev.co.uk (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Tue, 14 Jan 2020 13:25:54 -0500
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 0/2] staging: comedi: ni_routes: fix some regressions
Date: Tue, 14 Jan 2020 18:25:30 +0000
Message-Id: <20200114182532.132058-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.24.1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>, linux-kernel@vger.kernel.org,
 Spencer Olson <olsonse@umich.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix some regressions resulting from the routing functionality
implemented for the National Instruments comedi drivers in kernel 4.20
when board-specific routing information is absent.

Patch 1 fixes a null pointer dereference, but the set-up of asynchronous
commands that use external triggers on boards with missing
board-specific routing information will now fail gracefully with an
error.

Patch 2 allows routing values for the device family to be filled in even
if the board-specific routing information is missing, which should allow
asynchronous commands that use external triggers to be used on these
boards.

1) staging: comedi: ni_routes: fix null dereference in ni_find_route_source()
2) staging: comedi: ni_routes: allow partial routing information

 drivers/staging/comedi/drivers/ni_routes.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

Cc: Spencer Olson <olsonse@umich.edu>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
