Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABB61AF972
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 12:49:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6991386064;
	Sun, 19 Apr 2020 10:49:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DhfSiguJRfPa; Sun, 19 Apr 2020 10:49:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72EF686004;
	Sun, 19 Apr 2020 10:49:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5DC91BF2B4
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 10:49:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D1F7287823
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 10:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tdMji31R6Ap for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 10:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F5A387812
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 10:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587293325;
 bh=3jAo2O3TXaZEMKOZIe9E3hE/PYAWmrtw7jQ9+z5eaJE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=jYncgqpe8y4utXxE+6eQ2f610VSV60Nojmu9lZTaiewd29d0qRmVMlpFe5TbWzwgc
 oIae0d73VxkS3iElZ52ujljqdoEdy3iXH3jqAZFEPwicqxrayEm9NpOXKICmZRm+0o
 See+J6wCGr2P1b0CMVHQDsLrgI5nXavT1pSuv6vs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1Mz9Un-1j5AmE0mP5-00wCkR; Sun, 19 Apr 2020 12:48:45 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/2] staging: vt6656: Check the return value of
 vnt_control_out_* calls
Date: Sun, 19 Apr 2020 12:48:19 +0200
Message-Id: <20200419104821.6127-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Jr0uXI0eYb4k4tV/gk2x4YSRsAgSc7y3yCVahYpded4aybrF7wh
 YgpHxv+mEFJKfx/ecf0p8JLOQUfBhv1Xp9FFR8grC/OEhPmFH3+KwcJmxmKMgtnWArpuagK
 Uju8g4b7vHTrLHN6/xCUYei8Efu+/klpBFvK+OfAxP2a9suzZPN7Suoe5sG2+jePVOzJ1Lv
 +57xbnmJfrA6Ym85LYtFA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:o/Js2WZO5M0=:e2R2N3P1srnFYT2n5WForO
 JYTt0kzHdRB642tbU1aGHY1uLWtjnp2Fru5cbfXGIzphSyyrWGV1RIejJD6vtTLakkZUpgHSI
 giaHICMecJN4IL/4hqoQ9vxTCjiDPSbyDheKsmsCqgkNjftCDcXzu1cTdwI1Tv6A354HfiyDU
 ySthGKlo4sKY/y3cZQwqgG2zMSPGMjYQjWgEWodikklBhYoN5ALb6NbIzR6xQIEZd3wEYua2y
 egqLhAZf3S+001RN+Rj36HofxdPNlQ6vAUNTei/0W38L2bFpyGQTg37TR19hyOzBJduXIR7Uv
 BxzecpCmzlEfcxJ3vVzZITIhRxCZGA9AzyFq/YSl/pg593eeuH5hkIz5b28QS8t33M+gZw88S
 jpZlTUIzahQDRAT4oYtp0f+WrT17N8HMJWg9wP6iuezAb0KnqHYoaMrOhrzjnG9SkbQQj1NYv
 SeQKSKT5XSfKMhmDoSOH9EnCZemJRse0dyzzs+WJUXSYd9tNWDSDFfshdI1YH/9Tsq/d1MWji
 7dpbCQbmePy/uTUWsIZRcF4bCzChwe8k/DHkzDVJ2d+dYtBET3ixMAq3SIOa4ItXGJ7nuYug4
 L2moOWALVCapIn9xm2dBpoBvSS/sYcsLIjYhgzIFpdv9cqsx0qQzyuEiPPAYWBCoDCTLUGurn
 FrmNP7BG0iEMWe/m3Af8QOUXkF1GTh0eX1b5TaLI5F3IfGwcMnke/9jK7Y3c6msDcLaIHiRA2
 NbQ/V7AEZF+rQI6mMFfjLzDFVT4jfJ6FrDeB+6rhYW/94Nr4pv1L0UIaK9CEBQ2KGe5xAWHNg
 iEK54x/1cfwqo3pufXXIj0Vn6vo2s+g+wlAC0OujneZWEMOXeMfx2wlnBQxD8zPR89POX+Rix
 rEHkSuGPTVU76cnjlzKQbBrQ6ZdhMNM/3hOEif3OvMaxkCYraFAOV+btub6xmdOnmmdCTmkYw
 ngmFya5ssoZGuc22bslqngbTVA/txpBSV9MIoprFQK/vXXUznlLFP4hnQoVXYTKWi0ay1i/ir
 aIoSJCAmSuxmxiHokTUml0xL5fY5MW2o4sGC2U3TNVuAiVHo+njoC11mrgVpfdiAOP9UAeTpc
 JbTGIRHINqvMP30qljbzVqfr4kRux2CmSrsh5FeRJUHVRp16DnFgMH8eKpJVrlXy67/6NzeOW
 9eirxFIrEpZDMCfC9w9EYhC8VpoHBzW9EpxAu8GeDGcKLY/ilayWRI+keOnOa3dqWWU0mT3DW
 vyulUpJS7c866Yn1Y
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>, Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series checks the return value of vnt_control_out_* function
calls.

The first patch checks the return value and when necessary modify the
function prototype to be able to return the new checked error code.

The second patch removes the documentation of functions that their
prototype has changed as the function names are clear enought. Also,
the actual documentation is not correct in all cases.

Changelog v1 -> v2
- Remove the function's documentation instead of fix them as suggested
  Malcolm Priestley.

Oscar Carter (2):
  staging: vt6656: Check the return value of vnt_control_out_* calls
  staging: vt6656: Remove functions' documentation

 drivers/staging/vt6656/baseband.c |  35 +++---
 drivers/staging/vt6656/baseband.h |   4 +-
 drivers/staging/vt6656/card.c     | 176 +++++++++++-------------------
 drivers/staging/vt6656/card.h     |  18 +--
 drivers/staging/vt6656/mac.c      | 128 +++++++---------------
 drivers/staging/vt6656/mac.h      |  26 ++---
 drivers/staging/vt6656/power.c    |  22 ++--
 drivers/staging/vt6656/power.h    |   2 +-
 8 files changed, 156 insertions(+), 255 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
