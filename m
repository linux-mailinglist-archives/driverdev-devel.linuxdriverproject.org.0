Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D80D9319B19
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 09:19:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A730B84947;
	Fri, 12 Feb 2021 08:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NADpey7sxdD5; Fri, 12 Feb 2021 08:19:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9A6D84595;
	Fri, 12 Feb 2021 08:19:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B7B21BF3F6
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 08:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 673E0874E6
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 08:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ki8DnLCqZeG5 for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:19:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztdg10011301.me.com (pv50p00im-ztdg10011301.me.com
 [17.58.6.40])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D855A8743D
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 08:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613117954;
 bh=mF341d1YTvkybGz/812cN3sUxzz77JK/zSFMtSWK9tQ=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=oZSvsXy30ynig0wGe+j1KV88PpZtUnNowgS/qjTRUjqG3PnXVHqdf8KVElwNckaMp
 gBAYwIejYkGo9xOI9LM0I7cKMPWI1vI2z6TwmUkv/A6tmJBpEwd1L75fWhKXJj+kOG
 1NUJMqXrH3pdGTJOUQPlgUr2iNBZIEKj+jNifb3S8fzoWzx+XcPXorAY6ycZ+7MJX2
 3qZA9xKTgfOfRUJMPtx+e23GJIE6/UDmdebvS8l1somIJNZ++nNq5jC/VONWy4ovy0
 pLwqFvS/b+Q3LQCMhELW7OzIFAsMUaS1DSrhN5EKluGhfJWmd6o42nqN1Xqq6fA/Z9
 WxrE2VSnCZ69w==
Received: from everest.nathzi1505 (unknown [103.17.84.167])
 by pv50p00im-ztdg10011301.me.com (Postfix) with ESMTPSA id 902077605DB;
 Fri, 12 Feb 2021 08:19:11 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: vireshk@kernel.org, gregkh@linuxfoundation.org, johan@kernel.org,
 elder@kernel.org
Subject: [PATCH 2/2] staging: greybus: Fixed a misspelling in hid.c
Date: Fri, 12 Feb 2021 13:48:35 +0530
Message-Id: <20210212081835.9497-2-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210212081835.9497-1-pritthijit.nath@icloud.com>
References: <20210212081835.9497-1-pritthijit.nath@icloud.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.737
 definitions=2021-02-12_02:2021-02-12,
 2021-02-12 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102120063
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
 drivers/staging/greybus/hid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
index a56c3fb5d35a..6b19ff4743a9 100644
--- a/drivers/staging/greybus/hid.c
+++ b/drivers/staging/greybus/hid.c
@@ -254,7 +254,7 @@ static int __gb_hid_output_raw_report(struct hid_device *hid, __u8 *buf,

 	ret = gb_hid_set_report(ghid, report_type, report_id, buf, len);
 	if (report_id && ret >= 0)
-		ret++; /* add report_id to the number of transfered bytes */
+		ret++; /* add report_id to the number of transferrid bytes */

 	return 0;
 }
--
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
