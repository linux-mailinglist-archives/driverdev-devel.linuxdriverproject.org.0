Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E14D21A8362
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 17:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C09D85BEE;
	Tue, 14 Apr 2020 15:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EDTkTmx15VxV; Tue, 14 Apr 2020 15:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27A1785B3D;
	Tue, 14 Apr 2020 15:40:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F5F91BF59D
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9BBEB861E7
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0XYw8M0jWVql for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 15:39:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1AB7A84F75
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 15:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586878765;
 bh=+u2iRiz1u12jwTbT/cGxZTl9XtZZVJufsVEXnJf4nCA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=CFH4FMU+Ebu/ZmFQWHLJ36BFtaM1k5CfjGwExBxFPCxvf5RZxFgCQan2l2BMhZRn6
 qPJcUZzw16V5U/gBADjIqZa1QWuyEBjXN6F3nweit2w6d3PfIhu7XVreuK/P0bgMkw
 4VUMVAqwXsSzt1k5OMUPZB1AvG6OOvlsjAVNwigo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MGQnP-1jTcJN48Y1-00GsDx; Tue, 14 Apr 2020 17:39:25 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/5] staging: vt6656: Rebase all rejected patches
Date: Tue, 14 Apr 2020 17:38:44 +0200
Message-Id: <20200414153849.5785-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:QQb6EyE/aNv98TLvWbJYq/6pzAteOapf8MImXiw6u9mX4eiR0LC
 0ow577hgTtLtpsj/eDMQ349AkQcYbujaXIyP7U+HLqjpsehlPbLf8sLccr2o3qwUiI5IWAM
 w0fjXDGPKt96fXr1SP/iXmNFxFbLS6/jSBsW3SunJzs5UPE50Bnof8x+81j25h77uvxdYUQ
 t7pH6SsP8Q5bFU3a/5Bdw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:iz1lzCIK/m4=:bWfixinPbNKztKuQWGd3FT
 eVDQm4uurnyxi9/oNJegL8NR9cPLO3zVVzr8Jz8WeRA5TO+oFzygoNRfPLbeHPnbL5+3mUPiy
 DWwm4k2zFBFX26CZ7m2xie4q3ZWzjysFH1K7G7og4F72RnKnFP3nR1i7+pGhq6AfvU6NsFTwl
 SE472oiqEYCS8XcomfJPyncQ+uib4BRmFuxGmvqZ8FTTrJresPLxuX/rzLVi8bZjDWs1UGtk/
 8ScMhq2oEvwk+d03hbLMGPuRuzJqd9+R8JOr1kFIF4TLeYbu3eSs65UuXCyYWCc0gqySDQZRx
 W1RWeSmVNC29oFVag0lbOYioWFpVFgBaJhlitZHSqjpqZ+Mly8WRBLoijI1zgPxHsEuRT9XJB
 1BA/V/q4MgV3KlG02QzkVSudOYLeQ5g2cHCpU7nKBOHcL2fgv3WoYmhQS7WuZWJGWuvEYvev7
 1qyW1WkM3T6d7Hr/HMnBhEDo1DS315hBziVejxz1tddZEbU7snk7c/H8v+9e8OH/Ggrm8z5mB
 zTYsps9I7uYMpIkO9ZW1XKHZFeHYVjGjAAUMCK6n0T2u0jC7ZH6S9NZ0d1vzG6zAoPFl2J9pC
 cGGbOPs7PRVdJftMw3pz9c0dj6H39foBf4Wlu7kjJlEoQReE/Z0bEC/cQsSWlf/iJPzrwRqlf
 rZrdHaS3zSlpPcYKTqN1QASVipGE1CClQAX2X18Cu9nk8aUtQpM49IpzVkQzJMX6iw2XjwOCG
 e56l/dnN6u/6I35McZ9XCoVc8gvQoG2hJesLt/km2Rm/1kTnn7LMvljDiNK9tC2nt0sSkC28s
 PxDO6GbW6iB+fLSZUCh3XQE2zyif3Og8yRHrPIFky/8ry4YQGAd2BzfQvzOPmyQH1XIroXUe8
 newM+78eO4yN9Ky2x4cSJ/pQ7rJVqHvuZvUhV0n4gZytffaSN7s5hIKrYc2ZfVLnpJFMwWB4z
 SyCtw/w48ImNh2ItmQ832yvmzL3cH3Hdr+9FWqiz5gLMYbX/EOLO/WP0/JqmhRGqT4Hi2Of6p
 Z6POK0MeDlFC86B1j3v5NYOUK8LcoBLfiOwus65Y8U71lG0/V96BlbHbvrsPFKF38oDY0MaT9
 S7pNr1dpCu1KB7D4q0A0F/DpROom9P+sPLZ3/pDtGF5D0MllIN3KUqIHBYIDJUPQJLNCAFyRm
 5JFX/7Qd+sais7ocm66Ru5gN5FKNl58EW57mnRk5J8sifqPHcfkXv2KB/yc78+/Nc+57ITLDJ
 fUifORz+xUJS6lP/q
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
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series makes a "rebase" of all the patches that were
previously rejected because they did not apply.

The first patch uses the error code returned by the vnt_control_out
function as the returned value of the vnt_rf_write_embedded function
instead of a boolean value. This way, the return value is an error code.
Also, fix all the vnt_rf_write_embedded calls accordingly.

The second patch uses the BIT() macro instead of the bit left shift
operator.

The third patch use the define RATE_11M present in the file "device.h"
instead of the magic number 3.

The fourth patch creates a constant array with the values of the
"phy->signal" variable for every rate and makes a refactor of the
assignment of this variable.

The fifth path takes out the "phy->service" assignment from the if-else
statement due to it's the same for the two branches.

Oscar Carter (5):
  staging: vt6656: Return error code in vnt_rf_write_embedded function
  staging: vt6656: Use BIT() macro instead of bit shift operator
  staging: vt6656: Use define instead of magic number for tx_rate
  staging: vt6656: Refactor the assignment of the phy->signal variable
  staging: vt6656: Remove duplicate code for the phy->service assignment

 drivers/staging/vt6656/baseband.c | 111 ++++++++----------------------
 drivers/staging/vt6656/card.c     |   4 +-
 drivers/staging/vt6656/rf.c       |  99 ++++++++++++++++----------
 3 files changed, 95 insertions(+), 119 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
