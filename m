Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B823211C7
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 09:11:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4E966F54A;
	Mon, 22 Feb 2021 08:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RKL9rQA9IA5e; Mon, 22 Feb 2021 08:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19B916F521;
	Mon, 22 Feb 2021 08:11:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F5501BF2F2
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 08:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B0AA6F478
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 08:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jnzOIUfrNZFQ for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 08:10:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 43D0F6F521
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 08:10:52 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11M85J3S001385;
 Mon, 22 Feb 2021 08:10:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=hKIsfkzsmQ6Q5bmiyhpYpqtaOJ+y73IcLexP7MwTQSU=;
 b=m1r3O0xEBUM/gy8jVXR9MoDWJZU6HI4wfx4BwRm7gd2pWCEkrzt5I6IYaxzU2ufGU7UC
 WUEhPfPD9D4NApQNyk3UgzueVGvV4FuOEbD1B2ao0vEwcMcNrK6I04hblI9oZNqJwBll
 rezDpGIlzKrLcmZJQgTb6qMsasS//tq7G076pMFp95EJRbMMaN0GvYXE4M4bEVoqq9m0
 KRj+kxkqOGh4TaX/wL0Ggsp7BlfHew0N97xrywcE6YijrR46kteiD71Vd/aA9o5l5lfz
 KCsj76CV91Mm+XI1QQsba1XXbtFfa0big+BXNpiUjhEH/3hDSMM6ZfQeMhevY5GQFC2D mg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 36tsuqtpy6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Feb 2021 08:10:51 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11M8A1Tr136788;
 Mon, 22 Feb 2021 08:10:49 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 36uc6q1445-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Feb 2021 08:10:49 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11M8AkWq023277;
 Mon, 22 Feb 2021 08:10:47 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 22 Feb 2021 00:10:45 -0800
Date: Mon, 22 Feb 2021 11:10:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: karthek <mail@karthek.com>
Subject: Re: [PATCH] staging: wimax: fix sparse incorrect type issue
Message-ID: <20210222081038.GS2222@kadam>
References: <YDDzqPT81QBGpTBB@karthik-strix-linux.karthek.com>
 <20210222054029.GF2087@kadam>
 <CAJ5zXr0_QE6JLZ+rGeoaETexqvhS7LXdtAH3fqpZ=i1zxQJUYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ5zXr0_QE6JLZ+rGeoaETexqvhS7LXdtAH3fqpZ=i1zxQJUYg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9902
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 spamscore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102220072
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9902
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 phishscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102220071
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
 linux-kernel@vger.kernel.org, Mukul Mehar <mukulmehar02@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 22, 2021 at 11:31:48AM +0530, karthek wrote:
> On Mon, Feb 22, 2021 at 11:10 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Sat, Feb 20, 2021 at 05:04:00PM +0530, karthik alapati wrote:
> > > fix sparse warning by casting to explicit user address-space
> > > pointer type
> > >
> > > Signed-off-by: karthik alapati <mail@karthek.com>
> > > ---
> > >  drivers/staging/wlan-ng/p80211netdev.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> > > index 6f9666dc0..70570e8a5 100644
> > > --- a/drivers/staging/wlan-ng/p80211netdev.c
> > > +++ b/drivers/staging/wlan-ng/p80211netdev.c
> > > @@ -569,7 +569,7 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
> > >               goto bail;
> > >       }
> > >
> > > -     msgbuf = memdup_user(req->data, req->len);
> > > +     msgbuf = memdup_user((void __user *)req->data, req->len);
> >
> > This doesn't fix anything it just silences the warning.  Linus Torvalds
> > worked very hard to create Sparse for the express purpose of printing
> > the warning.  People don't realize that warnings are very valuable
> > because they show where the bugs are.
> >
> > Please look at this some more and figure out how to fix the warning.
> >
> > To be honest, I'm tempted to not accept any patch which doesn't also fix
> > the buffer overflows when we pass:
> >
> >         result = p80211req_dorequest(wlandev, msgbuf);
> >
> > How do we know that "msgbuf" is large enough?
> >
> > regards,
> > dan carpenter
> >
> 
> Thanks dan but right after sending this patch i immediately replied to
> it stating
> to ignore this patch as i found this already applied in staging-testing branch
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=3a8a144d2a754df45127c74e273fa166f690ba43 


It's still possible to fix this in the correct way and fix the buffer
overflows.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
