Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAACE319C6A
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 11:14:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B1356F614
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 10:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yQz1VXVq4IXK for <lists+driverdev-devel@lfdr.de>;
	Fri, 12 Feb 2021 10:14:18 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 69E9B6F6D8; Fri, 12 Feb 2021 10:14:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B64CB6F528;
	Fri, 12 Feb 2021 10:14:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8604E1BF2FE
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 10:13:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 830E2872EC
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 10:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8brGMHraxNnY for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 10:13:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztdg10021901.me.com (pv50p00im-ztdg10021901.me.com
 [17.58.6.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 321F48730E
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 10:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613124830;
 bh=zKxn6CR/gmXhVeTG2aKkLvzoS7M7r385JLEcPBaeWp8=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=r83pITR4RBAHpGZED7IN+IVT3ijUdmE5PZh3GB9EcoRaWsIa5sZKi/NJ1LzM/tCYk
 zoQ3OEg0bL2DxUQw65zVLorZlwZJoaoLp/a9LRoF4GbqlxdLTQJwDB2b8ScMC0fv5+
 DThfJp6xoqd0AN8dQWqhMEY5HyBwFVt4zXS+GSIEp+Mwm5r4b6Ovm9OFA4HchUCO0p
 P+RMpu9SR8ZKmqGiFsi2WlPvElbRmUTk8kmKomUXRK/fTveBYksgSpFKxyRngcTDei
 5ptNdy1/tKGb7pe+Xn87lShwlNBeESr+n52wcCs2BZ+/6Dzx8QdzaiQogy/al4E/pa
 uEYF5CBIJ5pGw==
Received: from everest.nathzi1505 (unknown [103.17.84.167])
 by pv50p00im-ztdg10021901.me.com (Postfix) with ESMTPSA id 53AA788034D;
 Fri, 12 Feb 2021 10:13:46 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: vireshk@kernel.org, gregkh@linuxfoundation.org, johan@kernel.org,
 elder@kernel.org
Subject: [PATCH 2/2] staging: greybus: Fixed a misspelling in hid.c
Date: Fri, 12 Feb 2021 15:43:24 +0530
Message-Id: <20210212101324.12391-1-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.737
 definitions=2021-02-12_03:2021-02-12,
 2021-02-12 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102120077
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Pritthijit Nath <pritthijit.nath@icloud.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed the spelling of 'transfered' to 'transferred'.

Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
---
 Fixed the typo in 'transferred' which crept in last time.

 drivers/staging/greybus/hid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
index a56c3fb5d35a..adb91286803a 100644
--- a/drivers/staging/greybus/hid.c
+++ b/drivers/staging/greybus/hid.c
@@ -254,7 +254,7 @@ static int __gb_hid_output_raw_report(struct hid_device *hid, __u8 *buf,
 
 	ret = gb_hid_set_report(ghid, report_type, report_id, buf, len);
 	if (report_id && ret >= 0)
-		ret++; /* add report_id to the number of transfered bytes */
+		ret++; /* add report_id to the number of transferred bytes */
 
 	return 0;
 }
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
