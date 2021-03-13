Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40D3339F7E
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 18:30:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E53942FB5;
	Sat, 13 Mar 2021 17:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igqIbod7GZHC; Sat, 13 Mar 2021 17:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F5A4400C8;
	Sat, 13 Mar 2021 17:30:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1EF381BF573
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:29:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1ADDF83B8C
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:29:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=pesu-pes-edu.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jTMhfJZRT_x0 for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 17:29:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BA5783857
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 17:29:56 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id 16so11284892ljc.11
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 09:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W8/ZqRimIZXL8XV0u7uTNkqvk5KPzGIzddjDweiRDXo=;
 b=P9WTtdMNa0CWZ5ayjKe40DAwjZ63NVvaPogV3EnJn/dvHmM4cYJ4Z+O1HlcXBZBzLv
 LuunhEHQRkddviwQqzFjjTKX37ODSxWyoAJTmxIDdcMrqHlQo2a0k9BPUJ4vuPI7m3z1
 uu96WqbE8iS2NrWx9mXxYE41MGyvHjk2/SdFQGv30XL9FZS2v5XoMb5lLa1jf30qIuJM
 gpmZXDF/mhyb0sXIrfl1OuFNnXMcv7+QvhuKzJ6SKvqj3L34KQMfN75MU2mkzhtj4Yes
 qqXF45Uz/S81ENzc9M6CSfB35vDPP8nSgriDLLHDfJMqUZmojTPAzvo+Z75m7rFncFPJ
 m78Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W8/ZqRimIZXL8XV0u7uTNkqvk5KPzGIzddjDweiRDXo=;
 b=PP0PfiRHYdAG5mUWM4CaWrCu5RYCXzIuBH0Q03pa8ANBoRWL5qk8jrge/8M600RzKc
 ihtON2hatFEvq0YylWQtGIoAQjzTZukmII/So6ZGm6pfzw2hoebZsOlWi3oqmo5H3JT0
 2j/21esmIR5JrunwfTc9O64NGXFqrwdcb3PkPC/OYluvo5uPuGdBeMb262NMxn8Ms8PV
 2G/IVZ7ME+XgdIB5ObDaVQFI7FacOm7MwpdNwpzuBuYzgBL3vw/tH2S577C6XwX1xqrY
 oyDBl/Ul/jqCINNZ/A/02u7Q44oFqbrCfSNKw1GW1SMgs+ujuDGQo/JgYNytH6Jt2RJJ
 yeAw==
X-Gm-Message-State: AOAM530Ktnbq6jS26yDybe+FjoNXBMHvyWWetJN84i9llNTLeQr6rvWB
 mI6gp5WHcvbzf63Yn8J0fGQqg88I8rCYzJx7TYtR0w==
X-Google-Smtp-Source: ABdhPJx34Izjf569iB0XLsQokLPZ5x3IE3QYrlffB1k0IJ7CMv6pmigJD1vXTqTcjOvYIqKVe0Nm0voqmtD8PSzNdWk=
X-Received: by 2002:a05:651c:1022:: with SMTP id
 w2mr5474953ljm.455.1615656594623; 
 Sat, 13 Mar 2021 09:29:54 -0800 (PST)
MIME-Version: 1.0
References: <20210313172636.18234-1-namrata.janawade@gmail.com>
In-Reply-To: <20210313172636.18234-1-namrata.janawade@gmail.com>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Sat, 13 Mar 2021 22:59:43 +0530
Message-ID: <CAAhDqq31B6ZJmmrUeqTD7u9znrCNScc37SBR_4N=DBthu3iajA@mail.gmail.com>
Subject: Re: [PATCH] staging: andriod: ashmem: Declared file operation with
 const keyword
To: namratajanawade <namrata.janawade@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 anupamakpatil123@gmail.com, LKML <linux-kernel@vger.kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 13, 2021 at 10:57 PM namratajanawade
<namrata.janawade@gmail.com> wrote:
>
> Warning found by checkpatch.pl script.

That doesn't tell what you did or why you did it. Please write an
appropriate commit description and resend the patch.

karthik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
