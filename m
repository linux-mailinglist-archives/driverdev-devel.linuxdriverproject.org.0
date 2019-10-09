Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F200AD17EA
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 20:58:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A40B4234AC;
	Wed,  9 Oct 2019 18:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SBUgUUcJYl3U; Wed,  9 Oct 2019 18:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E662204EA;
	Wed,  9 Oct 2019 18:58:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A16C31BF3FD
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 18:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9C524204EA
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 18:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z2Uq3W2QU1Tg for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 18:58:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 924DD204DA
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 18:58:17 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99ImqCW142489;
 Wed, 9 Oct 2019 18:58:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=P+/ghBe4HEy3gT/gHu/XLIQ7wMnVX6Y2sBI1mZRANTs=;
 b=PoYxF+L2FSYq/4fntDJ+pUMOqr7X/igLOyqhcv9gmAcueiiFUBKR4R4CCC5qLlUh3LwZ
 QhSA9pGNREiLsxD4iJmG9JyE1UlsmJTvn1NSGEw+FOhUH8DXSPy8qlcMiR9lHWtZ9/Ii
 7sLLObGyby5kLWkWM64pW7tV9UcPnxqQk3IW036zJJpWnKQH5S3N29f4/1fuBHt+/7i5
 +RbgIhe9uh7R4UKx+iNESuiTxJCsuDO6x/Umx5iOAkwia82+Px2SZKoUK5tl2XZ6wLyh
 gWoGw2wjCrAiSDyAu7qJLzWqoJ5ylpb57kPd5p/JfvXtjb2hAauszv9Tqc+niAFVSdMT 1Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2vejkuppur-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 18:58:16 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99InBPk069950;
 Wed, 9 Oct 2019 18:58:15 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2vh8k1atss-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 18:58:15 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x99IwEMv023925;
 Wed, 9 Oct 2019 18:58:14 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 11:58:13 -0700
Date: Wed, 9 Oct 2019 21:58:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 0/7] Fix various compilation issues with wfx driver
Message-ID: <20191009185807.GB20470@kadam>
References: <20191008094232.10014-1-Jerome.Pouiller@silabs.com>
 <20191008151046.GA2862250@kroah.com> <6487016.ESlEkJNu7c@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6487016.ESlEkJNu7c@pc-42>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090153
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090153
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 09, 2019 at 03:13:14PM +0000, Jerome Pouiller wrote:
> On Tuesday 8 October 2019 17:10:56 CEST Greg Kroah-Hartman wrote:
> > On Tue, Oct 08, 2019 at 09:42:47AM +0000, Jerome Pouiller wrote:
> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >
> > > Most of problems are related to big-endian architectures.
> > =

> > kbuild still reports 2 errors with these patches applied:
> > =

> > Regressions in current branch:
> > =

> > drivers/staging/wfx/hif_tx.c:82:2-8: preceding lock on line 65
> =

> As I replied to Julia, this behavior is intended.
> =

> > drivers/staging/wfx/main.c:188:14-21: ERROR: PTR_ERR applied after init=
ialization to constant on line 183
> =

> This is a false positive, as confirmed by Dan.
> =

> You may also notice:
> =

>   drivers/staging/wfx/scan.c:207 wfx_scan_work() warn: inconsistent retur=
ns 'sem:&wvif->scan.lock'
> =

> I also consider it as a false positive.

Yeah.  I thought it might be.  The beauty of 0day bot is that normally
the warnings come really quick after the original author wrote the code
so it's fresh in their heads.  I suspected it might be a false positive
but I wasn't sure either way and I try not to spend a lot of time
reviewing those warnings.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
