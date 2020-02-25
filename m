Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB9016E9F5
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 16:24:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C4036844D4;
	Tue, 25 Feb 2020 15:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UNbhp4X0y4sw; Tue, 25 Feb 2020 15:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D8236863D9;
	Tue, 25 Feb 2020 15:24:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 29D481BF578
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 15:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2660184B0F
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 15:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 28GyLLtUq37e for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 15:24:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 864F884AAD
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 15:24:17 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id u6so15238241wrt.0
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 07:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pExCLnABKq1PfpRTTdn9ZK5CU/mStxRwg8IJB5FDpUA=;
 b=sEVkwqoCtUXZHhR3RSDHD/FOfpPLG/PAyssQ58MV6GjDv0x5NgXhE0cdc1VNGSL7N+
 r6nna5mYWsz6JFrRmjtLbf/fB5ziT5d4vqG0ZosXCICO9pwu17WgpCxjVj2ImmAj8qOh
 OkXX5xSNijhdHsgOwDhV49goxCc4B0gJA0J8ejiMHo5anR+MG9VhpSt8+sposRct7PO1
 elorcwnzIeq7kyIir6uyQCM9kXnA+R/MW/2/ZCLfwN4xDPhc1w/yjqYiBlMvj7MqOwMV
 IBiBu8VCWUovJ0lZ2vd8eZsx+/Pzw3Zz8Qgh5oQuLxWcwcDquG2v9WSNO5S970qW+v+U
 9fyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pExCLnABKq1PfpRTTdn9ZK5CU/mStxRwg8IJB5FDpUA=;
 b=J/0ogUCAETea9h9HpsRu28ag5h3b3f7p3h0yHf7JKjXWb7S7RfIAXdq4sczGb0konA
 j5IY1hP828rNAi6TfN4M8EY0xZIrNAc/Bf6bv20WU5HDrUOOJhqf/dLzHlx1E0ohg/0z
 O5Vilv+ZlwqAxOrjlwSZS4lVQJofH7vUy/+5LIXOZxAaFcKsgTpJtAOdq+2XG9Chqy0q
 /HmdoTpXjwtZUTg5p1SKr7HduNC6aYOAPV3MCWP7huv7Ccmxbv1OjFPe+QdzLcb2mIDT
 K4zYl6fzW47fsz2cqPPgqmgSPDuUWtSX6S0vRbj4TwtF/cBvsUuolvGQdWmFbeq3PFpx
 ytXg==
X-Gm-Message-State: APjAAAX44iXbE5/GTbXg9prM5Fg/TMfyvmDyO0kwO2kJ5/Xfw6B5kTz4
 8vzWj7W0Kd3odQis3M/fCd4r4ZLZLu2QAspB7cldPg==
X-Google-Smtp-Source: APXvYqydc9sdEbNSNazO2Owi/Zc64/tf/SD6RSJAAhTNsGSMpkBBhfogbxWR6XT1dO567DtogTW1e+8UvUxfbOXhqvc=
X-Received: by 2002:adf:b60f:: with SMTP id f15mr76823740wre.372.1582644255524; 
 Tue, 25 Feb 2020 07:24:15 -0800 (PST)
MIME-Version: 1.0
References: <20200224153501.60040-1-glider@google.com>
 <20200224153501.60040-2-glider@google.com>
 <202002242017.0817EEA8@keescook>
In-Reply-To: <202002242017.0817EEA8@keescook>
From: Alexander Potapenko <glider@google.com>
Date: Tue, 25 Feb 2020 16:24:04 +0100
Message-ID: <CAG_fn=WoBZL4_Zzg_EL45MWyccXt9JVBdXyxfEdkaoMVKOhhaQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] binder: do not initialize locals passed to
 copy_from_user()
To: Kees Cook <keescook@chromium.org>
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
Cc: devel@driverdev.osuosl.org, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, arve@android.com,
 Ingo Molnar <mingo@redhat.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 25, 2020 at 5:18 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Feb 24, 2020 at 04:35:00PM +0100, glider@google.com wrote:
> > Certain copy_from_user() invocations in binder.c are known to
> > unconditionally initialize locals before their first use, like e.g. in
> > the following case:
> >
> >       struct binder_transaction_data tr;
> >       if (copy_from_user(&tr, ptr, sizeof(tr)))
> >               return -EFAULT;
> >
> > In such cases enabling CONFIG_INIT_STACK_ALL leads to insertion of
> > redundant locals initialization that the compiler fails to remove.
> > To work around this problem till Clang can deal with it, we apply
> > __do_not_initialize to local Binder structures.
>
> It should be possible to write a Coccinelle script to identify all these
> cases. (i.e. a single path from struct declaration to copy_from_user())
> and apply the changes automatically. This script could be checked into
> scripts/coccinelle/ to help keep these markings in sync...

The following script:

=================================
@local_inited_by_cfu@
attribute name __no_initialize;
identifier var;
type T;
statement stmt;
@@
T var
+__no_initialize
;
if (copy_from_user(&var,..., sizeof(var))) stmt
=================================

seems to do the job, but this transformation isn't idempotent: it
inserts __no_initialize every time Coccinelle is invoked.
It's hard to work around this problem, as attributes may only be parts
of +-lines (i.e. I cannot write a rule that matches "T var
__no_initialize")
Linux kernel coccinelle scripts don't really contain good examples of
adding attributes, and probably the spatch version used by most
maintainers doesn't support them :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
