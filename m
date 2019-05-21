Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E50251AA
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:14:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CC2583AF8;
	Tue, 21 May 2019 14:14:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1tJgv3I0KVay; Tue, 21 May 2019 14:14:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1835981278;
	Tue, 21 May 2019 14:14:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B8B721BF4E2
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:14:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B533A869F2
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O9JikLVtoJPp for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:14:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4224886A7C
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:14:10 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id w9so11079306oic.9
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 07:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uRNDr9pcs809VfqKtnwGY1ZmCZnJ35mdhlIjT4jz8dA=;
 b=GEfKlxNGI7sf6J5JN6I8h2DJdSqbWBqRkz0la0iq5adhusTgZkvt4gmuUBj6qs20mY
 9STsHiHzOOXnJkJW/uCo7qsWW3+r7rEaAqFhiD6S8odzTJgt9Y9yY7WuZg7RJScxpexO
 HeoPDvXAiBeDFEwPKY/4vVqQCRsDbJ2La29n2vc2KcQm787l7Eg0bhSXc/iaFttbPf0X
 ZZKHWPkXf2vq+VbVJJ3pCUjOvHPwWCbkX7QXaaNvTFo0zNk+iLeLqtTAWsTihaj2GEp2
 dRcbfCGquHTImCkLrmnODxJyuwA9TlsH2QSUVQP2ECkzDfeHJClS6Mf2q3R6wAQrCZ1W
 1VQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uRNDr9pcs809VfqKtnwGY1ZmCZnJ35mdhlIjT4jz8dA=;
 b=C6mUhO9eprAI50pLhi9Md3Klze/WTWmW+1pdDCIDEHGUaU4uR44oMlTv0lPceLJgId
 6mN71+VCbeMAROT/a/NtE+anIkrdBWIuPKud9BH5EZv7yQI/O7RhZj0jDp5YG4lCIInr
 EY4LWP8z8ZFO4LVa3G3yE7+0zyfD1Kfl/GcLMPxxhOHQ8Bt/Yp4sJZn8xlGVccdlDFNM
 3gFoUfJ0/PW8o0dCcP8gJSqcWb1ME9iYs1Pt2Ghn7Hv5Ba3Ntp0Qadd5MNSJd3wIyzJK
 eIkCDORI3q5qV4LjeZxn1t/pKgo5t7CzbdMITvIeP84ojp4f/t5C+uPnKcqHgaGCZMrG
 4NiQ==
X-Gm-Message-State: APjAAAWq4twZyXdZ7w7XWq9Tv/RvBatMN3wEy6dXlwzItNq/pjH5HWlY
 rKHiFEZZ1fOQ/Cz5aQbEwzVdk2TpVkXgDKA3eu0=
X-Google-Smtp-Source: APXvYqxEOBTq9mA569ONS1VIuYThxyQ2MF+mAavR4dg7z9Ti/qjR9oudmeZr1cDRuNroOKEItLPbP61YTNdia7/WtmA=
X-Received: by 2002:aca:5ad6:: with SMTP id o205mr424929oib.92.1558448049154; 
 Tue, 21 May 2019 07:14:09 -0700 (PDT)
MIME-Version: 1.0
References: <1558115396-3244-1-git-send-email-oscargomezf@gmail.com>
In-Reply-To: <1558115396-3244-1-git-send-email-oscargomezf@gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 21 May 2019 10:13:58 -0400
Message-ID: <CAGngYiVNQrr2nKfGCdi8FzS5UnmGaDj_Gu_F0ZeOTMKX6_1Zuw@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: solve warning incorrect type dev_core.c
To: Oscar Gomez Fuente <oscargomezf@gmail.com>
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

On Fri, May 17, 2019 at 1:50 PM Oscar Gomez Fuente
<oscargomezf@gmail.com> wrote:
>
> These changes solve a warning realated to an incorrect type inilizer in the function
> fieldbus_poll.
>
> Signed-off-by: Oscar Gomez Fuente <oscargomezf@gmail.com>
> ---

I've reviewed your patch and tested it on a live system. Everything looks good.
However, I believe that your commit message could be improved.

I am going to re-post this patch as v3 (keeping you as the author) but with
a (hopefully) improved commit message. If you provide positive feedback,
and nobody else has any comments, I will tag it with my Reviewed-by,
which will hopefully be Greg's cue to take the patch.

In the future you could perhaps run your patch through ./scripts/checkpatch.pl
before you post it? This should pick up missing commit messages, lines in the
commit msg that are too long, etc.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
