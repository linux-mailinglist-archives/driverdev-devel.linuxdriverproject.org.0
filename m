Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7281DFABA0
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 09:04:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BED0987587;
	Wed, 13 Nov 2019 08:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BzAMiJigzkVq; Wed, 13 Nov 2019 08:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E5BF874DA;
	Wed, 13 Nov 2019 08:04:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1CF571BF2B1
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 08:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 16CC987482
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 08:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mK5OLbHxRLpH for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 08:03:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3B11985608
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 08:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573632238;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aWcZWJtzdppcM76KohD37mlvGtsiTZ4jS7DFNLMCC7M=;
 b=NVSO4I6pztLVBGV7cNpmSLtvyvv0HoUM7FmlZb/NtwKM6sc2OkZpwjqWyfnKnYTt88SE5E
 T0rq1rN+1RZVBTYTQVlB1zD0+mnwlfRYgM97oIT/r4H/hcTV1HIVd51z4w760h4VA8tcPj
 FT6isbRsbAqX/AXCbHXfOs9ato/SPkc=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-VWdF1_HpPkuft5ySB3As2g-1; Wed, 13 Nov 2019 03:03:56 -0500
Received: by mail-wr1-f70.google.com with SMTP id y3so1126782wrm.12
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 00:03:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uO6TAe5CY3chuTGSu2TisEgi2TBlw5xURmLltnTdu2U=;
 b=DVVrc1o69TR4P+HqRKar7ZoPvol17Vc5MjO96fnk38iV6tEqhj4tzQ7ymqBAnHSXpr
 2l6v8VF+eLTSQOVYTL2oqFbIwBKP/rEgI5CpduhgRwE+uhJrf1H+f/8IkNXjx9sADVwu
 7MnQUun4LS/gmv26wu2yEC+HoU/ANZwtA6HGWO8/VbF0Zc9pjgFCFMjnbZdnhxes4asR
 gybphT2NL6TpvWM2P6fAJc9t3CrPfYznnBsa0Kr3UNbi9BeML4y2tvNqXFuS/b6nvyAk
 VRNbPhl0KhhmzYgE135ErhfK5Lvcvbo8rRs7n5kcOKSZING9OBW871JjoP1vLtK8OjYT
 XO6A==
X-Gm-Message-State: APjAAAW4hO9c5eJjDMdY37jCce3cC9wfAooZomQrHOpk5qI4+vxi9DxF
 lXsJTzhNQXR5YcDriz3/BXwKzsHj32l/bE2waoQPzkz1VgrhECMiWK7Z2uVN2QfRRzBAGjLSQpf
 WxaeQ6R/fFOXJVw675Sle9ylh
X-Received: by 2002:a7b:c055:: with SMTP id u21mr1522369wmc.55.1573632235400; 
 Wed, 13 Nov 2019 00:03:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqxdVvtKiYmZt1fSzZA8kPfb3J2pg0i+JjNFD/a5EyFATv6YGKKR2tWjoIt78oPPlSoqWsctkg==
X-Received: by 2002:a7b:c055:: with SMTP id u21mr1522332wmc.55.1573632234803; 
 Wed, 13 Nov 2019 00:03:54 -0800 (PST)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id y6sm1887805wrr.19.2019.11.13.00.03.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Nov 2019 00:03:54 -0800 (PST)
Subject: Re: [PATCH] vboxsf: move out of staging to fs/
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20191110154303.GA2867499@kroah.com>
 <20191112063440.GA15951@infradead.org> <20191112065629.GA1242198@kroah.com>
 <20191112225427.GA1873491@kroah.com>
 <CAHk-=wiLZpyGyOcymND-Pk7_a_MXHZHJtsT9TryHmZBE7Babiw@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <f7e11836-8f90-4ddf-1c81-4d49d35d91d6@redhat.com>
Date: Wed, 13 Nov 2019 09:03:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wiLZpyGyOcymND-Pk7_a_MXHZHJtsT9TryHmZBE7Babiw@mail.gmail.com>
Content-Language: en-US
X-MC-Unique: VWdF1_HpPkuft5ySB3As2g-1
X-Mimecast-Spam-Score: 0
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
Cc: Christoph Hellwig <hch@infradead.org>, devel@linuxdriverproject.org,
 David Howells <dhowells@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 13-11-2019 00:12, Linus Torvalds wrote:
> On Tue, Nov 12, 2019 at 2:54 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
>>
>> Christoph, this is what you mean, right?  If so, I'll send this to Linus
>> later this week, or he can grab it right from this patch :)
> 
> No.
> 
> I was unhappy about a staging driver being added in rc7, but I went
> "whatever, it's Greg's garbage"
> 
> There is no way in hell I will take a new filesystem in rc8.
> 
> Would you take that into stable? No, you wouldn't. Then why is this
> being upstreamed now.
> 
> Honestly, I think I'll just delete the whole thing, since it shouldn't
> have gone in in the first place. This is not how we add new
> filesystems.

I understand you being unhappy with this.

The problem is that Al Viro, after an initial review around v2 or v3 of
the patch, which I believe I have fully addressed, has been ignoring
this patch / new fs for over a year now. I've pinged him repeatedly
both via email and on irc, but with no luck.  I guess he simply is
too busy with other stuff.

I did ask other fs developers to review and have gotten reviews
from David Howell and Christoph Hellwig. I've addressed all their
review remarks and I've had reviews of the newer versions with
just a few nitpicks remaining. I've also addressed those nitpicks.
But I never got an Acked-by or Reviewed-by from either of them
on any of the newer versions.

I even talked to various people about this at plumbers, but
I did not get any traction there either.

On the advice of Christoph I've asked Andrew Morton to take this
directly under fs/ instead, twice. When this all went no where I
went the staging route, with the current result.

So for 5.5, and assuming I can get David's and/or Christoph's
Acked-by, is is ok if I send this directly to you?

Regards,

Hans

p.s.

Christoph, David, can I get your Acked-by for the latest
version of the patch (v17) ?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
