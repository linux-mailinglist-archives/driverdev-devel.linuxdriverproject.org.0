Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DE442A6E7
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Oct 2021 16:13:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4D37401CF;
	Tue, 12 Oct 2021 14:13:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJp-wS8fO_sX; Tue, 12 Oct 2021 14:13:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE1CF4040C;
	Tue, 12 Oct 2021 14:13:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08C8C1BF3F7
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 14:13:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC5EA4040C
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 14:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rSf0oUGxyiZ4 for <devel@linuxdriverproject.org>;
 Tue, 12 Oct 2021 14:13:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C0C2A403F3
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 14:13:20 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id d3so226256edp.3
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 07:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ieKETngd4wQHVII+IJcs5CQY5wbzV3iEx77J8xRx2vA=;
 b=bWaI4AeFcuNvWGD1I8cg7W6CG/azm1vaRBxjX1dsRUwDZWLVCDsVzS85MZqppDPqW9
 34rds3D76bwkkPcvjsGuCTXawVOxwdB47aCElSGmvamfQoH+DDNnXd3o+dxEIfXWrjbD
 9So44VhRb03JVhThMjaEnhw5YCUaZMPe/VCwNVxdjRE0o6eP32scGLvrv27NbXQkVhLG
 QYRO+iyEJ5oGBWxHSDEfHBIXts79CsmV5cbX2N+FVqkQp/3zRx7G8QI8fCoNxTXhr8Lp
 cOCeSQ0fT/VSaazPoGa379Fp+1k7ZCgjR7y/PXuIDNZ0PKRb5OjvhAoDrfEbCq60UVDa
 yVWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ieKETngd4wQHVII+IJcs5CQY5wbzV3iEx77J8xRx2vA=;
 b=uhtaqi9knPtZYDGrr6IqKsoU/zi0FmuRCj18KW5yunYAODrdcwlCsBSn/zTzuH7sa1
 jiJFxZCgAzg86kM+fA0rEPeGDg3DTlPph0L2YxJl7WcvSyZUEnA31rgtMqueGfY1ni4/
 HvsQAwY4WIvzZpTfhKVmaiAO64H41BAY6ahvQ21vHQ7X5CiKFuwYt29dxjCkphM/r1Yr
 Ym0oAJT+pkmmCNgVu/+3ziB1cAum8PpXyk/pSHsV+GupLb/Ebr8fiBwU1Z/u6W7LNEiL
 kLl2NLuQcSxp7oqKwfwniYU/Q4FbG0VPjvwAaKWVHc3xEoDXTNVYBqGIjmvISpAGpGTd
 2A3A==
X-Gm-Message-State: AOAM531VIZNKhCNhzbeHc2UldRLDceJCBGd5rWlDESurK6YI4T1qmbkn
 p4/YfzhZnfPEfc0RpIoStM/aN9xhEaAC6vJyGB4g
X-Google-Smtp-Source: ABdhPJwOMKZYa/n4x55N6Emss5rBP+EcS7P39AqLbYHCH7HSMgM0Rumxq877HQtO60UwMW0rF+Cn72qdnnCrQ2cNdok=
X-Received: by 2002:a17:906:2f16:: with SMTP id
 v22mr32291219eji.126.1634047997689; 
 Tue, 12 Oct 2021 07:13:17 -0700 (PDT)
MIME-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
 <20211007004629.1113572-3-tkjos@google.com>
 <CAHC9VhSDnwapGk6Pvn5iuKv0zCtZSbfnGAkZwKcxVYLVRH6CLg@mail.gmail.com>
 <8c07f9b7-58b8-18b5-84f8-9b6c78acb08b@schaufler-ca.com>
 <20211012094101.GE8429@kadam>
In-Reply-To: <20211012094101.GE8429@kadam>
From: Paul Moore <paul@paul-moore.com>
Date: Tue, 12 Oct 2021 10:13:06 -0400
Message-ID: <CAHC9VhROz8V7MWch8UfrhjR030VmY7rKEUFgUvYqL6kdZCy3aw@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] binder: use cred instead of task for getsecid
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, linux-security-module@vger.kernel.org,
 tkjos@android.com, keescook@chromium.org, jannh@google.com,
 selinux@vger.kernel.org, Jeffrey Vander Stoep <jeffv@google.com>,
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, joel@joelfernandes.org, arve@android.com,
 maco@android.com, stable@vger.kernel.org, gregkh@linuxfoundation.org,
 Casey Schaufler <casey@schaufler-ca.com>, Eric Paris <eparis@parisplace.org>,
 kernel-team@android.com, christian@brauner.io, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 12, 2021 at 5:41 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Mon, Oct 11, 2021 at 02:59:13PM -0700, Casey Schaufler wrote:
> > On 10/11/2021 2:33 PM, Paul Moore wrote:
> > > On Wed, Oct 6, 2021 at 8:46 PM Todd Kjos <tkjos@google.com> wrote:
> > >> Use the 'struct cred' saved at binder_open() to lookup
> > >> the security ID via security_cred_getsecid(). This
> > >> ensures that the security context that opened binder
> > >> is the one used to generate the secctx.
> > >>
> > >> Fixes: ec74136ded79 ("binder: create node flag to request sender's
> > >> security context")
> > >> Signed-off-by: Todd Kjos <tkjos@google.com>
> > >> Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> > >> Reported-by: kernel test robot <lkp@intel.com>
> > >> Cc: stable@vger.kernel.org # 5.4+
> > >> ---
> > >> v3: added this patch to series
> > >> v4: fix build-break for !CONFIG_SECURITY
> > >>
> > >>  drivers/android/binder.c | 11 +----------
> > >>  include/linux/security.h |  4 ++++
> > >>  2 files changed, 5 insertions(+), 10 deletions(-)
> > >>
> > >> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > >> index ca599ebdea4a..989afd0804ca 100644
> > >> --- a/drivers/android/binder.c
> > >> +++ b/drivers/android/binder.c
> > >> @@ -2722,16 +2722,7 @@ static void binder_transaction(struct binder_proc *proc,
> > >>                 u32 secid;
> > >>                 size_t added_size;
> > >>
> > >> -               /*
> > >> -                * Arguably this should be the task's subjective LSM secid but
> > >> -                * we can't reliably access the subjective creds of a task
> > >> -                * other than our own so we must use the objective creds, which
> > >> -                * are safe to access.  The downside is that if a task is
> > >> -                * temporarily overriding it's creds it will not be reflected
> > >> -                * here; however, it isn't clear that binder would handle that
> > >> -                * case well anyway.
> > >> -                */
> > >> -               security_task_getsecid_obj(proc->tsk, &secid);
> > >> +               security_cred_getsecid(proc->cred, &secid);
> > >>                 ret = security_secid_to_secctx(secid, &secctx, &secctx_sz);
> > >>                 if (ret) {
> > >>                         return_error = BR_FAILED_REPLY;
> > >> diff --git a/include/linux/security.h b/include/linux/security.h
> > >> index 6344d3362df7..f02cc0211b10 100644
> > >> --- a/include/linux/security.h
> > >> +++ b/include/linux/security.h
> > >> @@ -1041,6 +1041,10 @@ static inline void security_transfer_creds(struct cred *new,
> > >>  {
> > >>  }
> > >>
> > >> +static inline void security_cred_getsecid(const struct cred *c, u32 *secid)
> > >> +{
> > >> +}
> > > Since security_cred_getsecid() doesn't return an error code we should
> > > probably set the secid to 0 in this case, for example:
> > >
> > >   static inline void security_cred_getsecid(...)
> > >   {
> > >     *secid = 0;
> > >   }
> >
> > If CONFIG_SECURITY is unset there shouldn't be any case where
> > the secid value is ever used for anything. Are you suggesting that
> > it be set out of an abundance of caution?
>
> The security_secid_to_secctx() function is probably inlined so probably
> KMSan will not warn about this.  But Smatch will warn about passing
> unitialized variables.  You probably wouldn't recieve and email about
> it, and I would just add an exception that security_cred_getsecid()
> should be ignored.

I'd much rather just see the secid set to zero in the !CONFIG_SECURITY case.

-- 
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
