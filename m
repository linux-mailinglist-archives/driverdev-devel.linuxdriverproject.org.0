Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D035321998
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 15:00:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA1416F582;
	Mon, 22 Feb 2021 14:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3o_ITqKMT0U3; Mon, 22 Feb 2021 14:00:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 248FC6F55A;
	Mon, 22 Feb 2021 14:00:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD4651BF23B
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 13:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ABE8283906
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 13:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZV79IAAghNTJ for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 13:59:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9EC54838FB
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 13:59:50 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11MDxU0Z136147;
 Mon, 22 Feb 2021 13:59:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=aX+P9kh7w4UrrUdvSNZ8xoZ4dyXpe9ZJLipE1LjBy2U=;
 b=WX8e80nw0rkxB2HuST1OsIRcKWf/tYjD2GujmQfoVYnUgWfFElANLNgYTn6DI2fnEM01
 QLOEoXkRRMeQRO1EUwI/aq2QKey8eNV90NGD+REJE/aLQha8glJGTIYbBMDPKYj+AxWh
 BNjEzLCloeJBoKonqqBAbYlyEBKrMOG7EfiaBIp3K3cWukw0iwXT5466MB59lL1Ce6qS
 CXslRkaDgvhc8Q7XAEZp20KT4BQLdonZohd4WT6/abl2yxAflfnck1yZZZNVS0kVfWkt
 C1r7iW0iQyUwSVztdKVGT0Ec83Utkllj67yB5iQ3FVzb2Ni3uvj8QdtCbdBmrkMznsDW BQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 36tsuqupye-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Feb 2021 13:59:49 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11MDuPqY033485;
 Mon, 22 Feb 2021 13:59:48 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 36ucbw4b99-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Feb 2021 13:59:48 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11MDxk1P000702;
 Mon, 22 Feb 2021 13:59:46 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 22 Feb 2021 05:59:46 -0800
Date: Mon, 22 Feb 2021 16:59:37 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: karthek <mail@karthek.com>
Subject: Re: [PATCH] staging: wlan-ng/p80211 : check userspacebuf size for
 sanity
Message-ID: <20210222135937.GV2222@kadam>
References: <YDOnoLJzHYXMZBA/@karthik-strix-linux.karthek.com>
 <20210222132132.GU2222@kadam>
 <YDO0vtJyyGSSi44n@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YDO0vtJyyGSSi44n@karthik-strix-linux.karthek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9902
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102220129
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9902
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 phishscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102220129
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I have added the Driver Devel list to the CC list.  Adding linux-kernel
is sort of useless.  The correct people who are interested in this patch
are all on the Driver Devel list.

On Mon, Feb 22, 2021 at 07:12:22PM +0530, karthek wrote:
> On Mon, Feb 22, 2021 at 04:21:33PM +0300, Dan Carpenter wrote:
> > On Mon, Feb 22, 2021 at 06:16:24PM +0530, karthek wrote:
> > > currently p80211knetdev_do_ioctl() is testing user passed
> > > struct ifreq for sanity by checking for presence of a magic number,
> > > in addition to that also check size field, preventing buffer overflow
> > > before passing data to p80211req_dorequest() which casts it
> > > to *struct p80211msg
> > > 
> > > Signed-off-by: karthek <mail@karthek.com>
> > > ---
> > > is this correct?
> > > is it necessary to check for size in addition to magicnum?
> > > did i even understand the problem correctly?
> > > 
> > >  drivers/staging/wlan-ng/p80211netdev.c | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> > > index 70570e8a5..c7b78d870 100644
> > > --- a/drivers/staging/wlan-ng/p80211netdev.c
> > > +++ b/drivers/staging/wlan-ng/p80211netdev.c
> > > @@ -568,7 +568,10 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
> > >  		result = -EINVAL;
> > >  		goto bail;
> > >  	}
> > > -
> > > +	if (req->len < sizeof(struct p80211msg)) {
> > > +		result = -EINVAL;
> > > +		goto bail;
> > > +	}
> > 
> > Please don't send private emails.  Always CC the list.
> sorry
> > 
> > That's only a partial solution.  You need to check in p80211req_handlemsg()
> > as well and probably other places.
> currently p80211req_handlemsg() is only referenced in p80211req_dorequest()
> can we check that there instead?

If I have to do all the work in finding the buffer overflows, then I
should write my own patch.  :/

Anyway the p80211knetdev_do_ioctl() function calls p80211req_dorequest()
which calls p80211req_handlemsg(wlandev, msg); and
wlandev->mlmerequest(wlandev, msg);.

We have already discussed the p80211req_handlemsg() function.  The
wlandev->mlmerequest() function is always just prism2sta_mlmerequest().
The prism2sta_mlmerequest() calls a bunch of functions and each of those
functions need to have a different limit check added to prevent memory
corruption.

Homework #1: Should we get rid of the wlandev->mlmerequest() pointer
and just call prism2sta_mlmerequest() directly?

Homework #2: Another solution is to just delete all these custom IOCTLs.
I don't know what they do so I don't know if they are necessary or not.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
