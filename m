Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D37D8AEB25
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 15:09:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C012585DD1;
	Tue, 10 Sep 2019 13:09:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b6j0M-G6FlPK; Tue, 10 Sep 2019 13:09:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D52A85DF7;
	Tue, 10 Sep 2019 13:09:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 363701BF5F8
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 13:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 329CF2153E
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 13:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2C4E-jZKaYJb for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 13:09:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 053AB21543
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 13:09:45 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8AD53Gk090352;
 Tue, 10 Sep 2019 13:09:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=X4keng+SV8htc9lC32w1O4BuTKJIF/NsoIR24KWO7zQ=;
 b=VLTTQqwLTVsY9lb7KTSQHBL9WkSftyI9Lr1Rwvf+i2LtXfDoIfiAhzCM/2w9eiNaGBiz
 vM5Xmq4mxN7zigSBscwLNUAUhvA6dr6h4ZgvNXXqGtiTvnqI6NzUfYV8Vsee7lOi5wma
 RCxeP9J2rmPdME0yqL5yCEGZ5hFZ4K57kFroYxs42TKf8ezo/gV59i2tESLGra46+YK5
 x9qjYEjgcxpyXW1GvEs69M7zrjII2hObnm5BmNijxYzRmjMmEwVgNToP8SW9wPCy+9nY
 FPc7XWaTgaf/XtIHwpBKcUdsmulOUBeq9dsZsCmzDWARxTUnxvN82YaU/J3HEKdW2FUf cw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2uw1jkb9p3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 13:09:43 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8AD8baY062125;
 Tue, 10 Sep 2019 13:09:42 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2uwqktq3dv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 13:09:42 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8AD9fAe031237;
 Tue, 10 Sep 2019 13:09:41 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Sep 2019 06:09:41 -0700
Date: Tue, 10 Sep 2019 16:09:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Colin Ian King <colin.king@canonical.com>
Subject: Re: staging: exfat: issue with FFS_MEDIAERR error return assignment
Message-ID: <20190910130934.GE15977@kadam>
References: <c569b04c-2959-c8eb-0d38-628e8c5ff7ac@canonical.com>
 <20190910124443.GD15977@kadam>
 <aefa4806-af3c-1757-59c2-72e7d1663d66@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aefa4806-af3c-1757-59c2-72e7d1663d66@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909100128
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909100128
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 10, 2019 at 01:58:35PM +0100, Colin Ian King wrote:
> On 10/09/2019 13:44, Dan Carpenter wrote:
> > On Fri, Aug 30, 2019 at 07:38:00PM +0100, Colin Ian King wrote:
> >> Hi,
> >>
> >> Static analysis on exfat with Coverity has picked up an assignment of
> >> FFS_MEDIAERR that gets over-written:
> >>
> >>
> >> 1750        if (is_dir) {
> >> 1751                if ((fid->dir.dir == p_fs->root_dir) &&
> >> 1752                    (fid->entry == -1)) {
> >> 1753                        if (p_fs->dev_ejected)
> > 
> > Idealy we would have both a filename and a function name but this email
> > doesn't have either so no one knows what code you are talking about.  :P
> 
> Oops, my bad.
> 
> drivers/staging/exfat/exfat_super.c ffsWriteStat()

Yes, your solution is correct.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
