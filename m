Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3398231953C
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 22:37:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B26736F704
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 21:37:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q7oCKSTk358D for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 21:37:55 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 882A46F6FC; Thu, 11 Feb 2021 21:37:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7204B6E922;
	Thu, 11 Feb 2021 21:37:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36D341BF390
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 21:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33AAE87584
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 21:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZgmONBURT3f for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 21:37:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-zteg10021401.me.com (pv50p00im-zteg10021401.me.com
 [17.58.6.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B68B68723C
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 21:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613079448;
 bh=2kPInYmiLdbdUSVjWnNrG2+HLjtCKcElGsBjJRebRQA=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=NCtqFcivPuyHlTqY48O3+E52PMZ1F5AtKTEaRCOQdpuUnf7ctL4OM7H19vfzDx3Nq
 earzmQj/tkg3aWSAnUcagbQYwSKBTeYHNra5ik3tsuozf2fZE4Opc6pgbaCRMxCqzC
 nfF+NYJHfZYAfM8NKpmPaXxB7jwUWDHpekjX3bxAWX0JhlpJg0UjWqVob/LtWyGK0z
 CwaWleUwW8dAjMWD/y2Yd2q9xvSYt0EgacNc1NurH6aSE+xt5JXZ7n05zNHRhcq22t
 DO8q4q8bGKfr6u2K0tSGwNqGUULTgQI/8wOhhg+s5cCulewlijoCDvCJhpAzYazUZ2
 dr0nvaoIQntHA==
Received: from everest.nathzi1505 (unknown [45.250.50.68])
 by pv50p00im-zteg10021401.me.com (Postfix) with ESMTPSA id 19F32480274;
 Thu, 11 Feb 2021 21:37:24 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
 oscar.carter@gmx.com, tvboxspy@gmail.com
Subject: [PATCH] staging: vt6656: Fixed issue with alignment in rf.c
Date: Fri, 12 Feb 2021 03:07:15 +0530
Message-Id: <20210211213715.7386-1-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.737
 definitions=2021-02-11_07:2021-02-11,
 2021-02-11 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102110168
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
Cc: devel@driverdev.osuosl.org, Pritthijit Nath <pritthijit.nath@icloud.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch CHECK style issue for "Alignment should
match open parenthesis".

Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
---
 Fixed trailing space in changelog.

 drivers/staging/vt6656/rf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 5b8da06e3916..bcd4d467e03a 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -687,7 +687,7 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,

 			if (hw_value < ARRAY_SIZE(vt3226d0_lo_current_table)) {
 				ret = vnt_rf_write_embedded(priv,
-					vt3226d0_lo_current_table[hw_value]);
+							    vt3226d0_lo_current_table[hw_value]);
 				if (ret)
 					return ret;
 			}
--
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
