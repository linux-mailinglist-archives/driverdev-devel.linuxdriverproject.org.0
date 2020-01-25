Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09202149707
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 18:50:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87E5286974;
	Sat, 25 Jan 2020 17:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLmncK-mItVn; Sat, 25 Jan 2020 17:50:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F63F84C63;
	Sat, 25 Jan 2020 17:50:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 843441BF33F
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 17:50:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 80F5F85F58
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 17:50:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z2jtAXnhxsI6 for <devel@linuxdriverproject.org>;
 Sat, 25 Jan 2020 17:50:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E9EC885F0B
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 17:50:01 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id h23so5524054qkh.0
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 09:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=3muEsSJhzMBr6bStz5/aZm1+29dYJOpxSAbwSPEf1Ns=;
 b=AXekawrU0Zv983Cm/0OdaLaIjCisK1FlyFq+FVw286xO2CaPlpYXJO1nWfkK+JTqri
 xqrGkxIB9SdvcYL8+3aM876Lw7DSxI/WYF5W2tIm2K1Yj/dwUTOSmbAXn9h/pFQA+1D7
 qMaBcTZgdMfuIMDbW4gsQxuKuUU262kQbCk+iKYQFRwOs9jz/ZlByY88LByJerZIZCt3
 qfWJBDKE5+JLhPuR/JdFa0VZi6mMWC+3aSqz4F0DMBC7WgxMEQCvsu6xKtmV3StZIvFC
 n0CizVBKRHEv9x5Zs/DdAasAXg1ViPedd9cH2V5HJeAOuV7g013/GQb2Q0CIOPwYBAsU
 qjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3muEsSJhzMBr6bStz5/aZm1+29dYJOpxSAbwSPEf1Ns=;
 b=RJFUYDRvKVcmIJICVEClOSi1VZF6QWjikYBci3xhociOK6kPJAtWzEnS0qwuvz03tF
 zbT2H+SJbwKaqE5DkugmisrW6HzhuzD9SSb3EX7MrTGKgRUxPenGHHguX7q2I7YOt2Xr
 YGD3jC7YzO0wnImurD8Ds6jzIfo5D8dAnIA1rXTezb4R5gSdFpEGQNymopfDGhb0KizA
 75RE2AoN843wJBpCZzDtlkjzdM1V8X2oF72CYDXcOo8wparqhOyp5WbFV2VP04p/GVza
 Jo/z7k4i3H6oTXWrrXJq7q4A3xiNzseN3ml8CvznbmXjaalyEbV8hkpDmBO7+AhiOMAN
 T3Bg==
X-Gm-Message-State: APjAAAW4fVYDnbsQ6kc1xAwcLWE9rA2BRCaOAnrEoyqdnJ+/iWAoR6KC
 Wd1F3ijz+SmIp4u1HeCPu8Y5oL1vxc4blBOgFc+V0Q==
X-Google-Smtp-Source: APXvYqyuHRUV3EEiPIwNqXVWDHTD2j7oGUIxvgQxvkPsaqpwREVxmwDFmJUNlxddrAEetn2QRgCkSU7kOgkWwBmq7GE=
X-Received: by 2002:a37:5841:: with SMTP id m62mr8660237qkb.256.1579974600650; 
 Sat, 25 Jan 2020 09:50:00 -0800 (PST)
MIME-Version: 1.0
From: Dmitry Vyukov <dvyukov@google.com>
Date: Sat, 25 Jan 2020 18:49:49 +0100
Message-ID: <CACT4Y+bg1UKXzZF4a9y+5CfNYRwBc5Gx+GjPS0Dhb1n-Qf50+g@mail.gmail.com>
Subject: binderfs interferes with syzkaller?
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

Hi binder maintainers,

It seems that something has happened and now syzbot has 0 coverage in
drivers/android/binder.c:
https://storage.googleapis.com/syzkaller/cover/ci-upstream-kasan-gce-root.html
It covered at least something there before as it found some bugs in binder code.
I _suspect_ it may be related to introduction binderfs, but it's
purely based on the fact that binderfs changed lots of things there.
And I see it claims to be backward compatible.

syzkaller strategy to reach binder devices is to use
CONFIG_ANDROID_BINDER_DEVICES to create a bunch of binderN devices (to
give each test process a private one):
https://github.com/google/syzkaller/blob/master/dashboard/config/upstream-kasan.config#L5671

Then it knows how to open these /dev/binderN devices:
https://github.com/google/syzkaller/blob/master/sys/linux/dev_binder.txt#L22
and do stuff with them.

Did these devices disappear or something?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
