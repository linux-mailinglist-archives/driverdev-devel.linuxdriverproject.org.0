Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0FE24FCE1
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 13:43:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 477878798E;
	Mon, 24 Aug 2020 11:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JP8lh29Zmclg; Mon, 24 Aug 2020 11:43:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DFB6486DCE;
	Mon, 24 Aug 2020 11:43:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EC301BF32A
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 11:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 39A6B84DD5
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 11:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yC8-fSYz9wru for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 11:43:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB0D384CF4
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 11:43:47 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07OBhj8d022877;
 Mon, 24 Aug 2020 11:43:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=ENhKfqoc7RZ3alnPL8Dsu7Y/MFA2nBwzyI61xAxBZi4=;
 b=QhwJdMUF6JyInRnY45/J0LoShMw9LuxGql3s61iV0Ny1+ktHzIfRIuwcIDjOFyiTxHc9
 w+/0MV0Y/Kpu9TCQ0YVlWYEeI0l8HdljfRxJJUpqI8cCGaesLFrhySiXA2feHc1Sc4tp
 hv2eOoF5x6KzAWhjATXYJF9igy7SAD+XCJgLdmqCF2oFtr0zfuKnj84XKbMcFWldxvG/
 fgV7yldus/Hv247dY7pKTOPmkLjB3lhsPYydNhQwNZ4hPQTVCUt3Ldng6rkgFsJl4/xM
 Vy9v14cZx36ClscwKgVZmd1i43uucWAwgUtTq5//XOMLGSV8pIjMwLjFEVc9xULz/hTO Kw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 333dbrm1sq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Aug 2020 11:43:45 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07OBfE5Q152972;
 Mon, 24 Aug 2020 11:43:44 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 333r9h3a14-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Aug 2020 11:43:44 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 07OBhgEU009699;
 Mon, 24 Aug 2020 11:43:42 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Aug 2020 04:43:41 -0700
Date: Mon, 24 Aug 2020 14:43:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v4 2/2] staging: android: Remove BUG from ion_system_heap.c
Message-ID: <20200824114332.GN5493@kadam>
References: <cover.1598023523.git.tomersamara98@gmail.com>
 <a39407f84031eaeed5e65a7aab515a079edf5fcc.1598023524.git.tomersamara98@gmail.com>
 <3eba90dc-128f-49da-41a6-81494653d535@infradead.org>
 <20200824112457.GI1793@kadam> <20200824112708.GM5493@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200824112708.GM5493@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9722
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0
 suspectscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008240093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9722
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 clxscore=1015
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008240093
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomer Samara <tomersamara98@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Joel Fernandes <joel@joelfernandes.org>,
 Riley Andrews <riandrews@android.com>, Martijn Coenen <maco@android.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Laura Abbott <labbott@redhat.com>,
 Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 24, 2020 at 02:27:08PM +0300, Dan Carpenter wrote:
> On Mon, Aug 24, 2020 at 02:24:57PM +0300, Dan Carpenter wrote:
> > On Fri, Aug 21, 2020 at 09:25:26AM -0700, Randy Dunlap wrote:
> > > On 8/21/20 8:28 AM, Tomer Samara wrote:
> > > > Remove BUG() from ion_sytem_heap.c
> > > > 
> > > > this fix the following checkpatch issue:
> > > > Avoid crashing the kernel - try using WARN_ON &
> > > > recovery code ratherthan BUG() or BUG_ON().
> > > > 
> > > > Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
> > > > ---
> > > >  drivers/staging/android/ion/ion_system_heap.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
> > > > index eac0632ab4e8..00d6154aec34 100644
> > > > --- a/drivers/staging/android/ion/ion_system_heap.c
> > > > +++ b/drivers/staging/android/ion/ion_system_heap.c
> > > > @@ -30,7 +30,7 @@ static int order_to_index(unsigned int order)
> > > >  	for (i = 0; i < NUM_ORDERS; i++)
> > > >  		if (order == orders[i])
> > > >  			return i;
> > > > -	BUG();
> > > > +	/* This is impossible. */
> > > >  	return -1;
> > > >  }
> > > 
> > > Hi,
> > > Please explain why this is impossible.
> > > 
> > > If some caller calls order_to_index(5), it will return -1, yes?
> > > 
> > 
> > I was happy enough with the comment as-is given that I suggested it.
> > But an alternative comment could be "/* This is impossible.
> > We always pass valid values to this function. */
> 
> Another option is to just change the BUG_ON() to a WARN_ON().  I feel
> like that communicates the same thing but makes checkpatch happy.

Actually earlier Greg pointed out that some systems have panic on warn
so WARN_ON() doesn't work.  Just add the comment.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
