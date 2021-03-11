Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAE6336EFF
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 10:36:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EF456F82D;
	Thu, 11 Mar 2021 09:36:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCvlE3RURIqZ; Thu, 11 Mar 2021 09:36:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CD3C6F502;
	Thu, 11 Mar 2021 09:36:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9500D1BF395
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 09:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 841F56F502
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 09:36:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BTFpiiwSq2gS for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 09:36:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D27106F598
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 09:36:41 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id u6so15128154oic.2
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 01:36:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z/yJc2SsfEWziBZ1LArgu9WV9K8NEngQzg7n/JFp0cM=;
 b=RnMEZOtkbouSIgAcWgcLjYn+e8sSOQsk+gwKETZkeyO6CxfoGJomwqfueCC/TMkell
 2ZF/GXXxdfoZlarfmCfCXhmWTv5EjeLw1PsCv1WLdMxi5V66om9ILEZmohPTVutCAadr
 3U26F0jjA2mtiraU35ghuye85+lEj7OTtoKsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z/yJc2SsfEWziBZ1LArgu9WV9K8NEngQzg7n/JFp0cM=;
 b=oJJcu0TRq9v7V0QLWQuxPoSddd5+9s6MiCOL7Tt0DHqlOxipzOhxTBO6fNJ41OyV5i
 wvWjo1LwpLkF+0wfkDL/nVHXoZqXQq9+v6WZ1U9b02puT/vVc7Jfg5arRBMqbfYbfu3B
 pz2Jk6KHIEqRBeR8yzmVMIMHPs3Kal2MYx73bmOQGyVuJ0t11mYIeDpooqsFKjGe5BFp
 Y3/AZ4Z4wWqTfYQhFyLC84lwTRMSbI5Wutdo6rJugrK1GswXaXuv0KVQWUtUaiY62JRU
 zsSncLix6qeG+6OtsmwicRaXU24Uz01/cprUoblOtgd3y4cfRjGRRGKqu2/Ak0AXuLXQ
 W3bA==
X-Gm-Message-State: AOAM5333JuK9CTRSpO41mdTLlXX8d83uKbVNdm/oVlAS7LoXx1jxAPNN
 4yrCB4wLgTThrs+eJvCdDWddbreBHpV4I7mf
X-Google-Smtp-Source: ABdhPJyUpbgwxvXTb+04sK2UHmSdwNHs55O9K7GCVThPE4XWlXenyqoF62/p3BYR1OSpYov5pdlHcQ==
X-Received: by 2002:aca:6204:: with SMTP id w4mr5773718oib.86.1615455400209;
 Thu, 11 Mar 2021 01:36:40 -0800 (PST)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com.
 [209.85.210.52])
 by smtp.gmail.com with ESMTPSA id v1sm558674otk.67.2021.03.11.01.36.38
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Mar 2021 01:36:39 -0800 (PST)
Received: by mail-ot1-f52.google.com with SMTP id f8so883573otp.8
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 01:36:38 -0800 (PST)
X-Received: by 2002:a05:6830:144e:: with SMTP id
 w14mr6263501otp.0.1615455398529; 
 Thu, 11 Mar 2021 01:36:38 -0800 (PST)
MIME-Version: 1.0
References: <20210310225251.2577580-1-dualli@chromium.org>
 <20210310225251.2577580-2-dualli@chromium.org>
 <YEnH1qd527g/neY4@kroah.com>
In-Reply-To: <YEnH1qd527g/neY4@kroah.com>
From: Li Li <dualli@chromium.org>
Date: Thu, 11 Mar 2021 01:36:26 -0800
X-Gmail-Original-Message-ID: <CA+xfxX4tD30BJLgwLAoiMzF7xTC-4q1i0A5Znp3tJzyi3ATLzQ@mail.gmail.com>
Message-ID: <CA+xfxX4tD30BJLgwLAoiMzF7xTC-4q1i0A5Znp3tJzyi3ATLzQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] binder: BINDER_FREEZE ioctl
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, kernel-team@android.com,
 linux-kernel@vger.kernel.org, joel@joelfernandes.org, arve@android.com,
 Martijn Coenen <maco@google.com>, hridya@google.com, surenb@google.com,
 christian@brauner.io, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 10, 2021 at 11:33 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 10, 2021 at 02:52:49PM -0800, Li Li wrote:
> >       if (target_proc) {
> >               binder_inner_proc_lock(target_proc);
> > +             target_proc->outstanding_txns--;
> > +             WARN_ON(target_proc->outstanding_txns < 0);
>
> WARN_* is a huge crutch, please just handle stuff like this properly and
> if you really need to, warn userspace (but what can they do about it?)
>
> You also just rebooted all systems that have panic-on-warn set, so if
> this can be triggered by userspace, you caused a DoS of things :(
>
> So please remove all of the WARN_ON() you add in this patch series to
> properly handle the error conditions and deal with them correctly.
>
> And if these were here just for debugging, hopefully the code works
> properly now and you do not need debugging anymore so they can all just
> be dropped.

When the target_proc is freed, there's no outstanding transactions already.
The FREEZE ioctl from userspace won't trigger this. It's for debugging.
And I'll remove it in v2. Thanks for the suggestion!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
