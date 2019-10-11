Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B89AD3FFD
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 14:55:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6420386EFF;
	Fri, 11 Oct 2019 12:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rcC0es4OwnhS; Fri, 11 Oct 2019 12:55:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E106286D03;
	Fri, 11 Oct 2019 12:55:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D6681BF292
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0A15A88055
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pXxmYisWH8kF for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 12:54:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB1568803B
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 12:54:58 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BCs5XP158079;
 Fri, 11 Oct 2019 12:54:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=NqqBMltJqshjqlO0unczWYT072xc5lc4mD81BsYMdno=;
 b=NuihAVEg1zU+Dt9xpZnWOcsZG34qHhhDVxSW033srZIyTlRDDkBmwZvDU/jlxKE+xGUs
 FPPgWNkZnTGQBL/AAHtFxIkiRVaW8zg3WkmSMkrkGAt6JA1S3RyY90J2O/Ny5/W/olwy
 xXA3duN4yyDeYTeOUbsxo6uaiBFhSF1DhKqKaSeX5CzM9WAzvC4qHivuk4etTW4sq15a
 cWZwRgYcQTamSPVFBcNjG6mcUzdEU0RGvvF8wkF3IlFnxviOTAF75H2UKuC9CFUbcLZg
 9ISGJxgYbKZXxoAqjriCZnbq98xyGa2zsjSwUW/GsoR2N+OfetUEJntrxI/pFRCZJKvT 5A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2vejkv1j1v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 12:54:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BCs4vu121731;
 Fri, 11 Oct 2019 12:54:56 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vj9qutbgb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 12:54:55 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9BCssYi003401;
 Fri, 11 Oct 2019 12:54:54 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 11 Oct 2019 05:54:54 -0700
Date: Fri, 11 Oct 2019 15:54:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH] staging: wfx: fix potential vulnerability to spectre
Message-ID: <20191011125446.GD4774@kadam>
References: <20191011101551.30946-1-Jerome.Pouiller@silabs.com>
 <20191011121027.GA1144221@kroah.com> <2165496.I6CF8xJYvu@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2165496.I6CF8xJYvu@pc-42>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910110122
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
 "lkp@lists.01.org" <lkp@lists.01.org>, kbuild@01.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 12:35:36PM +0000, Jerome Pouiller wrote:
> On Friday 11 October 2019 14:10:35 CEST Greg Kroah-Hartman wrote:
> > On Fri, Oct 11, 2019 at 10:15:54AM +0000, Jerome Pouiller wrote:
> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >
> > > array_index_nospec() should be applied after a bound check.
> > >
> > > Fixes: 9bca45f3d6924f19f29c0d019e961af3f41bdc9e ("staging: wfx: allow=
 to send 802.11 frames")
> > =

> > No need for the full sha1, this should be:
> >         Fixes: 9bca45f3d692 ("staging: wfx: allow to send 802.11 frames=
")
> =

> I copy-pasted information from kbuild robot notification.
> =

> I suggest that commit-id in robot notification is also cut down to 12
> characters. Or even better, to use this snippet:
> =

> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> Fixes: 9bca45f3d692 ("staging: wfx: allow to send 802.11 frames")
> =

> (I added lkp@lists.01.org in CC but, I am not sure it is the correct
> ML. I am sorry if it is not the case)

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git =
staging-testing
head:   d49d1c76b96ebf39539e93d5ab7943a01ef70e4f
commit: 9bca45f3d6924f19f29c0d019e961af3f41bdc9e [55/111] staging: wfx: all=
ow to send 802.11 frames

If you cut and paste then you the "[55/111] " text isn't right either.
Also kbuild works on rebase-able trees as well as non-rebase/published
trees so the hash could change as well.

I am a little bit surprised that checkpatch.pl doesn't complain about
this, though.  You could consider adding that?

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
