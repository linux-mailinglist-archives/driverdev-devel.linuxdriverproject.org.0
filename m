Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC70A7FF1
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 12:04:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D33BC876B3;
	Wed,  4 Sep 2019 10:04:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9h0yyCSkgC4v; Wed,  4 Sep 2019 10:04:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E7A4878BC;
	Wed,  4 Sep 2019 10:04:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E6B21BF47F
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 10:04:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0B64684647
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 10:04:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2C5UEy8iAQ-A for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 10:04:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7356384518
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 10:04:35 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x84A47Wh123230;
 Wed, 4 Sep 2019 10:04:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=jbhkDb5OQlgB05nFnu/BmVaX6e8czF1EQGjdDkFSZP8=;
 b=ENhma2y03GJUM5mJ2u/MnUMFpxu4jS2IF7iCAaXGR/gr4SW3xgwgjftOLzMtgWhzfm3r
 CNo4y1PNf1zbVqaEbEqvNDf+nl8ewFdlDajEPKOvF6GGYZfWCNLH9aLgQgny+EJbfOGb
 LikfSBkP0Gfw5Ed3qrQAQTOoMkDimtdoUvAh7+yna9JxMG1zfCECcvOv+VhHAIYdgDS6
 Pl0ULFgBMY2G3X0PYqHGlLvZM68HRRnkLmOMfW4IfPLEXoUUndAE1rJhdUy4dIScsY8i
 s7MIMZrkaS09U8YpWUWyoPqdFpfnRXqrQFpRrHxuXKORHceKfwz0V6exTZIgvLP9jSbc KQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2utb5yr0af-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Sep 2019 10:04:34 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x849waTT063919;
 Wed, 4 Sep 2019 09:59:18 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2usu52sqey-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Sep 2019 09:59:18 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x849xEH2031350;
 Wed, 4 Sep 2019 09:59:14 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 04 Sep 2019 02:59:14 -0700
Date: Wed, 4 Sep 2019 12:59:08 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH] staging: exfat: Fix two missing unlocks on error paths
Message-ID: <20190904095908.GA7007@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9369
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909040099
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9369
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909040100
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These two error paths need to unlock before we can return.

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/exfat/exfat_super.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 5b5c2ca8c9aa..87e66e385e88 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -664,7 +670,7 @@ static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
 	dentry = p_fs->fs_func->find_dir_entry(sb, &dir, &uni_name, num_entries,
 					       &dos_name, TYPE_ALL);
 	if (dentry < -1) {
-		return FFS_NOTFOUND;
+		ret = FFS_NOTFOUND;
 		goto out;
 	}
 
@@ -1199,8 +1205,10 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 		} else {
 			while (num_clusters > 0) {
 				last_clu = clu.dir;
-				if (FAT_read(sb, clu.dir, &clu.dir) == -1)
-					return FFS_MEDIAERR;
+				if (FAT_read(sb, clu.dir, &clu.dir) == -1) {
+					ret = FFS_MEDIAERR;
+					goto out;
+				}
 				num_clusters--;
 			}
 		}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
