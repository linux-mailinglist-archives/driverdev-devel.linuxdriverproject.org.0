Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CB41A11D2
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 18:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 039A385C00;
	Tue,  7 Apr 2020 16:39:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SgYnbea__JNi; Tue,  7 Apr 2020 16:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D94885B4D;
	Tue,  7 Apr 2020 16:39:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7E761BF47F
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E3F4887BFE
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:39:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0MfRhCwksX+9 for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 16:39:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0772E87B6D
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 16:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586277573;
 bh=KDnY7+9cyTUORfefslSpVuilBVC7HemGqZGdd6Cz9tI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=fVwgyyI251NbZTILwBCXR4K6qQrBP/eruwXPz3J1sF4F6e3IHF5wA15DfAwXNTDY9
 xrWXkS36Geie8926Y881QMAayCLgMsclk+P1fZcgPLCC7IYU1SX4RdEvG6O/b24oC7
 /RzpJ0zR3yEXHL2YJZPpjYL+lFVuBSqGxesSm8YU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MhD2O-1irUWd1rRy-00ePF5; Tue, 07 Apr 2020 18:39:33 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 0/2] staging: vt6656: Cleanup of the vnt_get_frame_time
 function
Date: Tue,  7 Apr 2020 18:39:13 +0200
Message-Id: <20200407163915.7491-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:w0yevbcyk0crSmkW4QvrWRrn4IVxqoT1Occkris07LGxOIyTubZ
 KZMIBv9n6yRb/alAhKIcLMZROlUryBr4kq9DhbL+nBfPs+EVOwQhzW20s+Yf2r/h3Ndh+HC
 oIT+HUcXIHVfQScFGYtx3KBo5cBo6acgIK3QWe+eg2X8hnzUBVUQLDx5qgRZik/axEPgbcr
 3UDMFTU8/4Dg7FFfmWjEw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:y5zllwH5DgI=:RI69gCbJOCYG1KkS8Pm+PC
 JqujLrTeUlhUejIYn8Ak0AjsFBhy8K3OYXSFLCr3CL8BFS1+sx8ot75OqphdTObqOdrqht2AC
 p2wHPusfO74k91nOyuaxKreijBSGUFgyBLF2FFMF8cUB1kdsbStIG3nzjb9RfMbifEzsXEQHk
 tFM9sYrjxm/Z6cK8d7NtS/QePSogBbby9SNkSmnQrAmwv4Y6Osp8I2TIMz/vykz7Ix3t42U0U
 VhgAGNzaBoQUW0FZn75Ie3S6XZSDad3ocmWEROawMlUL2PURl/QB1Aa3ioBXzpyHKcWmQnxVk
 aqpYrmw0Rr4Rg+eu+xJqWAQVpQrwGwI3nGeyyz52UIO4v0MMEVtpgCNCKWG0byebzmaTGOHZt
 jTxx8qPnf+WWC1AnYYqFBhqxOKrrjCxoaFagif0LolUAeY7ENAbblqu0pnb5c0C0YYoitEZYU
 YNu1N+vG64PMqAXNC8vzaD2FBW4XRMVa83cl+xxC681O6wJKr1dGrKYqgEwoS76poFQu2k5hl
 qAEsLI+omVdYja0oq/z5QzZhz7EW7Ip3HpoR2vajIguUHKKkKvN57XVuBSxd40Z4MbWmVzmFk
 ajj6lrybBCqFialDCo50W73zEQ5dQmMqn/kVL/sICW2RiYNCM/nDBIm2PN5hVn0PtlaIh1Fey
 bTrD7t1RmC/5iZ7YrRsE7GIOMV+DvoM5aPF/fzFQrHh8Hb/bLLmQKc80hBA6v3b0xPi9KQhc3
 7sB0l0h9qw8n8NLxSbGHTrHcB96Rbb0RojrruGAOmciVMMkaZBneLljgCcLUhPtyGq3ouQFXs
 24xUhC8CdHUHPjXKLBoc+ELxAtyZK6YVUpCrub0R91q7mtdO5k2C2E+gDa76QKTajNS2kcHlo
 FgFH72BpvBBO9dv3d2IdNC/r3PvcaPlVttZvpibQs0XBHzY8XkVVRkAL3X+tMdjbyTBoQHkqM
 1DuqGQGvKlDeOBDoXcFzp1JcYG1nL3rbkzuiuU7GPNbewP46iCucnRkPYUagYm8CNqp1u/5Ot
 ZJDthoGy2utRixNqrPpnvIQ8FerUUVVHYIIQGzvmLtLHicNTymLKAleP3eZDcjm706Xy6V+pa
 rw4RCsNS1sgxNcMH88BsaGGkHME2vM/8hTZDM9uQ3G/J6wFUcVaFFNlPyHGm/gGoBqsOAJL9z
 5Q6crayq/HoIkpSPDSWNXFpu1J7kkCr+PcrO8uoiYZIiGMJR81qveItKgXS8r1xC3voMVXw6T
 T4YUzE2LNMTHXL8UR
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series makes a cleanup of the vnt_get_frame_time function.

The first patch makes use of the define RATE_11M instead of a magic
number. The second patch remove unnecessary local variable initialization.

Changelog v1 -> v2
- Not use the ARRAY_SIZE macro to compare against the tx_rate variable.

Changelog v2 -> v3
- Use the version number in the subject line of patch 1/2 and 2/2.

Oscar Carter (2):
  staging: vt6656: Use define instead of magic number for tx_rate
  staging: vt6656: Remove unnecessary local variable initialization

 drivers/staging/vt6656/baseband.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
