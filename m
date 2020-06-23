Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50378204EE0
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 12:13:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0813C86C08;
	Tue, 23 Jun 2020 10:13:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1-bSWj1jOfS9; Tue, 23 Jun 2020 10:13:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7335186EC0;
	Tue, 23 Jun 2020 10:13:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA2541BF284
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 10:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A9068204AC
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 10:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rw6cREq7dTQL for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 10:13:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 64638203A4
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 10:13:52 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05NACiMw130688;
 Tue, 23 Jun 2020 10:13:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=d9NXvGnI7jfjN88haka+dzhwSaM03rsBzPrLxMg67vo=;
 b=urOaUG/8b35647aq3cv3VPoLcXIJurE04jXs92+KMevJ2zgMbdC5SZuZWbjyzD1Kczxh
 BeZIFQohc2rLVOzlZsIgsZmiyWVxTg07pjIGT25NL/BTHy0hjkSWNIPKwNCx11JbcHI1
 Zi8+tByNVIaqcaftIov+ZD23cF+KdRbtSxE2uRdWaHOudKqkiJ8zlbmZDQ1XglqHjcLe
 v/zYeV2T0rJsvJj4EZ6gu0OxOpldrPvv+ZNQHWyRVTBE0nOFHqqs66Fb0lBhS+HGIFCf
 9SYoK21jU7GdNOJK9Z7jMh9J1fBAI4LFD2wBqYPydnE82Wrzp/Qn326NOxTuj4s1C7Dh bw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 31sebbmcc3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jun 2020 10:13:49 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05NA48r3042169;
 Tue, 23 Jun 2020 10:13:49 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 31sv7rjtfg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 Jun 2020 10:13:49 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05NADlVr025573;
 Tue, 23 Jun 2020 10:13:47 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 23 Jun 2020 10:13:46 +0000
Date: Tue, 23 Jun 2020 13:13:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH] binder: fix null deref of proc->context
Message-ID: <20200623101339.GJ4151@kadam>
References: <20200622200715.114382-1-tkjos@google.com>
 <20200623085021.GG4151@kadam>
 <20200623090404.xwuhdec6c7p4lnd2@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623090404.xwuhdec6c7p4lnd2@wittgenstein>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9660
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=2 mlxlogscore=999
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006230079
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9660
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 lowpriorityscore=0
 mlxlogscore=999 cotscore=-2147483648 mlxscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=2 clxscore=1011
 impostorscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006230080
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 23, 2020 at 11:04:04AM +0200, Christian Brauner wrote:
> On Tue, Jun 23, 2020 at 11:50:21AM +0300, Dan Carpenter wrote:
> > On Mon, Jun 22, 2020 at 01:07:15PM -0700, Todd Kjos wrote:
> > > The binder driver makes the assumption proc->context pointer is invariant after
> > > initialization (as documented in the kerneldoc header for struct proc).
> > > However, in commit f0fe2c0f050d ("binder: prevent UAF for binderfs devices II")
> > > proc->context is set to NULL during binder_deferred_release().
> > > 
> > > Another proc was in the middle of setting up a transaction to the dying
> > > process and crashed on a NULL pointer deref on "context" which is a local
> > > set to &proc->context:
> > > 
> > >     new_ref->data.desc = (node == context->binder_context_mgr_node) ? 0 : 1;
> > > 
> > > Here's the stack:
> > > 
> > > [ 5237.855435] Call trace:
> > > [ 5237.855441] binder_get_ref_for_node_olocked+0x100/0x2ec
> > > [ 5237.855446] binder_inc_ref_for_node+0x140/0x280
> > > [ 5237.855451] binder_translate_binder+0x1d0/0x388
> > > [ 5237.855456] binder_transaction+0x2228/0x3730
> > > [ 5237.855461] binder_thread_write+0x640/0x25bc
> > > [ 5237.855466] binder_ioctl_write_read+0xb0/0x464
> > > [ 5237.855471] binder_ioctl+0x30c/0x96c
> > > [ 5237.855477] do_vfs_ioctl+0x3e0/0x700
> > > [ 5237.855482] __arm64_sys_ioctl+0x78/0xa4
> > > [ 5237.855488] el0_svc_common+0xb4/0x194
> > > [ 5237.855493] el0_svc_handler+0x74/0x98
> > > [ 5237.855497] el0_svc+0x8/0xc
> > > 
> > > The fix is to move the kfree of the binder_device to binder_free_proc()
> > > so the binder_device is freed when we know there are no references
> > > remaining on the binder_proc.
> > > 
> > > Fixes: f0fe2c0f050d ("binder: prevent UAF for binderfs devices II")
> > > Signed-off-by: Todd Kjos <tkjos@google.com>
> > > ---
> > >  drivers/android/binder.c | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > index e47c8a4c83db..f50c5f182bb5 100644
> > > --- a/drivers/android/binder.c
> > > +++ b/drivers/android/binder.c
> > > @@ -4686,8 +4686,15 @@ static struct binder_thread *binder_get_thread(struct binder_proc *proc)
> > >  
> > >  static void binder_free_proc(struct binder_proc *proc)
> > >  {
> > > +	struct binder_device *device;
> > > +
> > >  	BUG_ON(!list_empty(&proc->todo));
> > >  	BUG_ON(!list_empty(&proc->delivered_death));
> > > +	device = container_of(proc->context, struct binder_device, context);
> > > +	if (refcount_dec_and_test(&device->ref)) {
> > > +		kfree(proc->context->name);
> > > +		kfree(device);
> > > +	}
> > 
> > Where is device allocated?
> > 
> > It looks to me like they are allocated in init_binder_device().  So why
> > are calling misc_deregister?  And it looks like the kfree(proc->context->name);
> > is wrong as well because that's from the
> > "device_names = kstrdup(binder_devices_param, GFP_KERNEL);" in
> > binder_init().
> 
> This whole codepath is only hit for binderfs binder devices which are
> allocated in binderfs.c.

Ah.  I see that now.  Thanks!

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
