Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BEC319522
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 22:27:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E7D5875AB;
	Thu, 11 Feb 2021 21:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AtCcGc7s6VRH; Thu, 11 Feb 2021 21:27:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8F9B87551;
	Thu, 11 Feb 2021 21:27:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 042F31BF390
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 21:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0086087561
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 21:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IOdQYoEtkFKp for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 21:27:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztdg10012001.me.com (pv50p00im-ztdg10012001.me.com
 [17.58.6.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 97B6E87551
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 21:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613078825;
 bh=JEcfCCW6pCsy8+7s2TUJw7KTODO7ngafD0Ki8eLydgg=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=rLlZZeRoxsE3UuFVqRZ2TQJ2ISq7RGkHiYdaPgJuitkCr8WolRKZAgYqssEk112KX
 SrEJGVKaJMvPqhbPC9H5bmQQwLMnF4f9zckdez1VaFVLYOHPXZGJfoy7OSC9yog4jf
 NLdF8d7Aa+IGBpdSNIog/KP1haqcF931g3zZvjnNEyz4gBloTcodyHajubszAVVSOp
 L7E5mQaN10JYcrWPAgWIX1kx2CtUgRosMrvhB+mFeu7IcLQdYvxt1+WXE7WY1TcUkM
 ICsa6WJfA5hw6vphEIDM+f9YaxFduqF+t+azf2UzwsuzZstBTE1eEQn0u+3ZNqmSYG
 PzC9V5U7RYu3w==
Received: from everest.nathzi1505 (unknown [45.250.50.68])
 by pv50p00im-ztdg10012001.me.com (Postfix) with ESMTPSA id 0C2E32802E3;
 Thu, 11 Feb 2021 21:27:01 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
 oscar.carter@gmx.com, tvboxspy@gmail.com
Subject: [PATCH] staging: vt6656: Fixed issue with alignment in rf.c
Date: Fri, 12 Feb 2021 02:56:47 +0530
Message-Id: <20210211212647.7077-1-pritthijit.nath@icloud.com>
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
