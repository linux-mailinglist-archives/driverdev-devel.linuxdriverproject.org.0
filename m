Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92480107D3F
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Nov 2019 07:01:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55EA888269;
	Sat, 23 Nov 2019 06:01:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i4TRhI1gMOtd; Sat, 23 Nov 2019 06:01:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E97A987EFB;
	Sat, 23 Nov 2019 06:01:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4EB391BF471
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 06:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4BBBF87199
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 06:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QT-lmKJzMH0L for <devel@linuxdriverproject.org>;
 Sat, 23 Nov 2019 06:01:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 952B88716B
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 06:01:09 +0000 (UTC)
Received: by mail-qv1-f53.google.com with SMTP id i3so3803870qvv.7
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 22:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ahj9o4u2FmOX1aJ3j4WZUOMhe2lFYWx8l/ZSBaMAUc4=;
 b=pkBXhAoa1+xKLxEf455jTuc/cN8MbIKyXJeommLqt9fHThlXnEw2kYL70vWZPMuM0f
 OFHgX2lQxra6W2Ax9FWAZQcX84Zdq4O0oKRSBHIRODrHsT34R9PnMqTGFxYyMvqNMtGJ
 iIIh8yhRi0Ak7l7jcB4M1KcYlBq27aixXBE+BBIuPp7xZSG9eIu2pIJVANMlxTwyDi6M
 SEJ8xagJcAzGQvO9o4AJX4aecckC7K68zpyrtdpO9RpI8+5gOuHApBEd5JtGGe4P3Bit
 ZNcv3PQHN4lcDuk319Sxl/hbTn6UcJziwEPNZmv2fkpPG9k9gfhgAGYUnkNkzNnM4l9x
 2LYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ahj9o4u2FmOX1aJ3j4WZUOMhe2lFYWx8l/ZSBaMAUc4=;
 b=SC8zwg7WzB50j4PfO/Y8I/SDjmKoi/uUBYaDqI4xPyrE9BS/2aO+bBKkwdB/4zWncH
 cBKrSUgnkvZUmbmsi3GxqdF4cmLDUNL06bAcTiMRcfMffahpg+fEF3pMf99tTfyb6gFw
 yyoZJlU6peSKuxV3cdub8Wxr0k2Qb4yYHVsQWktLARADMnXPrjPoSn4O4mRq77n1SwDD
 ajXDPMR/ibFVQ0FEfOuBEx/JEqxnfRX4/g2EPPqBOZRex0VXVqRj3G89oRjZdm9exzKQ
 m+c4h1jsjzVo8TQZR7sWbY7NJpweJAj9QLEZScmT2e9yaDjKaZmfHS0RJ4kUegb6QpHq
 3b5A==
X-Gm-Message-State: APjAAAXhRTSr1jBCq9bGfDfRUHkF7B1+W/PGksxS1c4ePo1WDcKua/Kk
 hRPceDDbQLA8nhQUKCwyIzBH9CjVvK1K1yxoei5hMA==
X-Google-Smtp-Source: APXvYqwKgr7cycYyZ1kPtuh2BQPt+WrQNSX6vut3UGbhfIN8eqqOluy0q/eIY+oc4WE38iQC3VMsOrB+tvF6SgJyvSY=
X-Received: by 2002:a0c:b446:: with SMTP id e6mr17797433qvf.159.1574488867337; 
 Fri, 22 Nov 2019 22:01:07 -0800 (PST)
MIME-Version: 1.0
References: <20191122113205.GH5604@kadam>
In-Reply-To: <20191122113205.GH5604@kadam>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Sat, 23 Nov 2019 07:00:55 +0100
Message-ID: <CACT4Y+ZAbRY3qNR7V7me90mv8e5-9v9YOv_McjOVZX=hqLBTVQ@mail.gmail.com>
Subject: Re: monthly summary emails
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 syzkaller <syzkaller@googlegroups.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 22, 2019 at 12:32 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> Hi Dmitry,
>
> I help maintain drivers/staging.  Would it be possible to send us a
> monthly summary of outstanding staging bugs?  I never remember to check
> the website.

Hi Dan,

syzbot does not have such functionality. Maybe you seen +Eric's
emails, but that's purely manual effort at the moment. The issue to
follow for pings is: https://github.com/google/syzkaller/issues/550

But I am not sure syzkaller have any good coverage for
drivers/staging. In fact, now looking at coverage we report -- we
don't have any (except for android/{ion,ashmem}). So if you are
interested in drivers/staging quality, the first thing would be adding
syzkaller descriptions for code in drivers/staging, see:
https://github.com/google/syzkaller/blob/master/docs/syscall_descriptions.md#describing-new-system-calls
However, if the code is written in a way that makes untestable without
actual hardware, then syzbot won't help. But this also means the code
is not unit-tested and unit-testing is generally higher priority than
fuzzing (fuzzing is meant to find trickier bugs in a way that makes
them harder to debug and fix). If that's the case, then we need to
make it unit-testable/testable without hardware, which will ensure
some basic quality and will also open the road for fuzzing. Sorry, no
magic here...
Kunit may help with making code testable, see this for our recent
experiment for faking hardware:
https://groups.google.com/g/syzkaller/c/QyexLE6M3kM/m/Hwid5kk0CwAJ
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
