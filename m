Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CD241F5EB
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 21:51:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F37840809;
	Fri,  1 Oct 2021 19:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dD5L1OM-uou1; Fri,  1 Oct 2021 19:51:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 407B14023A;
	Fri,  1 Oct 2021 19:51:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB0261BF41E
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 19:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 988E6845CF
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 19:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A3j851lGRRpg for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 19:51:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E273B845CD
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 19:51:26 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id i25so42812981lfg.6
 for <devel@driverdev.osuosl.org>; Fri, 01 Oct 2021 12:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OASN1DWXrIyD6gQMB0CvKRtBfiSz7Btq5Vz6GIW00BE=;
 b=pggztfgWW5/r760u67qMKk/gTZdTITQgtnm3gsdGguHjcPYeUrqfnJ1Ts/Q8zWqhwu
 +HBU/MNmhVO8smF7opyPX9VNyK1Fp5kiQMn7GyqBpkTvdPA0ydBPoQSBZtdYo8YURLwl
 3tGka8IMoYW/kKnrhIpQ+1XF1sCw+rvBzldSAyrs8wm/GlQyk6fd5/JFQwk3kiF81KnQ
 onxrXDIA4LOqeSja4oFc4zGKVKfBJvfADJh3c6BplTORvbepH/RZojxT33BqibLljLad
 N/H0dfwVeCeFN3AlCaOG/FyxomgOhHkI7xyAvzbNN+fSW8TAoOKjJ6zy166m0yhWGtIt
 787Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OASN1DWXrIyD6gQMB0CvKRtBfiSz7Btq5Vz6GIW00BE=;
 b=7HLM/up6akKVB51+VilS4o02UWs6xWWmyYUuVY6B+PZZuVjibh5snHnaoxM3TIhLYL
 MsESh2xrIWMc4ndK45soL5idrVShG5JDnbaQo1efWtmXSsH8hq4atyAi+nuXmx7ZutZc
 h145QYL6HvCG2Ex0wyt7L+s9xC9lgDAWiA7nfI5AGbpdkOlHvk2bnTFu+Ud34TKknLjR
 QhHEvhnS/FNEZ7R7wLkvkKwtVKqSlDlH83AsCdxI2M01q0z7w8KdimluyHj/tPyQezw5
 yl6grW3JxuR24TPIEf/wRFWvLqo0CMK5wHmA4+ZqnZEu5JJsbD4goC/BUrMwfrQbKVXH
 yQYg==
X-Gm-Message-State: AOAM5310jM8CnSZR5uSC6AJgIX3dykP+dcJcDA4AGKqFzc247C9jhF41
 2mbG5B2xmcsOE2cP+FOapP+ftOpdVlYZcVS11Wgzgw==
X-Google-Smtp-Source: ABdhPJzyi89yz4Ys7YmWbiYxSX179Y8R/JtbkovCtO5Snt8v5Te8qZFir2+vrfNRPa3XFPVfkfW/5UQtafjENmEXRYo=
X-Received: by 2002:a2e:9243:: with SMTP id v3mr2195425ljg.47.1633117884418;
 Fri, 01 Oct 2021 12:51:24 -0700 (PDT)
MIME-Version: 1.0
References: <20211001175521.3853257-1-tkjos@google.com>
 <c6a650e4-15e4-2943-f759-0e9577784c7a@schaufler-ca.com>
 <CAG48ez2tejBUXJGf0R9qpEiauL9-ABgkds6mZTQD7sZKLMdAAQ@mail.gmail.com>
In-Reply-To: <CAG48ez2tejBUXJGf0R9qpEiauL9-ABgkds6mZTQD7sZKLMdAAQ@mail.gmail.com>
From: Jann Horn <jannh@google.com>
Date: Fri, 1 Oct 2021 21:50:58 +0200
Message-ID: <CAG48ez1SRau1Tnge5HVqxCFsNCizmnQLErqnC=eSeERv8jg-zQ@mail.gmail.com>
Subject: Re: [PATCH v2] binder: use cred instead of task for selinux checks
To: Casey Schaufler <casey@schaufler-ca.com>
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
 kernel-team@android.com, tkjos@android.com, paul@paul-moore.com,
 keescook@chromium.org, selinux@vger.kernel.org, gregkh@linuxfoundation.org,
 stephen.smalley.work@gmail.com, jmorris@namei.org, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, arve@android.com, stable@vger.kernel.org,
 jeffv@google.com, joel@joelfernandes.org, eparis@parisplace.org,
 maco@android.com, christian@brauner.io, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 1, 2021 at 9:36 PM Jann Horn <jannh@google.com> wrote:
> On Fri, Oct 1, 2021 at 8:46 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > On 10/1/2021 10:55 AM, Todd Kjos wrote:
> > > Save the struct cred associated with a binder process
> > > at initial open to avoid potential race conditions
> > > when converting to a security ID.
> > >
> > > Since binder was integrated with selinux, it has passed
> > > 'struct task_struct' associated with the binder_proc
> > > to represent the source and target of transactions.
> > > The conversion of task to SID was then done in the hook
> > > implementations. It turns out that there are race conditions
> > > which can result in an incorrect security context being used.
> >
> > In the LSM stacking patch set I've been posting for a while
> > (on version 29 now) I use information from the task structure
> > to ensure that the security information passed via the binder
> > interface is agreeable to both sides. Passing the cred will
> > make it impossible to do this check. The task information
> > required is not appropriate to have in the cred.
>
> Why not? Why can't you put the security identity of the task into the creds?

Ah, I get it now, you're concerned about different processes wanting
to see security contexts formatted differently (e.g. printing the
SELinux label vs printing the AppArmor label), right?

But still, I don't think you can pull that information from the
receiving task. Maybe the easiest solution would be to also store that
in the creds? Or you'd have to manually grab that information when
/dev/binder is opened.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
