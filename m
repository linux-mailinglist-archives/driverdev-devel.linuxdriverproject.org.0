Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 026402760BE
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 21:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C507E273E3;
	Wed, 23 Sep 2020 19:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wph5lrkDzNDT; Wed, 23 Sep 2020 19:05:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1A516273A9;
	Wed, 23 Sep 2020 19:05:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEF991BF331
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 19:05:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC048271D7
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 19:05:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uE4pcn9DkGvu for <devel@linuxdriverproject.org>;
 Wed, 23 Sep 2020 19:05:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E59B7258A5
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 19:05:00 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id z18so258793pfg.0
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 12:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZBh9RbhVGnIffy2QajMsqYEPj2mzX15NIxK1aL/PEzs=;
 b=dZm1Taf0xU5E1KKhHeWYit7oaFr4eJcqj10AuEn+LtbbruyDxpW0rcttxuS8gRNi51
 /0r+tHM8E6rLduWK78WDMOvcEHMnb8BpAMGLbwJ84BPQNdwivtQwgvWerW0GKYHiUkhW
 UYcxUPqGFHhbPTjPLgIMZChsMlUzSZtor1/Wc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZBh9RbhVGnIffy2QajMsqYEPj2mzX15NIxK1aL/PEzs=;
 b=Ssvfpqs2e6Qux3HPoRKq1YnXuzzHmpgYphHzOacoKRxMaJ6ALkIFGmG+bHvpxCzqrS
 pk1CQst8dkYF61S9/2gMxexpe5F/ZbN+mQ8XpY7/VH0XseVxNmso3GoUrMyuPZ67/QIM
 0BqX0LPZKxyUKdT4xzGUe2D3hp3Ns/2/9qLNMrfhPjYJDc0kFPsZb0PCZZJqCRqjAlIx
 KuHyAcUI/TptHG7gitEWW12878mCTcLP3owptvkuRSYUj4v+FY8U5jaNtX8JlH7mCs/g
 6whqoNNKJeDXRu6j07qkQD1l2o1kCe5E4+Ujq90MSqJwyV4uALmEHqq3nXiPuecGEuGu
 DZQg==
X-Gm-Message-State: AOAM533CuK8eEQwGdbc6qr/+ClamaLo31ZBX/rU3uual+oGegaOzGu9g
 ytt/MPubEauQiKsnoDoRczR0QQ==
X-Google-Smtp-Source: ABdhPJzCphTKya6JaoxMvPf5mc+XKN0x8N+d6XBlum1PjcHuOW+tGmg8m9D/6ew9feSKQLtSLPfuIA==
X-Received: by 2002:a63:230f:: with SMTP id j15mr951550pgj.363.1600887900506; 
 Wed, 23 Sep 2020 12:05:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t10sm574075pgp.15.2020.09.23.12.04.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 12:04:59 -0700 (PDT)
Date: Wed, 23 Sep 2020 12:04:58 -0700
From: Kees Cook <keescook@chromium.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [RFC PATCH 07/11] drivers/android/binder: convert stats,
 transaction_log to counter_atomic
Message-ID: <202009231204.5531FBA23F@keescook>
References: <cover.1600816121.git.skhan@linuxfoundation.org>
 <4fe28fc5f315657e4af276b8a3c71d80a5eaa379.1600816121.git.skhan@linuxfoundation.org>
 <20200923051027.GA2578443@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923051027.GA2578443@kroah.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, surenb@google.com,
 linux-kernel@vger.kernel.org, hridya@google.com, arve@android.com,
 Shuah Khan <skhan@linuxfoundation.org>, joel@joelfernandes.org,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 23, 2020 at 07:10:27AM +0200, Greg KH wrote:
> On Tue, Sep 22, 2020 at 07:43:36PM -0600, Shuah Khan wrote:
> > counter_atomic is introduced to be used when a variable is used as
> > a simple counter and doesn't guard object lifetimes. This clearly
> > differentiates atomic_t usages that guard object lifetimes.
> > 
> > counter_atomic variables will wrap around to 0 when it overflows and
> > should not be used to guard resource lifetimes, device usage and
> > open counts that control state changes, and pm states.
> > 
> > stats tracks per-process binder statistics. Unsure if there is a chance
> > of this overflowing, other than stats getting reset to 0. Convert it to
> > use counter_atomic.
> > 
> > binder_transaction_log:cur is used to keep track of the current log entry
> > location. Overflow is handled in the code. Since it is used as a
> > counter, convert it to use counter_atomic.
> > 
> > This conversion doesn't change the oveflow wrap around behavior.
> > 
> > Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
> > ---
> >  drivers/android/binder.c          | 41 ++++++++++++++++---------------
> >  drivers/android/binder_internal.h |  3 ++-
> >  2 files changed, 23 insertions(+), 21 deletions(-)
> > 
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index f936530a19b0..11a0407c46df 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -66,6 +66,7 @@
> >  #include <linux/syscalls.h>
> >  #include <linux/task_work.h>
> >  #include <linux/sizes.h>
> > +#include <linux/counters.h>
> >  
> >  #include <uapi/linux/android/binder.h>
> >  #include <uapi/linux/android/binderfs.h>
> > @@ -172,22 +173,22 @@ enum binder_stat_types {
> >  };
> >  
> >  struct binder_stats {
> > -	atomic_t br[_IOC_NR(BR_FAILED_REPLY) + 1];
> > -	atomic_t bc[_IOC_NR(BC_REPLY_SG) + 1];
> > -	atomic_t obj_created[BINDER_STAT_COUNT];
> > -	atomic_t obj_deleted[BINDER_STAT_COUNT];
> > +	struct counter_atomic br[_IOC_NR(BR_FAILED_REPLY) + 1];
> > +	struct counter_atomic bc[_IOC_NR(BC_REPLY_SG) + 1];
> > +	struct counter_atomic obj_created[BINDER_STAT_COUNT];
> > +	struct counter_atomic obj_deleted[BINDER_STAT_COUNT];
> 
> These are just debugging statistics, no reason they have to be atomic
> variables at all and they should be able to just be "struct counter"
> variables instead.

But there's no reason for them _not_ to be atomic. Please let's keep
this API as always safe. Why even provide a new foot-gun here?

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
