Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E628AEACF
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 14:45:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 222CD85DE1;
	Tue, 10 Sep 2019 12:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OCDvHk5USILP; Tue, 10 Sep 2019 12:45:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83DA9858DD;
	Tue, 10 Sep 2019 12:45:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 595051BF2BE
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 12:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 55FF28798F
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 12:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F+OOpi5cDQF6 for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 12:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D5C97878F1
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 12:45:01 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8AChvVk087799;
 Tue, 10 Sep 2019 12:44:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=kPBxmrG7XhnSVDi7TSZHk3MEipMVpG8IYBW8hct14Lg=;
 b=bbRtTRVsZ07ULd4fnpUUrlkZCYxFSs1e5iGN4kXQIa6U/AhdL9pIwQgGUrzHnpZuyXXz
 /tMCqthdo0EJIx6IkBNXWz99Onn/IW6+jU4iLJjaPfgpBeePfHatuw8tHgE0wQVtk/6B
 Vu86cG0bLBidCVz5RFngm7uuYN3FmuRyIpRC1OpzldeRADVSlkQDQDICLga6S/xQD0yc
 qmp2mZAeLIuD9CXwJeHUWKd/SwAZ14IYsasPVa6Wdb5D4ytXeSAtBSEs+SlCd37zUpTK
 s7a4ExIGxeyEi8mZhDsiYKCmsPuju5NZXlPVQZVdiv7jMbBL8Zns5S/sHsnlLwrdIPt+ +Q== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2uw1m8u4hv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 12:44:59 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8ACiAPj191077;
 Tue, 10 Sep 2019 12:44:58 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2uwqktpaew-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 12:44:57 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8ACio9l009207;
 Tue, 10 Sep 2019 12:44:50 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Sep 2019 05:44:49 -0700
Date: Tue, 10 Sep 2019 15:44:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Colin Ian King <colin.king@canonical.com>
Subject: Re: staging: exfat: issue with FFS_MEDIAERR error return assignment
Message-ID: <20190910124443.GD15977@kadam>
References: <c569b04c-2959-c8eb-0d38-628e8c5ff7ac@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c569b04c-2959-c8eb-0d38-628e8c5ff7ac@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909100123
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909100124
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

On Fri, Aug 30, 2019 at 07:38:00PM +0100, Colin Ian King wrote:
> Hi,
> 
> Static analysis on exfat with Coverity has picked up an assignment of
> FFS_MEDIAERR that gets over-written:
> 
> 
> 1750        if (is_dir) {
> 1751                if ((fid->dir.dir == p_fs->root_dir) &&
> 1752                    (fid->entry == -1)) {
> 1753                        if (p_fs->dev_ejected)

Idealy we would have both a filename and a function name but this email
doesn't have either so no one knows what code you are talking about.  :P

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
