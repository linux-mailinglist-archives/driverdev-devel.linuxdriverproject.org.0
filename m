Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 941223238E3
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 09:46:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABCC883CA8;
	Wed, 24 Feb 2021 08:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tz3aTLZhbEFM; Wed, 24 Feb 2021 08:46:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E26FD83AEC;
	Wed, 24 Feb 2021 08:46:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A96991BF47A
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 08:46:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 987D34308B
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 08:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXVm4I8uZROo for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 08:46:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06EF9414ED
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 08:46:14 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11O8eqNb166954;
 Wed, 24 Feb 2021 08:46:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=ZtzMk5uBWu0YY0uHNXu5wD8ZlNbT4CAotv2RuoZhd+M=;
 b=fzgzIB34XzmKozJbR0nU/wH+HRmcxPGjdgmDJ6WDawQYFl4ql6Tp7kFBvnZcWWbXQ156
 ap54uAc8OLGeB1jPRqzDeS2J0RY3oI4tpIzXcO1FdB8GVT4zvatFqMOJCjfUEK9Hx46i
 mAiv6lr63B/izeJZr1bSit5KnJbfXcWWfzR85vyu/Xy4YxnTR/3cRiQpZRT4mV3Q5RXB
 D4WCMOysdcYVRycone/PYsDXmVjHRlSeK3xFPVJUwyYmfV0yG1SWgLOBczI7D80J9Pjv
 rhklh1WMYp2KOv7NrOehQJi0Frb5F7BMLt8++bK+4TvT6UrL04IuFItZGqHB2JqewOj0 VA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 36ugq3gyx7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Feb 2021 08:46:14 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11O8k9l2196145;
 Wed, 24 Feb 2021 08:46:12 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 36uc6suppw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Feb 2021 08:46:12 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11O8k8q3007112;
 Wed, 24 Feb 2021 08:46:10 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 24 Feb 2021 00:46:08 -0800
Date: Wed, 24 Feb 2021 11:45:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: rtl8712: unterminated string leads to read overflow
Message-ID: <YDYSR+1rj26NRhvb@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9904
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 spamscore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102240068
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9904
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0
 malwarescore=0 spamscore=0 mlxscore=0 suspectscore=0 priorityscore=1501
 clxscore=1011 impostorscore=0 lowpriorityscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102240067
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 kernel-janitors@vger.kernel.org, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ali Bahar <ali@internetdog.org>, Kumar Kartikeya Dwivedi <memxor@gmail.com>,
 Pascal Terjan <pterjan@google.com>,
 Ankit Baluni <b18007@students.iitmandi.ac.in>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The memdup_user() function does not necessarily return a NUL terminated
string so this can lead to a read overflow.  Switch from memdup_user()
to strndup_user() to fix this bug.

Fixes: c6dc001f2add ("staging: r8712u: Merging Realtek's latest (v2.6.6). Various fixes.")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 81de5a9e6b67..60dd798a6e51 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -924,7 +924,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
 	struct iw_point *dwrq = (struct iw_point *)awrq;
 
 	len = dwrq->length;
-	ext = memdup_user(dwrq->pointer, len);
+	ext = strndup_user(dwrq->pointer, len);
 	if (IS_ERR(ext))
 		return PTR_ERR(ext);
 
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
