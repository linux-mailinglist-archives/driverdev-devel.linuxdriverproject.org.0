Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BAC1A1165
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 18:31:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6D929204B4;
	Tue,  7 Apr 2020 16:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F8az337FMser; Tue,  7 Apr 2020 16:31:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 18F6F203F1;
	Tue,  7 Apr 2020 16:31:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D0E4D1BF47F
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CABDB86E9F
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FKjiHa4jSwg3 for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 16:31:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6136486E6A
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 16:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586277060;
 bh=mGcNn/hciDAa1MtlzL+yKAo9BVtXHK66bYlr9Vx0ozY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ClIVEwm8T5Aa6VcCJQASK9GNmTiUt+aynyqNP6ZIf6TmCASZnR9d6SbWM4IKwXToa
 uDSaYF8YhZf7vRVraaXIW0ZEyzNelb3YOG308tHYAYxA6JtvRIZ+MrvngK+GJFa7vl
 uqD6AKqDz/szviFV+2smJlBnTz8UcQdkDFI7Iz78=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MMobO-1jcQZU17Xo-00IjSr; Tue, 07 Apr 2020 18:31:00 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: vt6656: Remove unnecessary local variable
 initialization
Date: Tue,  7 Apr 2020 18:29:59 +0200
Message-Id: <20200407162959.7318-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200407162959.7318-1-oscar.carter@gmx.com>
References: <20200407162959.7318-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:UaY/NzihUNA7noUE4WYo5a2HMtl4iCD2xIPTYOXp8Y36W5So9s9
 SU6FGSAaXWqjiMZ+i4KJ+VgUy1o+JX72oXb9tGYSU58Q3IE3l7lUNmJPAvdGFCh48Kza7zj
 7q6va4Abvh8S41q4PvJ+72V6UcyBlL5Qt5XqjKFU3uR9tqibS5MqVDox6PBNVo36I7SHFWt
 /W6duAPkz/YzcdTJBKIGw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ssw9doPq2OE=:oj/WuGNg3mz2KQVXrTZJeP
 fqAuIHxpbaf8nQtNhm5rog717riSqPIP9MJVR/TfCLgQ+fmJ/hE74+AWu/MS3pqQl35et2TMn
 qqbvBObj6sYgYPBJlIbbymW76ahkZ/UOA34FTmLKesPEWt19QOCFKHKOBn9+/1g+oZJQ2qYN6
 PTHCVFNSUfKPlTHrogTTk4iTJALA4ZI6gq9ppXx4vO8ZICEfLB/I7u+pPdpmPmg6IbVLparz8
 9iq+Uc6FSBJ+QFzgvpHFIOJe3Mb/mBGtIswp8SWtbUc5iLrSF+8iBizALt2XJlhu5gDPaCORv
 lG/hnCDCLGhZac+TBcRkz6utSTNrHlV2qS6+f2f42d2pomdirIMNPkyxUlipbuUyY1u/7ITVV
 Mj6G+WVyaKmxToKy7z95rRLvd1ekCz9sljzF6iATGiIEkMt4MnqIwNfbxZ/J1rJEXLCSXwZXt
 R2MSpUhVsCoZe27VGOlhzqnz1OQ3T7V9gvP0VTMXKFobkhKpvbdseop5DGUMvczxEe0E8GkEo
 hT2G2eNis6gD1zDZROpep64c3e6n0adUNuq3pNCQz9ZUAHHbUjm+7fxKUqwz2Vcoc2Q/T3Ykm
 nMH9t/nyYBgHNa732VtdBlPeo8NN/tCkrbyS59jhoUvopE61fHouTfIaItTk6O2tWztposGa4
 lsoifrY/ybmGmHoNJ9cxitVrgJkaYIa0HrSgmU6UmpSbrE2hpqqaR3BWRJbtD0lClHDMrOnJX
 rAavBiWwk7HLMZsXDWm8PlDAYHpwS+BNabVl00Y1zGRMc/v4L9zuXzQ2G8Yb+sGVHQtWcPZJE
 yOBy7lpV3YvKZ/02C2cn50B1jBY2ygbv2H0zFhgOrV2CsfC980RQRs1opxOAqCQt3GI5EkAi4
 rhKE0w86Jtp6LeQLsnNGHYhW8GueyyDghIcx/kYRJw2rNiPvLXgyupEmHQ5axpuyeMvWzk/Q/
 z1gY0N5Rx1+YCXsIcvxAyx7JaIktqkHwqi7+Fa0S1KCR4/4WwrG7XTH3FBPGpY9A/EZWBH53o
 eeExstw5rCO5Z06p2LS+p4Gp1DR7Optf4xIIf/wd6viST0hM1bE7AcCsplcEp0B19N921KLDT
 CTwChosCov30WcasUYwCvNMCIsvt46NW6kLhfwVq7XkJlgwG7uqMEwBx71N6z0L/TYXQF5nQF
 CH21trLuLwMydyHMfR22ptE1QIBsYG6KfL7nuyI+AEezOtNDP8uQjCOjINwN1Lnjswcmm+d5q
 xDpKp27KcK33HmY/g
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

Don't initialize the rate variable as it is set a few lines later.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 092e56668a09..5d9bc97916a5 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -135,7 +135,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
 {
 	unsigned int frame_time;
 	unsigned int preamble;
-	unsigned int rate = 0;
+	unsigned int rate;

 	if (tx_rate > RATE_54M)
 		return 0;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
