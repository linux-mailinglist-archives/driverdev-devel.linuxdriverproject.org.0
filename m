Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E00175C45
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 14:53:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A73783138;
	Mon,  2 Mar 2020 13:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5WafR-ZLYrUH; Mon,  2 Mar 2020 13:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 156D286061;
	Mon,  2 Mar 2020 13:53:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 654ED1BF29E
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6208D8453B
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E588SsBZQk3K for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 13:53:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C0551844E2
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 13:53:09 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 022Dbu4C031928;
 Mon, 2 Mar 2020 13:53:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=h1eCHVy/pMUEf9B7gboazc7d0KQ49jfH5mCfHZatf7Q=;
 b=eV7BHwUe7VvQ7Kt+hr/ElSezfJ0lEMwJtDSugJlmszKeqpUnnyZ8g9swTlyZVhGCXprC
 Ofr7NK0d4GtKEqJW7VxZJqE1SjK/wi5uiFtCF4sgDWCvYtHj0SedY633JzjUInixTIai
 jrTUq4dNMYeJwELiatworTsn31COSuFInJOwaP1PHjk7Pbwir5DjQIsm7R86b3CLdq+/
 /L9WEwO6jZjY9/2EhF7xE/MDeJEklbivyhGPRJ13k0MIFO+EYf/hPkb6WjX9CMa45kpI
 eYSuVFOYU0vMiV35noZnLMKMypRhdvIuGDqTOFjcbNs59umOh05i8to2GgOmmvYPyvun ZQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2yffwqftev-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2020 13:53:07 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 022DqxgM100444;
 Mon, 2 Mar 2020 13:53:07 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2yg1gv50s2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2020 13:53:07 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 022Dr35C022595;
 Mon, 2 Mar 2020 13:53:03 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 02 Mar 2020 05:53:03 -0800
Date: Mon, 2 Mar 2020 16:52:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alexander Potapenko <glider@google.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
Message-ID: <20200302135251.GA24372@kadam>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9547
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003020102
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9547
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 phishscore=0 clxscore=1011 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003020101
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Joe Perches <joe@perches.com>,
 Dmitriy Vyukov <dvyukov@google.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 02, 2020 at 02:25:51PM +0100, Alexander Potapenko wrote:
> On Mon, Mar 2, 2020 at 2:11 PM Joe Perches <joe@perches.com> wrote:
> >
> > On Mon, 2020-03-02 at 14:04 +0100, glider@google.com wrote:
> > > Certain copy_from_user() invocations in binder.c are known to
> > > unconditionally initialize locals before their first use, like e.g. in
> > > the following case:
> > []
> > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > []
> > > @@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
> > >
> > >               case BC_TRANSACTION_SG:
> > >               case BC_REPLY_SG: {
> > > -                     struct binder_transaction_data_sg tr;
> > > +                     struct binder_transaction_data_sg tr __no_initialize;
> > >
> > >                       if (copy_from_user(&tr, ptr, sizeof(tr)))
> >
> > I fail to see any value in marking tr with __no_initialize
> > when it's immediately written to by copy_from_user.
> 
> This is being done exactly because it's immediately written to by copy_to_user()
> Clang is currently unable to figure out that copy_to_user() initializes memory.
                                                    ^^
typo s/to/from/.

It feels more useful to annotate copy_from_user().  That would be useful
for Smatch as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
