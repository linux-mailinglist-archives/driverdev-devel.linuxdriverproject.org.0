Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B05AF318C5A
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:46:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0FE6A873B6;
	Thu, 11 Feb 2021 13:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BsjdY2NsagEk; Thu, 11 Feb 2021 13:46:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B32C87267;
	Thu, 11 Feb 2021 13:46:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DA131BF575
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:46:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4A044873C4
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:46:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rLIWYLyJFIvC for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:46:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztdg10011201.me.com (pv50p00im-ztdg10011201.me.com
 [17.58.6.39])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D01F887326
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613051166;
 bh=WMQ2ew20gKuHcvkWuDVwaoOaOgxu5nNpW69z1RSBBQk=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=NJHTLTwpz0HnusHQihwPPv6xVzrCMZ134hQIQ9kRK4R58P171wAe+sANhWpjEW8L2
 +NMjQ1BQkcMem7y5pYnTBUEn01fOqd8psZ/8SNoSE/slMxEr+GqMllvz57BBhMGAQx
 ROMzsw1q3oxDqHtfjoW69EO5kJqZNSj/mIPJmlQZ2EfmeNqjONy/g4xfvzzH+c7rDA
 0CozYOSE6gPUz2Feo0WFYz//Ulw87a1yMuTA/sG7DTuZZAS7lLHZnMVB57KI+gsQoR
 a+dWgprTWABOquqeIF72Afh5rtwYxslvOgJCW02ofFTl/wIjhpPMPFKFQzfqe23dTe
 opPjy9p/wmzqQ==
Received: from everest.nathzi1505 (unknown [45.250.50.68])
 by pv50p00im-ztdg10011201.me.com (Postfix) with ESMTPSA id 57F902A047F;
 Thu, 11 Feb 2021 13:46:02 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
 oscar.carter@gmx.com, tvboxspy@gmail.com
Subject: [PATCH] staging: vt6656: Fixed alignment with issue in rf.c
Date: Thu, 11 Feb 2021 19:15:48 +0530
Message-Id: <20210211134548.84956-1-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.737
 definitions=2021-02-11_06:2021-02-10,
 2021-02-11 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102110120
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

This change fixes a checkpatch CHECK style issue for "Alignment should match open parenthesis".

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
