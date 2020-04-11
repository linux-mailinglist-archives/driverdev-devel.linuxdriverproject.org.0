Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 339C41A521D
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 14:51:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6D6585E8C;
	Sat, 11 Apr 2020 12:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HgGosyDedYDM; Sat, 11 Apr 2020 12:51:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D63285D40;
	Sat, 11 Apr 2020 12:51:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24EBE1BF5DE
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:51:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1FB6E85D40
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:51:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JlXTJcCRhBBz for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 12:51:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD3D485D3A
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 12:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586609492;
 bh=P+/BvTIcjH35iVjfgxMJNRM/IZEW2+XYyu9OfnCgY5g=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=QMamHu5fxDtFfF3z/9dcjn/pHbSeAk0+WkTZZqwMnrEHZ6Xed42AKKkXAmavB46K6
 zEUs9ES7+4twBXIbzNdXXGOu8yE2ssxe8TyQmNiMaWPlxTy1is/XpRlverGWr3qtXW
 J8GjJ6hnWHecb2ySghhValLNVl/MjSk6jPGWmXqg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1M26vL-1jPALq3pxB-002aPT; Sat, 11 Apr 2020 14:51:32 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] staging: vt6656: Refactor the vnt_vt3184_init function
Date: Sat, 11 Apr 2020 14:51:02 +0200
Message-Id: <20200411125104.9625-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:UuQ0UtGMGBD59o4VJV5Zs3yYW9zRx6GV7q+pOX0p7VMKaXmWZMI
 l9z5FRQ6UezFd8tsg/CS0lwNBZW+yGUu8PMR3TeDBNKTAt9AI4/SZm2SEJKtIjDSBS23K2I
 oJHE63boNIiud9XMuisxKVlvjY7DUZvZOtEX7C/27+BnIfmg+bJaC2wtZjZ27KtQlFbte8b
 BB3Ke5zfXKM7u5aiMlUrQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:DDDFHtDXciw=:BJsLz2FqPiuICJT1vgj3rL
 xXU0RwJtrN+om0sb4WMKh0ACrkGPgVwJo9k37Z/pSwH5aJrs1Up0Kn1RednwsxAuOEmsJKsFu
 c7TaoNzH2sNyevGF66pjQFaT0vZ6nxh7xxe0cxGn+0EKdM01/23xVtj580UxDLFDsj+PsrHAv
 x4EQ6xmNwKUGAHyzl230mMksz4LEycTPI9vNc+TXSLm4G9uYe2EmHdjaHDUgw4odCYGYbvyM4
 oebpKt8baYxThMPRbMywpYqkflRa7Qmxb6TOcL1MxxVumQW78Vb0T1ddcUw6DwrCYSCR/ezqF
 m2yqrekRIxWvGdKzXFt3Ka+RHKUdmCtQRAG2BnmFHgQGbNbgzVGu+X/0W67RKhX6lhzG0/yuo
 uTnFgLrOFQTvAkzsLKPD0n+TCpR3qRRcWp+zOYCdheP3W131/7gJstfPfIklRVti6xX22rLVO
 Av1oq8OQWur61fcYXcy3Rg3+TB7oP+P+m2u1oh+llCcL70IteZGRf57LEUcv8gWPDfeLt4+J8
 kgKqWQNd2ytYwfI4iVVcWBIC+R1sSHBArmsG45SzynQdClKllOj0snswGjhNfdcHhRwukWRGK
 EGtfZBZp7EKDwKFCTNCowWz8a1TZV/4W1crTCpnn/TOMzVp5vhNfhjtQ6BeF+/QdJNDaOCRBX
 cZoJ4mQFg3d7uHwmeFQRvk7Com2blusni6hQsV+yMuFWxE1VtmpVS1tU4IPSNzXbR4tGBYMfk
 OSk67N/uLO4ExWRefO9KUi1bSMC1X9Sm/G6VpsT+qDJyELvx0AiFX0Iy1RTPR2FdhYJ3Gqlr1
 P13Sj4+98QGreOfTcG1pON2W5IjPKOlb7Lq6AmL0jwlwsuXCWK9OrT9nxnDIgHJKGMMcY9L8b
 cT14i4amGN046JjOD5GyHQYfHISj9IouINwdpj8OPpXhAcNR71KevIgfZyZuGKNdsasdKLqzW
 cvSDAJEIjPH1U6XEEgV6Ob1FjBPqpSiWiL0QW2jp5Aoa92j0tNRY/P7a/IOrRXuTVt7yvvBUZ
 xK0IFq6zM3nu9jizpFd75DRMp2hyQye5PSrpacBWeJcYYEz5m2WxIlAB1123TCNev2oNk224q
 IndIxAjeKrMHRkvZDZaGu5mYdihKTQYP6sLiYyYWIOU7irFq8adoYbYum6d3I85bhh+Qr4fQS
 k/Bn+1CvHMOOjsJYrML9GlGJxpZyjEoMCozGY93mzoNnD8r2iyjFRdRqFSGAXi4kstyU7bTZF
 hQ2oRbFh3hFdcXHf4
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series makes a refactor of the vnt_vt3184_init function through
two patches.

The first one removes duplicate code in the if statements because
different branches are almost the same.

The second patch remove unnecessary local variable initialization.

Oscar Carter (2):
  staging: vt6656: Remove duplicate code in vnt_vt3184_init function
  staging: vt6656: Remove unnecessary local variable initialization

 drivers/staging/vt6656/baseband.c | 54 ++++++++-----------------------
 1 file changed, 13 insertions(+), 41 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
