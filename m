Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EB5D9C16
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 22:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58CD187A60;
	Wed, 16 Oct 2019 20:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iXIFv4Z5YRq1; Wed, 16 Oct 2019 20:57:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23FF7861D5;
	Wed, 16 Oct 2019 20:57:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 611961BF44C
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 20:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 57DB987847
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 20:57:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0xJGh34QzYWj for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 20:57:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 37D18861D5
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 20:57:37 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id s22so21407387otr.6
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 13:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7F3t4mmhDE8ixnMSKJSDcwBYSg3PtJtG1XKYlXjWBAM=;
 b=sGS7IWL83SNs2b06NBPjGozNIMJ0ucyn8Hd8Y4cAwPgMczJ60ZA1b5nc5wMdJvUMBj
 zqfKDcQyCJxOn2R6qoOczvkVwkrfgyS7h/c4AqzwQJV3fhdxKLOJdjLckajre5ijVsT+
 t265ztYGPJABuZG2Z6ci+Sc/N98ULuCEPkYKpq8UFsdFwl0YjZLJPtYKQEhoWNKty4O8
 P1SwtzS8nK2sBHaeYi0W+rFl+waqxVUAxD/jDPvsYDCPNjqE247WxG7XMbT4YxgpZysk
 u0grysmWCETj0uitZ9z9fcsnBGw/hd1kBCjgE4IGNot7+HHrJHjHDw0A8/YXbmb1kbGr
 m0uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7F3t4mmhDE8ixnMSKJSDcwBYSg3PtJtG1XKYlXjWBAM=;
 b=PLAJnZg291meBwmgdpiCK2Nejc3oMwd690hZmWIm8YjXaqGDwspdD7HrDJOzoDuYBs
 n95PIjPsBRNo6v1TOs0+dA7352Dl+JynGuBCkTBes1xwjh1j7YMkdnVOqP1yKqJgo30s
 l+Q8FKITLrXWLHNnFEz05PEUd01wRY0nO1/DWNSCtkR+n/l/QNb802ELB5khL3ISYW9W
 mm8rVBrSuEf3ypkJTv9F6K62gBUvvkfy/bh8bsxlWiH9o9CbGnbiuwTFGZayTnnhSsfM
 8G1gdHF78Z7NrZ0q6i+pnrkOapPZLV5UzWwiTFUdWLgqb+a4rLp2p0SvRmIA98AJvwxF
 IIEw==
X-Gm-Message-State: APjAAAWauDKhIm+66d7DcYDsDrQEggXVJbMF/q+eO44l6tKUl00MXPJi
 6Iy1bOpGUiMPAQaKYWzwRJ3hc80B4BL9n46dSms=
X-Google-Smtp-Source: APXvYqyjZ/iqnzMUstA7vPTcPNh3dR6SeWebY8/qLXqXIzIzulatBUPi2w68bHznzNY6ol24EyDwbSqlb96U1q5cyO8=
X-Received: by 2002:a9d:ea8:: with SMTP id 37mr191156otj.224.1571259456107;
 Wed, 16 Oct 2019 13:57:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191016085016.23676-1-yuehaibing@huawei.com>
In-Reply-To: <20191016085016.23676-1-yuehaibing@huawei.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Wed, 16 Oct 2019 16:57:25 -0400
Message-ID: <CAGngYiUDYVX8wdBRnDFhH_9buU4-0L8V6R0FGBd29656Ni16Zw@mail.gmail.com>
Subject: Re: [PATCH -next] staging: fieldbus: arcx-anybus:use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 16, 2019 at 4:50 AM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)

This is a duplicate of hariprasad's patch:
https://lkml.org/lkml/2019/10/8/525
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
