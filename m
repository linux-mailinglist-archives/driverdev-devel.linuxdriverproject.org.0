Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB7E252AE8
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Aug 2020 11:58:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E52292288E;
	Wed, 26 Aug 2020 09:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ICs-gvdnXvu; Wed, 26 Aug 2020 09:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7043222882;
	Wed, 26 Aug 2020 09:58:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BB0C1BF324
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 09:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6613C87EC4
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 09:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4k06I6Lhe2Iu for <devel@linuxdriverproject.org>;
 Wed, 26 Aug 2020 09:58:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94E4987E9D
 for <devel@driverdev.osuosl.org>; Wed, 26 Aug 2020 09:58:19 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07Q9rmML110211;
 Wed, 26 Aug 2020 09:58:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=99lx5iUfIkT1H9yGqvvBxJOhPDkHKQlkIHLEmQ8PDXw=;
 b=pHUo6T87aN4HkyoolW4yELYhdaG6ZvSavIkxfBgUOj0Org1O9z1r+ZQOuET12WJ7H5Pc
 xnVCQfyl6qFGmQNX19oW+/bFETNvgM6pF7csHfuvBHB3cwqfsUd0O1/rGIc/5OQTnnFB
 MEojeNBzUtEmGEuqP0gM6P7/G+Nn01P+JHgzxPDBnzH/evLKYOeuFaI9EUmCauKOO4Dv
 zZppw57NrWnHoxtj9wH99M6dzm4GlspA3OSB7TYDhwfTGMPmrp1Qrwutr2AFfwHTZX4W
 mmUMO7IJxJ3uJAsWGpM1c6assMY729yLXVkHlFuUfSzlq1xzAsoVwPIWis3T8JNJMC4u Ng== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 333dbryf24-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Aug 2020 09:58:06 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07Q9odrR139540;
 Wed, 26 Aug 2020 09:56:05 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 333rtywr8n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Aug 2020 09:56:05 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 07Q9tlAJ026067;
 Wed, 26 Aug 2020 09:55:47 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Aug 2020 02:55:46 -0700
Date: Wed, 26 Aug 2020 12:55:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Allen Pais <allen.cryptic@gmail.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
Message-ID: <20200826095528.GX1793@kadam>
References: <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
 <1597873172.4030.2.camel@HansenPartnership.com>
 <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9724
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0
 phishscore=0 spamscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008260078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9724
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 clxscore=1011
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008260079
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 linux-atm-general@lists.sourceforge.net, s.hauer@pengutronix.de,
 manohar.vanga@gmail.com, airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Allen <allen.lkml@gmail.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux1394-devel@lists.sourceforge.net, anton.ivanov@cambridgegreys.com,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, linux-input@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 intel-gfx@lists.freedesktop.org, Kees Cook <keescook@chromium.org>,
 oakad@yahoo.com, linux-kernel@vger.kernel.org, jdike@addtoit.com,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com, stefanr@s5r6.in-berlin.de,
 Daniel Vetter <daniel@ffwll.ch>, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 26, 2020 at 07:21:35AM +0530, Allen Pais wrote:
> On Thu, Aug 20, 2020 at 3:09 AM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> >
> > On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > > > [...]
> > > > > > Since both threads seem to have petered out, let me suggest in
> > > > > > kernel.h:
> > > > > >
> > > > > > #define cast_out(ptr, container, member) \
> > > > > >     container_of(ptr, typeof(*container), member)
> > > > > >
> > > > > > It does what you want, the argument order is the same as
> > > > > > container_of with the only difference being you name the
> > > > > > containing structure instead of having to specify its type.
> > > > >
> > > > > Not to incessantly bike shed on the naming, but I don't like
> > > > > cast_out, it's not very descriptive. And it has connotations of
> > > > > getting rid of something, which isn't really true.
> > > >
> > > > Um, I thought it was exactly descriptive: you're casting to the
> > > > outer container.  I thought about following the C++ dynamic casting
> > > > style, so out_cast(), but that seemed a bit pejorative.  What about
> > > > outer_cast()?
> > > >
> > > > > FWIW, I like the from_ part of the original naming, as it has
> > > > > some clues as to what is being done here. Why not just
> > > > > from_container()? That should immediately tell people what it
> > > > > does without having to look up the implementation, even before
> > > > > this becomes a part of the accepted coding norm.
> > > >
> > > > I'm not opposed to container_from() but it seems a little less
> > > > descriptive than outer_cast() but I don't really care.  I always
> > > > have to look up container_of() when I'm using it so this would just
> > > > be another macro of that type ...
> > > >
> > >
> > >  So far we have a few which have been suggested as replacement
> > > for from_tasklet()
> > >
> > > - out_cast() or outer_cast()
> > > - from_member().
> > > - container_from() or from_container()
> > >
> > > from_container() sounds fine, would trimming it a bit work? like
> > > from_cont().
> >
> > I'm fine with container_from().  It's the same form as container_of()
> > and I think we need urgent agreement to not stall everything else so
> > the most innocuous name is likely to get the widest acceptance.
> 
> Kees,
> 
>   Will you be  sending the newly proposed API to Linus? I have V2
> which uses container_from()
> ready to be sent out.

I liked that James swapped the first two arguments so that it matches
container_of().  Plus it's nice that when you have:

	struct whatever *foo = container_from(ptr, foo, member);

Then it means that "ptr == &foo->member".

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
