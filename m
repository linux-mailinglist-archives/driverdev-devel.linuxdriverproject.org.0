Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AB3C38A6
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 17:13:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DC3C86A48;
	Tue,  1 Oct 2019 15:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4YsDzj94l1lu; Tue,  1 Oct 2019 15:13:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 18AE4856C8;
	Tue,  1 Oct 2019 15:13:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 90B2B1BF3C1
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 15:13:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 86DC886111
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 15:13:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FtbL8DVE3-ae for <devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 15:13:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5704185E7C
 for <devel@driverdev.osuosl.org>; Tue,  1 Oct 2019 15:13:25 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id y91so12234549ede.9
 for <devel@driverdev.osuosl.org>; Tue, 01 Oct 2019 08:13:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=N2FlzG+PxQCjT3jm2D3Aa1IldYkDzjEnGNfZ4YLjVII=;
 b=JfsMeHPhpWcYg5ziZDFvD5zS1FqKL73t2fOOl72Y/du/im3gOS+a4CEpnBFu8Tg9KC
 SqtL/Ne5Qp6FJvFefcOA2EyoKbcApOYXIGZRPmFvUHNbX2epKB9WB31Xi3bjdv7ij8iw
 Z2tfZteEl+/iJZfNLM4TS23BW4M8IMcnxG/InwdzXr4fwJv34oRoPXcXwL5IFPyi4No/
 N/b0DCfRHrdWMV21+Plso9zHQGLkKI71XSykWY1gFxiNpLJcKRAcsijzuR2aw6RnsNSo
 eErKa8cB9ShVy8g1P2E2/Y4uJeWX/XQbkRfELhMqVldLndDJvJonw/3GvTgPveZ7Nh5v
 rHsw==
X-Gm-Message-State: APjAAAVYyneRLFpbxQCPGiG1oDe7j6vygCmEJZOuKwtojcQCLGZcUtE2
 fsHp7M1v9Q364sJks0Z3zts=
X-Google-Smtp-Source: APXvYqxyVJmic1F+7fZfFZQAxNcXMB5Z/ocNdDnPHOVjj8h1tH2nOU0MyL/PgaJMMnw3AF2+JFzzgw==
X-Received: by 2002:a17:906:7802:: with SMTP id
 u2mr15475439ejm.3.1569942803627; 
 Tue, 01 Oct 2019 08:13:23 -0700 (PDT)
Received: from [10.10.2.174] (bran.ispras.ru. [83.149.199.196])
 by smtp.gmail.com with ESMTPSA id gl4sm1878601ejb.6.2019.10.01.08.13.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Oct 2019 08:13:23 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
To: David Laight <David.Laight@ACULAB.COM>,
 'Dan Carpenter' <dan.carpenter@oracle.com>
References: <20190930110141.29271-1-efremov@linux.com>
 <37b195b700394e95aa8329afc9f60431@AcuMS.aculab.com>
 <e4051dcb-10dc-ff17-ec0b-6f51dccdb5bf@linux.com>
 <20191001135649.GH22609@kadam>
 <8d2e8196cae74ec4ae20e9c23e898207@AcuMS.aculab.com>
From: Denis Efremov <efremov@linux.com>
Message-ID: <a7c002f7-c6f2-a9ed-0100-acfbafea65c5@linux.com>
Date: Tue, 1 Oct 2019 18:13:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <8d2e8196cae74ec4ae20e9c23e898207@AcuMS.aculab.com>
Content-Language: en-US
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
Reply-To: efremov@linux.com
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Jes Sorensen <jes.sorensen@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 Dmitry Vyukov <dvyukov@google.com>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/1/19 5:36 PM, David Laight wrote:
>> From: Dan Carpenter
>> Sent: 01 October 2019 14:57
>> Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
> ...
>> That's true for glibc memcpy() but not for the kernel memcpy().  In the
>> kernel there are lots of places which do a zero size memcpy().
> 
> And probably from NULL (or even garbage) pointers.
> 
> After all a pointer to the end of an array (a + ARRAY_SIZE(a)) is valid
> but must not be dereferenced - so memcpy() can't dereference it's
> source address when the length is zero.
> 
>> The glibc attitude is "the standard allows us to put knives here" so
>> let's put knives everywhere in the path.  And the GCC attitude is let's
>> silently remove NULL checks instead of just printing a warning that the
>> NULL check isn't required...  It could really make someone despondent.
> 
> gcc is the one that add knives...
> 

Just found an official documentation to this issue:
https://gcc.gnu.org/gcc-4.9/porting_to.html
"Null pointer checks may be optimized away more aggressively
...
The pointers passed to memmove (and similar functions in <string.h>) must be non-null
even when nbytes==0, so GCC can use that information to remove the check after the
memmove call. Calling copy(p, NULL, 0) can therefore deference a null pointer and crash."

But again, I would say that the bug in this code is because the if condition was copy-pasted
and it should be inverted.

Thanks,
Denis
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
