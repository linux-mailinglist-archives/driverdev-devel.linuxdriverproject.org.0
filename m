Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18232CF1BF
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 06:35:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 163DF875A9;
	Tue,  8 Oct 2019 04:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uAltu34YqLYm; Tue,  8 Oct 2019 04:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06FC08746D;
	Tue,  8 Oct 2019 04:35:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C631A1BF2F1
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 04:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B1338220D6
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 04:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W24fFjDjmzPt for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 04:35:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 69F1422091
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 04:35:30 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x984YPsE145263;
 Tue, 8 Oct 2019 04:35:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=/BsfMqJgwr2ucUtybd+rGF+QtYkR/eZqDdf49UB7dTI=;
 b=BFLl5h2KzzkkijS8kQS8hLDyVuRiAVUWGRXx5pnzX8QuvMq9yAKJpV342S5MT62Js+jU
 8rpCfipuKOYgzUdek9JpJVAi45y79zyme+QBnEmRUYMjy9LAVh2XbV+qcrETMamGL+ne
 uq4Sp0Fzm1nz881U1D8tUmO4zGnRX58Dccj7H7433bdRTERMQc47lL6moeBCph0XpaDG
 ixgKtFNVerHocPxNNph9DhizzSOgGAqcWKy8RNOkhj2+oIReZVls4RR62zaqJBQnewvZ
 rZlDpo+K7Yt/xqbwP88MaOqqwXGYw2fTiKsYBQ/8WHiliHQOYIgfc3I4RKZDOrCWvlOj fg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2vek4qasgq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 04:35:28 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x984XSXn079780;
 Tue, 8 Oct 2019 04:35:27 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vg205dagx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 04:35:27 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x984ZO9n030435;
 Tue, 8 Oct 2019 04:35:25 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Oct 2019 21:35:24 -0700
Date: Tue, 8 Oct 2019 07:35:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@01.org,
 =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: [staging:staging-next 50/93] drivers/staging/wfx/debug.c:112
 wfx_send_hif_msg_read() warn: maybe return -EFAULT instead of the bytes
 remaining?
Message-ID: <20191008043518.GL21515@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910080046
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910080046
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
 kbuild-all@01.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git =
staging-next
head:   e772cd8c9c9cd3d08715800aabaf50b771b395d9
commit: 4f8b7fabb15df3658564a98971fc67029be1815d [50/93] staging: wfx: allo=
w to send commands to chip

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/staging/wfx/debug.c:112 wfx_send_hif_msg_read() warn: maybe return =
-EFAULT instead of the bytes remaining?

# https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit=
/?id=3D4f8b7fabb15df3658564a98971fc67029be1815d
git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/greg=
kh/staging.git
git remote update staging
git checkout 4f8b7fabb15df3658564a98971fc67029be1815d
vim +112 drivers/staging/wfx/debug.c

4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19   95  static ssize_t wfx_send=
_hif_msg_read(struct file *file, char __user *user_buf,
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19   96  				     size_t count, =
loff_t *ppos)
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19   97  {
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19   98  	struct dbgfs_hif_msg *=
context =3D file->private_data;
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19   99  	int ret;
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  100  =

4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  101  	if (count > sizeof(con=
text->reply))
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  102  		return -EINVAL;
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  103  	ret =3D wait_for_compl=
etion_interruptible(&context->complete);
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  104  	if (ret)
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  105  		return ret;
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  106  	if (context->ret < 0)
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  107  		return context->ret;
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  108  	// Be carefull, write(=
) is waiting for a full message while read()
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  109  	// only return a paylo=
ad
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  110  	ret =3D copy_to_user(u=
ser_buf, context->reply, count);
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  111  	if (ret)
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19 @112  		return ret;

Yeah.  It should be:

	if (copy_to_user(user_buf, context->reply, count))
		return -EFAULT;

4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  113  =

4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  114  	return count;
4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  115  }

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
