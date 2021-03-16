Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 526DC33E195
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 23:43:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B87244ECF7;
	Tue, 16 Mar 2021 22:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6bFvZYdtH2M8; Tue, 16 Mar 2021 22:43:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35E494ECC0;
	Tue, 16 Mar 2021 22:43:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F408E1BF47D
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 22:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E416B605D2
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 22:43:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vd93V_lzBcyf for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 22:43:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D9EC605A9
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 22:43:00 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id a7so38958795iok.12
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nuo8qs2E9bNWxjIOzW3JTgzm3d5Dfp8vsCU/3Qa6t88=;
 b=O+WCe1p3rgOaS++9BFjpMM82u4k7HgZ+tUtI8/i7C8wSfTxjTLsES0Kwkc6Pyjmpn3
 V+XwqZKcNmpEQ7jeuhuhQMg7zAY31el+OvxW+w6pF68n8+cR4tjnLxB3AwSJl4JMv9nV
 RKhkbQBQIW/YcSLxl8rUxG/IkkTQ803Ah4muvFR8flWOBL0OASSryQS5R0SjwEBJsOvM
 A2KaWKRKkxK+QLFuXgHs1MlmwoIk/esovp+dj3tcP+7m1uMzBvwWExTnRAz7NwOrM6bX
 2+bTjqSTIk3HTqbjYp4UruBs0BAr4d0nHSdq4GgyVKXWxCHwjJO1251FKLd61uEIty9q
 UmKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nuo8qs2E9bNWxjIOzW3JTgzm3d5Dfp8vsCU/3Qa6t88=;
 b=QSo9uJx1F2ZWkMYP4RyXNRF2//qexekklVs9TfIskXuTMeQUZRtFLdseKqP5Bw1xvy
 X0PA5EvFAA4q3qKVoPw5lu9/ISL96uM6Owhf/nSoRPfeFXFS6P22hA0DdSwbGw2JM1e8
 skSbs5q2l3OVSX4y9g31pFrkcfFHQRYHUo6I6a4kgykopWFyG4tWd6CzJav6y6+uh3Is
 pr6gcv/4Skt6Ca0+ZGjqIJdo324CaZAeQEPFp1N7AhjOXsy2l/h+ZgBtZ5Je19g86l+r
 EvNI05Q0jDGlBC7L7r+MqUC0JKXn2DNtw96a1KDY3tKtHEd6OGPbkQ6KeH/q5jDFaBsu
 Q3MA==
X-Gm-Message-State: AOAM5301et4hJU7GcJ26KCsehXUC1t4loNkSKxlTzAF0QIZlGgMxn15v
 7TsyiJXMMriuCVt0MrjhZzCaBe0jCCbskxflHcc=
X-Google-Smtp-Source: ABdhPJx3/3mIcSknxKnXWI34tD0kNGwm2EmFMjsjAb/RBupR9xopS7fIkQrzcy1z1BPPkjm5n84JKv4+1daF4b+snkQ=
X-Received: by 2002:a02:ba13:: with SMTP id z19mr669975jan.131.1615934579422; 
 Tue, 16 Mar 2021 15:42:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210314035757.2740146-1-ztong0001@gmail.com>
 <5d7a5e1c-35ab-58cb-ebcd-da5b280c802e@mev.co.uk>
 <858341a6-c105-1440-aa4d-ea0217f2ec89@mev.co.uk>
 <CAA5qM4AJRYndkXSiW5Y4OCFcH97mf6UiiEEox+TQs8-N957mJA@mail.gmail.com>
 <92b7c57b-b645-9965-8157-4ca76a803cba@mev.co.uk>
In-Reply-To: <92b7c57b-b645-9965-8157-4ca76a803cba@mev.co.uk>
From: Tong Zhang <ztong0001@gmail.com>
Date: Tue, 16 Mar 2021 18:42:48 -0400
Message-ID: <CAA5qM4BKu-KAc8=S14us5HvgYqB6G6DKzF11ESho8zzMe73VCw@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: replace slash in name
To: Ian Abbott <abbotti@mev.co.uk>
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
Cc: devel@driverdev.osuosl.org, open list <linux-kernel@vger.kernel.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 16, 2021 at 6:37 AM Ian Abbott <abbotti@mev.co.uk> wrote:
>
> Thanks.  I think the only other Comedi driver with the same problem is
> "drivers/staging/comedi/drivers/das800.c".  It passes dev->board_name as
> the name argument of request_irq(), but that is "cio-das802/16" for one
> of the boards supported by the driver.
>

Thanks Ian, I think you are right, das800.c also shares the same issue.
I have sent a patch for das800.c as well according to your comments.
Best,
- Tong
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
