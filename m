Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DFA2A637F
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 12:40:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7881858A6;
	Wed,  4 Nov 2020 11:40:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jm0amLXIWgVq; Wed,  4 Nov 2020 11:40:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC2B4857E2;
	Wed,  4 Nov 2020 11:40:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF421BF5DD
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 11:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 08596857E2
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 11:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yHRM8yuhLU7T for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 11:40:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA310857D6
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 11:40:33 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A4BdhVI144676;
 Wed, 4 Nov 2020 11:40:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=rma02KPg1kKHnISzToa1qVrQU80lIknQ5aS0+dySMKA=;
 b=TWNQt4gM3JaDdDUBHnnI8fj7mB9KLjO0Dqdc4Gc9FdAZO6XAddNNmq0tZ6PQof0OQLa6
 Vy8cUdzaMjJ/YytnkcFaBwkJZQ0Z9amMx0ipfD9jWf1FgfYgSRIrv0Gw/rfydzJ1V2BD
 Db1n+3FapFp6g1GMEeSpQxwx2mUOYgfg3LVgdWlTI7+ncg9uaosCqMAOfDmYVLBSVydk
 MdRV/AjXmfWKRjFrS43tmOAJldgKMpT4EvSj5a8yTmhmVVzHaXjQKlz0H5Y/g3KaGS2v
 rDSnDYZX9j+kInn40q9A2CdTN7KCrz+of1qUemMkeHHWtQayEWydjmdsZzcaUrMfmFhl rw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 34hhvceae2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 04 Nov 2020 11:40:32 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A4BaV4r019096;
 Wed, 4 Nov 2020 11:40:32 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 34hw0jruqb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Nov 2020 11:40:32 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0A4BePp2017833;
 Wed, 4 Nov 2020 11:40:25 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 04 Nov 2020 03:40:25 -0800
Date: Wed, 4 Nov 2020 14:40:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [v2] media: atomisp: Fix error handling path
Message-ID: <20201104114015.GH18329@kadam>
References: <1604455331-28031-1-git-send-email-jrdr.linux@gmail.com>
 <65712450-1ee9-2dd3-cd43-f850807ae203@web.de>
 <20201104083121.GG18329@kadam>
 <85ff17ad-8aa7-a457-6e23-4f5c1c5152f2@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85ff17ad-8aa7-a457-6e23-4f5c1c5152f2@web.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9794
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0 bulkscore=0
 mlxscore=0 suspectscore=0 spamscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011040087
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9794
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 mlxlogscore=999
 bulkscore=0 phishscore=0 adultscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011040087
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
Cc: devel@driverdev.osuosl.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Vlastimil Babka <vbabka@suse.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 John Hubbard <jhubbard@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michel Lespinasse <walken@google.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 04, 2020 at 11:30:29AM +0100, Markus Elfring wrote:
> >>> Fixes: 14a638ab96c5 ("media: atomisp: use pin_user_pages() for memory
> >>> allocation")
> >>
> >> Please delete a line break for this tag.
> >
> > Markus, the thing is that we all saw the line break and we just thought
> > it didn't matter at all...
> 
> Do you disagree to the known documentation then?
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?id=4ef8451b332662d004df269d4cdeb7d9f31419b5#n123 

The documentation is correct but no one wants you to constantly be
nagging developers about minor stuff...

One thing that I do is I start to write an email and then if I realize
it's not worth complaining about and I save it to my postponed messages
folder.  Then I never send it and I forget about it completely.  I have
currently have 740 messages in my postponed messages folder.  :P

That's a lot of whining and complaining which I never sent and the world
is the more beautiful for it.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
