Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B5814971A
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 19:13:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A15D86959;
	Sat, 25 Jan 2020 18:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J7Kbh5L32E+c; Sat, 25 Jan 2020 18:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 451D7861D2;
	Sat, 25 Jan 2020 18:13:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C98BB1BF82D
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 18:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C64A785B09
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 18:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4DJsoRiZcJmL for <devel@linuxdriverproject.org>;
 Sat, 25 Jan 2020 18:13:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 769E185CB8
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 18:13:15 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id y8so2571156qvk.6
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 10:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=E+cu/QJKN5uT8la7yZxdrY+Jr2Gm5Xc2nC3nhoLTrS8=;
 b=UmeqDr3LtDrnKxoURMJ2NVNttinEbKnApSiJ5hecVmoSYF+NNk33LGrN5gpKI8h1j5
 NiXJ+lhrh+TPUWIb4LPEvcRBR1isgyk+ns6dRIo+rQhYOV84VVRU5WtGJa/n1ANZunRr
 ZX0xqcQdgyCLin0wRfCHP+rag/viDDNJHXdzdvii4YmrQAy6Ciu45C9NL0axmcVXyGdh
 d1YU8KnvVqWruQhsitVxFu/ZND8SX6h0kn9V7+or2/Pio+OBh3jYEKTaof7f1I9RK9uq
 IHamWzTJG2KjHBY7FkUIUgVlzbSeaR7DLnsZvAr6dW9a1ruqJl786deHrrIsohzxo6XF
 w2wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=E+cu/QJKN5uT8la7yZxdrY+Jr2Gm5Xc2nC3nhoLTrS8=;
 b=UzK0qzafX/xF/oDQNIGch4yEMzjtQDU2SknZvxjFH3apqPG+efuB8xzHqpHZ8IwBC6
 so3Aq/y3nqM86CoZKX2Bf1kJ5BPwQyGRcd2ibPENRN4Ei750cHleg+Mqn+zrMCzviVGQ
 0SF+qvv72wEg2BfjJ69kLYSfUA+fxFGJZ4Vt+rHwBeMJBV56CQwClxWZsaSIHuKKa2f8
 2DGis5YhlhgHYe1bwFJ/Qq1DD4akDgAtKajlyJvpJMM06Is4iXH1IdsJE99pJfr1tI//
 hSdWZIpwoopJpWoi7SRbDZWAl6hs6PoGe5GgBf2u14TNMvTWgoV+TjRWkxVjqekusPp5
 ZG0Q==
X-Gm-Message-State: APjAAAV/3b3SHnQ5g0s4MJzepCqOJn4VEXmtZ4kF8rHYY28rot8DUuPj
 62C9DQLyUftgDtCuPOtsFtzBC1DGu7HGlo65HuXOEg==
X-Google-Smtp-Source: APXvYqxm7T6ryNnPOvvufckliHZ/8tFmlEyft2z6YJr6twfkmfUd/0M4VFP/t19+493a+jP4pEDKyHxXqo68wyWg2k8=
X-Received: by 2002:a0c:ee91:: with SMTP id u17mr8846749qvr.22.1579975994183; 
 Sat, 25 Jan 2020 10:13:14 -0800 (PST)
MIME-Version: 1.0
References: <CACT4Y+bg1UKXzZF4a9y+5CfNYRwBc5Gx+GjPS0Dhb1n-Qf50+g@mail.gmail.com>
In-Reply-To: <CACT4Y+bg1UKXzZF4a9y+5CfNYRwBc5Gx+GjPS0Dhb1n-Qf50+g@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Sat, 25 Jan 2020 19:13:03 +0100
Message-ID: <CACT4Y+bckC4k-EpWiCkD+BBo5ypmkcb2g8Axb62LnBbwJjcqdw@mail.gmail.com>
Subject: Re: binderfs interferes with syzkaller?
To: Christian Brauner <christian@brauner.io>,
 Hridya Valsaraju <hridya@google.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, 
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>, 
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 syzkaller <syzkaller@googlegroups.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 25, 2020 at 6:49 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> Hi binder maintainers,
>
> It seems that something has happened and now syzbot has 0 coverage in
> drivers/android/binder.c:
> https://storage.googleapis.com/syzkaller/cover/ci-upstream-kasan-gce-root.html
> It covered at least something there before as it found some bugs in binder code.
> I _suspect_ it may be related to introduction binderfs, but it's
> purely based on the fact that binderfs changed lots of things there.
> And I see it claims to be backward compatible.
>
> syzkaller strategy to reach binder devices is to use
> CONFIG_ANDROID_BINDER_DEVICES to create a bunch of binderN devices (to
> give each test process a private one):
> https://github.com/google/syzkaller/blob/master/dashboard/config/upstream-kasan.config#L5671
>
> Then it knows how to open these /dev/binderN devices:
> https://github.com/google/syzkaller/blob/master/sys/linux/dev_binder.txt#L22
> and do stuff with them.
>
> Did these devices disappear or something?

Oh, I see, it's backwards compatible if it's not enabled, right?

if (!IS_ENABLED(CONFIG_ANDROID_BINDERFS) &&
    strcmp(binder_devices_param, "") != 0) {
/*
* Copy the module_parameter string, because we don't want to
* tokenize it in-place.
*/
device_names = kstrdup(binder_devices_param, GFP_KERNEL);
if (!device_names) {
ret = -ENOMEM;
goto err_alloc_device_names_failed;
}

device_tmp = device_names;
while ((device_name = strsep(&device_tmp, ","))) {
ret = init_binder_device(device_name);
if (ret)
goto err_init_binder_device_failed;
}
}

And we enabled it because, well, enabling things generally gives more
coverage. I guess I will disable CONFIG_ANDROID_BINDERFS for now to
restore coverage in the binder itself.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
