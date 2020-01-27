Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 697A914A850
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 17:48:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1AAAE851CC;
	Mon, 27 Jan 2020 16:48:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3XZD4AK6GLt; Mon, 27 Jan 2020 16:48:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD5CD850E6;
	Mon, 27 Jan 2020 16:48:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 238321BF338
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 16:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1F48D20369
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 16:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ALQ2b9TSBSY0 for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 16:48:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id B486B2034B
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 16:48:03 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id h23so11462205ljc.8
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 08:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ga8+AQLvFFd6qgmO7oS/OlOLpF/zAlkFwxPfiQu4fzM=;
 b=iS6N+V6/yjfmJ+cX5wU/06q/h68H/dzYW7YSnOHtqCvXDM1L3TdF8RLlD1ibbLLM7b
 2PSpZE8W3QJRwNxFu5+eEYx/cIqXXQzFwz2V+MZfOsuA8AYYj+JrYMzrRuYYi75Nloc2
 bVe86FJoM1mbsboQCcW9y556dM41lUf8bWFCOIcckHshmZana/jA7dxn0+kRMC8UXeJa
 mV41hz4ol8OI8fdaEG3d8IwiuwIkPmGwkphpAsYBv+/uHS3cTKDH9zZ8Vup/8wiJkxW8
 TEMFLuLdYOUu4RPN4v7MMbQ5aAIM8yyQi9b4ub/qifcMpLJH+PykQPLx47CJkUXlqyG/
 82Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ga8+AQLvFFd6qgmO7oS/OlOLpF/zAlkFwxPfiQu4fzM=;
 b=WGrvju9rCkNVhFWT8Usw/ik76fv/wdJoW0HS8tciWKSRxprWb90eLGPYKt8fYlO1W8
 IZCrWKxUnkayQvVTW70xOeg4GjrQ94D1No7bKw3leKNNe4mbwvc1DtV+X4ypIEtDsR9q
 Gc15iqzq77cmBoEbWGlp4IP4luUoBnn5VMyyZ21Wt8xC/gPfv29aqNvwrcN7b3T5fbMx
 tLnIvPGvDKsjnXTSYLUJPjzcF1dKbqtYtTW2Aw0kr+Bp6wtJpcaz4rOem0ymhCmStcN0
 CoPQ1tfLPInelQ2OeNIlJjEVwhB1te7fjnZFuY97WiJDXODBcamHEjrclVn5KKavQh5k
 vAhw==
X-Gm-Message-State: APjAAAWkGcXnzmrCWcueUhFQcQDd+9hPWgZtTMkRkFiO2LNyhbtp+Y6D
 1IG+aGxmudyTzMg3lg9i9mZacELTBKMXlf9UH8g/Xw==
X-Google-Smtp-Source: APXvYqzyrkrq3JxSLPU4ez7HAOrd7MfbSRl0//H4GgLnSwcoCHIkFByV99XiGMT43TPlU+/ozeM800lOExr5c/gaoSc=
X-Received: by 2002:a2e:88c4:: with SMTP id a4mr11112826ljk.174.1580143681421; 
 Mon, 27 Jan 2020 08:48:01 -0800 (PST)
MIME-Version: 1.0
References: <CACT4Y+bg1UKXzZF4a9y+5CfNYRwBc5Gx+GjPS0Dhb1n-Qf50+g@mail.gmail.com>
 <20200126085535.GA3533171@kroah.com>
In-Reply-To: <20200126085535.GA3533171@kroah.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 27 Jan 2020 08:47:50 -0800
Message-ID: <CAHRSSEwoBKGiimbAGKavKpcEZrPgo0GYWu7JZmiXjwWo6fxqeA@mail.gmail.com>
Subject: Re: binderfs interferes with syzkaller?
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
 Todd Kjos <tkjos@android.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 syzkaller <syzkaller@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>,
 Hridya Valsaraju <hridya@google.com>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 26, 2020 at 12:55 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sat, Jan 25, 2020 at 06:49:49PM +0100, Dmitry Vyukov wrote:
> > Hi binder maintainers,
> >
> > It seems that something has happened and now syzbot has 0 coverage in
> > drivers/android/binder.c:
> > https://storage.googleapis.com/syzkaller/cover/ci-upstream-kasan-gce-root.html
> > It covered at least something there before as it found some bugs in binder code.
> > I _suspect_ it may be related to introduction binderfs, but it's
> > purely based on the fact that binderfs changed lots of things there.
> > And I see it claims to be backward compatible.
>
> It is backwards compatible if you mount binderfs, right?

If binderfs is enabled and binderfs is mounted, then it's compatible
except that the path to be opened is under the binderfs mount point
instead of /dev/binderX.

>
> > syzkaller strategy to reach binder devices is to use
> > CONFIG_ANDROID_BINDER_DEVICES to create a bunch of binderN devices (to
> > give each test process a private one):
> > https://github.com/google/syzkaller/blob/master/dashboard/config/upstream-kasan.config#L5671
> >
> > Then it knows how to open these /dev/binderN devices:
> > https://github.com/google/syzkaller/blob/master/sys/linux/dev_binder.txt#L22
> > and do stuff with them.
> >
> > Did these devices disappear or something?
>
> Try mounting binderfs and then you should be able to see them all.
>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
