Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C142732F34C
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Mar 2021 19:55:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B106640004;
	Fri,  5 Mar 2021 18:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ykcJkO3fPFo7; Fri,  5 Mar 2021 18:55:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AD8740002;
	Fri,  5 Mar 2021 18:55:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 434071BF34D
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 18:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32A8A60653
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 18:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 61PF4leVEhXF for <devel@linuxdriverproject.org>;
 Fri,  5 Mar 2021 18:55:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A418F60635
 for <devel@driverdev.osuosl.org>; Fri,  5 Mar 2021 18:55:29 +0000 (UTC)
Received: by mail-il1-x12f.google.com with SMTP id g9so2954993ilc.3
 for <devel@driverdev.osuosl.org>; Fri, 05 Mar 2021 10:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wTEQ3liBaU2QUGIl3WUEaeyjObjubIWkSzWM7RalQH4=;
 b=uWPUA5bcT2kgl7CfVs+cz7k+i/utjJ8Kx4lwYEBIdDXWbRSepO5yGt3GlTDJZj29i7
 7jPN/XQgkjXzkJ+GdtNWQ9/wJ+X9opo6Co1qrx3t6LvzkE8PUphixqpJGoiYbqBLV9iL
 Vs7i+GN57PjZTmDDr0FywG502N+nV1StSMfljsm+5uqP4x1i+ZfYLr0DhC0cI6LdC1fU
 1kgeax+xHzvqH2em7fojG6AcfkHf1u+IYnbCbLI6ZPVA9JfvSFKu19T5TZ7gf/HCy/ye
 UN5STA0kCZUMC+Nu8++S7oze9fwx5sq+Oj7HLEH9CeTZce2d3u9oaLBbd7UmlvYgPo06
 nOhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wTEQ3liBaU2QUGIl3WUEaeyjObjubIWkSzWM7RalQH4=;
 b=p9KD2gbU6X/jRsEL5dtvNw1ZPq0nvUAn0cCQMwF04If0OQNVyI9qDEu+dH4N38E0XG
 4NJ9fS6qECKxvf5g/CiF1McdcLDsLU33TLdywA3dQq5kpKPY7RpDpcXyI69hbcziBsoa
 DsxFVFZ1PZvfGN3gT4LKL02Z7RMSMQMoZAFN+hvbE8JPn8BbmxFWafQAND9UW0qp0FsA
 duXWsZia+ubjHBsTlYdRoaJQ/1O2WSaCKSFWBhYvTEA9CCP6tBq0yypk88mvGS00NFk1
 2e0tjLAuDpC5grlg4X/bprSBXjE/Hi5+H1eVXBB9wfsCNZCA73deGqFmpRtwtpm9WAQN
 jZNQ==
X-Gm-Message-State: AOAM531yTTc2kf2rq+xZyvaCbjYPz5x45eKCg9XwknH9JATESZEG+3ZK
 hvwnZZky3xetGc2TRlhJltr3kZKrPTVl3UjK9lQ=
X-Google-Smtp-Source: ABdhPJz8s/H6fe+euee/Fq4KkEckWTTD+Yvz0+tLF1gKuT8WlN+8zfV3rx7w3jlP14pm5O//glta3dEh/kNDVedte98=
X-Received: by 2002:a92:c5cf:: with SMTP id s15mr10044836ilt.149.1614970528943; 
 Fri, 05 Mar 2021 10:55:28 -0800 (PST)
MIME-Version: 1.0
References: <YEHymwsnHewzoam7@mwanda>
 <CAOc6etYqu_SJPjZtZdp4xDX=MVB0XY67tJ-EYoDYWuLfEyjnrw@mail.gmail.com>
 <20210305183259.GE2087@kadam>
In-Reply-To: <20210305183259.GE2087@kadam>
From: Edmundo Carmona Antoranz <eantoranz@gmail.com>
Date: Fri, 5 Mar 2021 12:55:16 -0600
Message-ID: <CAOc6etaxjfTdTG4s6F+OR6rybXBAk259S_XC2i4BruhbQJDrug@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8188eu: prevent ->ssid overflow in
 rtw_wx_set_scan()
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, Kumar Kartikeya Dwivedi <memxor@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 5, 2021 at 12:33 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> It's good that you're reviewing code...

Right now watching the patches flow feels like I'm just shadowing.
Later, when I get the hang of it, I might try providing something on
my own. I'll just watch things from a distance for the time being
perhaps making questions here or there (like I just did).

Just in case, my main point was to use a min() (or MIN? whatever way
it's provided in the standard) to have only two conditions instead of
three... .to keep them on separate lines, it could be done like this:

    if (sec_len > 0 &&
        sec_len <= min(len, 32)) {

_but_ I understand if you would rather keep the 3 conditions.

Thanks for your comment.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
