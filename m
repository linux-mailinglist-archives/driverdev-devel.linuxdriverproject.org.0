Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A233D2CB530
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 07:44:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA7CE86D95;
	Wed,  2 Dec 2020 06:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k9lbn_tolYjS; Wed,  2 Dec 2020 06:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33023858D3;
	Wed,  2 Dec 2020 06:44:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3A461BF282
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 06:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AA78487821
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 06:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gKa2Hr2fx5sw for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 06:44:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1CEEC87817
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 06:44:08 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B26PTEm141766;
 Wed, 2 Dec 2020 06:44:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=Ud5mJWaTikiaizD1PdzSqH7vTBAmR8zuz14js794kn4=;
 b=pybjdSviHikOQx7WrIoHpxOqqiIRL51aZcmKG6EGdYFAopmgAuhcL04X6B6S9s0yOV5G
 85kAFMbq2y2A25wtfHBkmhcl0+x62F16I2rBEAEVPi1AX4aAI6o0adAMvFJlwzpmr0Pt
 6dRyE+wS+ZBAzkXyvbfW49gmJRRnhRTpr+zrOIaNYbZrU3eqjc5stlHBP22CBBH0mrD6
 nkvAFsTUA/cG43fBu6ydeiFzJGwVGGjMKtafmeBuZJ3GL3c9CW47r/gTRQLcVrl2ZJmr
 8thsRhRvQpZZ3LtwYndeCbcfql5sbDZIPlNo7PxDSnPGnO+WoTaCodYhSd/QN0Cl/zz3 eA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 353dyqph5p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 02 Dec 2020 06:44:05 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B26PMBX091369;
 Wed, 2 Dec 2020 06:44:05 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 3540fy52n4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Dec 2020 06:44:05 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B26hwDQ012760;
 Wed, 2 Dec 2020 06:43:58 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 02 Dec 2020 06:43:57 +0000
Date: Wed, 2 Dec 2020 09:43:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ian Abbott <abbotti@mev.co.uk>, Al Viro <viro@zeniv.linux.org.uk>
Subject: [PATCH] Staging: comedi: Return -EFAULT if copy_to_user() fails
Message-ID: <X8c3pfwFy2jpy4BP@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9822
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 mlxscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012020039
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9822
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0
 clxscore=1011 mlxscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012020039
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
Cc: devel@driverdev.osuosl.org, Xin Tan <tanxin.ctf@gmail.com>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 B K Karthik <bkkarthik@pesu.pes.edu>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Return -EFAULT on error instead of the number of bytes remaining to be
copied.

Fixes: bac42fb21259 ("comedi: get rid of compat_alloc_user_space() mess in COMEDI_CMD{,TEST} compat")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
Hi Al, this goes through your tree.

 drivers/staging/comedi/comedi_fops.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index d99231c737fb..80d74cce2a01 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2987,7 +2987,9 @@ static int put_compat_cmd(struct comedi32_cmd_struct __user *cmd32,
 	v32.chanlist_len = cmd->chanlist_len;
 	v32.data = ptr_to_compat(cmd->data);
 	v32.data_len = cmd->data_len;
-	return copy_to_user(cmd32, &v32, sizeof(v32));
+	if (copy_to_user(cmd32, &v32, sizeof(v32)))
+		return -EFAULT;
+	return 0;
 }
 
 /* Handle 32-bit COMEDI_CMD ioctl. */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
