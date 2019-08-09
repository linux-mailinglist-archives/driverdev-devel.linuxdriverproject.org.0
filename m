Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A379875DA
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 11:25:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCCBB8696D;
	Fri,  9 Aug 2019 09:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WtkD4-WWJb9U; Fri,  9 Aug 2019 09:25:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98EDB86962;
	Fri,  9 Aug 2019 09:25:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B8891BF5DA
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 09:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 45B5086964
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 09:25:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VrwoKA9zCugP for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 09:25:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1339586962
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 09:25:32 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x799P9N0022012;
 Fri, 9 Aug 2019 09:25:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=u6x3As4MfXMR9e0DcE2E84qHWZeCd3YYNsZEqIVy7JI=;
 b=dGJHoLsJeMw/LWqkhHNg5bQw8vsxKHMMxnPMOFgS5jJC0t+vdOk5seVj1XdGpTkpyE0s
 pz90pdXmmEF1ACv8tSLFCnjbc4UGMsYsTqwp6ZH/bvXx2T+Q2eeezI03DnXzU1ntQOwW
 ipyz5mr4Re7aXTq0+1P+x4+zQA9h6LxDOPJjepZPdFPAYmHzh+AMBf1O0liali8aq2SU
 TYwXT6V1y+pOQzQIE+JHzNkeMy2XE22p1949uJYpK9VH/jIx8kmunylLYGRp1p5G9NPd
 wpGiwncqgPCwXvo09uQjd26L9bX6VNTdcvjTO04W7VPSHNKq1OEqHCrCp8s5oYSmYEKK ng== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=u6x3As4MfXMR9e0DcE2E84qHWZeCd3YYNsZEqIVy7JI=;
 b=eYLwW1nYy+4c7mCmQNyEKl5skNe6Q46zP6oeUYCdlMeVkyaJ+glRKyPWyW8gtfZRDXc3
 fOC7tG+9qzVbBvnYnWa3t2HyP2iQ8Nl4yfE/de18ZMIiwfKnRno+cWnW6XtD1EAjMxPi
 J5hg7vVeMWPd0sB8Ou/3AFcbt+zB+qrNOD5iVxksWGHmJYzKhwCMdonHcclYRRLxPLRT
 ctC5qBvrX8LQTEkTE+4Y3OlEjKAlLpozFjypLMNlCvJHTyt7ofRQ2zicdF9Sn/f4VVG0
 Q4dJ99i4i1COlU61/554g2Xa2yGMW2WAYREoCUAZ3T1OECTwksSw9+MAX7zzn4a8Kwb6 YQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2u8hgp6e6q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 09 Aug 2019 09:25:29 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x799NWab024056;
 Fri, 9 Aug 2019 09:25:28 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2u8pj8w5b6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 09 Aug 2019 09:25:28 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x799PPeQ022647;
 Fri, 9 Aug 2019 09:25:26 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 09 Aug 2019 02:25:25 -0700
Date: Fri, 9 Aug 2019 12:25:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hridya Valsaraju <hridya@google.com>
Subject: Re: [PATCH v2 1/2] binder: Add default binder devices through
 binderfs when configured
Message-ID: <20190809092516.GQ1974@kadam>
References: <20190806184007.60739-1-hridya@google.com>
 <20190806184007.60739-2-hridya@google.com>
 <20190807110204.GL1974@kadam>
 <CA+wgaPNSWbJi3feygHixJX5cLUnQFH0tVSnBrrGQYtE7LUZPzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+wgaPNSWbJi3feygHixJX5cLUnQFH0tVSnBrrGQYtE7LUZPzQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9343
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908090096
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9343
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908090096
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian.brauner@ubuntu.com>, kernel-team@android.com,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 07, 2019 at 09:51:46AM -0700, Hridya Valsaraju wrote:
> On Wed, Aug 7, 2019 at 4:02 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Tue, Aug 06, 2019 at 11:40:05AM -0700, Hridya Valsaraju wrote:
> > > @@ -467,6 +466,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
> > >       int ret;
> > >       struct binderfs_info *info;
> > >       struct inode *inode = NULL;
> > > +     struct binderfs_device device_info = { 0 };
> > > +     const char *name;
> > > +     size_t len;
> > >
> > >       sb->s_blocksize = PAGE_SIZE;
> > >       sb->s_blocksize_bits = PAGE_SHIFT;
> > > @@ -521,7 +523,24 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
> > >       if (!sb->s_root)
> > >               return -ENOMEM;
> > >
> > > -     return binderfs_binder_ctl_create(sb);
> > > +     ret = binderfs_binder_ctl_create(sb);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     name = binder_devices_param;
> > > +     for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
> > > +             strscpy(device_info.name, name, len + 1);
> > > +             ret = binderfs_binder_device_create(inode, NULL, &device_info);
> > > +             if (ret)
> > > +                     return ret;
> >
> > We should probably clean up before returning...  The error handling code
> > would probably be tricky to write though and it's not super common.
> 
> Thank you for taking a look Dan. Did you mean cleaning up the default
> devices that were already created? They will actually be cleaned up by
> binderfs_evict_inode() during the super block's cleanup since the
> mount operation will fail due to an error here.

Yeah.  I meant the binderfs_binder_device_create() from previous
iterations through this loop.

Good to know that it's handled.  Thanks for taking the time to look at
this.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
