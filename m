Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7D1231A02
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 09:05:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4EF2E8618D;
	Wed, 29 Jul 2020 07:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MTLFeu0jwXjA; Wed, 29 Jul 2020 07:05:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F2E08578B;
	Wed, 29 Jul 2020 07:05:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 484D91BF589
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C6C08800F
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id moskPdhNVvi9 for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 07:05:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB04B87FFE
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 07:05:30 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w2so13752271pgg.10
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 00:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aqneD3uac2LdOmEkTebU7/iHb0Bb9C+xYvrOoegSBgs=;
 b=Lh3i7c+OL3d+WLkPoNum5UxxmjDrhR7GDKRz6sULoHyatpZS2MPkG9So13ntBRx7vY
 Ceyk6+qTG/biB3GeJ1fr+xMwbIN4uXvFksnueRi9RYeLaWN+wdeq+on+DX4NjbbKTfqZ
 vBbQeTn43whAKfi8uNc4FsePsP8Q0l7xpi9kB2fRfzyYHKP7/VNfmBXFktwyafjt0lqx
 cLSkpuZAewmbzaJhUhkGHDN6rzOrclI5xZMHEmAdzGmC0iB+knOpFr3FI73kM0KbaXvn
 /SRU8m1xO/bi525c8tfsyb7nRtEZrLShkV2cqgd58TE8OK+v0ZNZUBcbFeti8CIp87GY
 sakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aqneD3uac2LdOmEkTebU7/iHb0Bb9C+xYvrOoegSBgs=;
 b=YLlXTnrwWn7ZB7iCrNekUCTRFzrW3oZItGUIJhwalG+PDAtIACTwod7WgG9SOAFWVy
 EOiFoIH67XK9LGpznNunF5TFZly0AmsfbiSnbsNgMVgTA4z1WFa6XOzlwEErhX3gvgGf
 2dsyNhh2P82Uf5c7rqlK1gT5LZdUnx778eMGQ5pzQMnbsBcc8b/L61YkGyIn6wfR6/hA
 0m0uShL7Vu5CgKY5hFAInzQIZeUITnNNsgzgz8IOca6zz5eY+38E1Sy3hgzJaSyClBJw
 iouXAB7WsxJv+fMb1yy8zi3qnXpehTuwpqClCRXIp/4CzzDYD6RtcCeSrzwUTNDe/uLB
 M5pg==
X-Gm-Message-State: AOAM533nHIid3jOrvmjYUGALm0iVfTUoMxh5gH+rNxmJzdGMa8C2ZLI5
 iv/iWop6/8zjlmAVoCvT+xIb2I1FzfaLbxcy2UA=
X-Google-Smtp-Source: ABdhPJyk6o8rBmKoUdAMTmnz/y0G9FAdd8Efbgcb4Gh9SbYuQB7jrAq58GKL82gQqlt6ZSrBU6EBHu/xHQRRLV+ACfo=
X-Received: by 2002:a63:ce41:: with SMTP id r1mr28668169pgi.203.1596006330322; 
 Wed, 29 Jul 2020 00:05:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200729003243.32097-1-b18007@students.iitmandi.ac.in>
In-Reply-To: <20200729003243.32097-1-b18007@students.iitmandi.ac.in>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 29 Jul 2020 10:05:14 +0300
Message-ID: <CAHp75VcmMf5dt7mu9N0C=6Rej-WzZ0EpzntHYCQkgNLVZkPbgg@mail.gmail.com>
Subject: Re: [PATCH] Staging : iio : Fixed a punctuation and a spelling
 mistake.
To: Ankit Baluni <b18007@students.iitmandi.ac.in>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-iio <linux-iio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Meerwald <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 29, 2020 at 3:34 AM Ankit Baluni
<b18007@students.iitmandi.ac.in> wrote:
>
> Added a missing comma and changed 'it it useful' to 'it is useful'.

Please, drop spaces before : in the subject line. In all patches you
submitted there is such an issue.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
