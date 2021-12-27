Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 705C6480165
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Dec 2021 17:07:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7E624028E;
	Mon, 27 Dec 2021 16:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ibM_tmJnQGu; Mon, 27 Dec 2021 16:07:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D49540222;
	Mon, 27 Dec 2021 16:07:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 826701BF3E5
 for <devel@linuxdriverproject.org>; Mon, 27 Dec 2021 16:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 80932401E9
 for <devel@linuxdriverproject.org>; Mon, 27 Dec 2021 16:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MUjMPrOy6Lyu for <devel@linuxdriverproject.org>;
 Mon, 27 Dec 2021 16:07:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2B044021F
 for <devel@driverdev.osuosl.org>; Mon, 27 Dec 2021 16:07:08 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id d1so25469460ybh.6
 for <devel@driverdev.osuosl.org>; Mon, 27 Dec 2021 08:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=kjvkzKLubgLm+GCnqb8XK6WeX+XyfATjlu9tws6f3EI2Chr44Mn65/BpK4/zL0NO+j
 qT9DoiFIfWiK11IuSVuhn+yGQAnGueN574ZcAEW2JiOBNJa+RIXxVe+AmDZt2H9p/ahB
 2g+SrSImU414Omtq3/Y83480kms8hXBYKLHVXXKKzKR7h/JkJI4DuAiV7jTr1oh/qMva
 7frCPnRd5M2xW5NTHGMN8Nrt2tJY29aIbB8nDmfNJX9kzpEvhYZvQ0t0zXdQkywpUjoj
 DeLCdNdFBBP/i00sOl2MUYOA+Y/C4+r8sXQ2Vs5YAIR8Q/nyHhg7p0Hh+zVhPVKQOzcY
 fdVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=bamRJWkMuvMCFNG1SpRMluJ4AXTTZ22InvhthveqU3f0aj/BJEh7bktU4/lYVWDNSH
 QG4+0YFeI7BpHANrwip+FcCA2x0uvZODVB3mLfYp4NBZSPnvkXvg2ubGCrIDvSE0yi+V
 m5TdmAAG7Z56jiNOM+4ff1svbIgpn8NOJ1TbXZEOcXVb+6U+w7bGpCC2iG9V4M7//ypG
 L4k0Z3Umvb2YnYMWm47wuJJuhUGNvSYKfFc4Ae2PCgmYm62YSekY17Z7DcSG80Eeg2cf
 Ty/G+E9wGb6E34sMygBwZDBN0UmoJoWODITxAzQ5DKn/yVZ5XrScGcC3NtJL+oS2P7cq
 delw==
X-Gm-Message-State: AOAM532zcdocaO1TkizbcW82YnqoTIbrnpTlyyNB3RxG9mitAFO4cGsl
 2p2gPZAnAhhsQqBSHTzJCAi6sMbOjCKyg5KiqC4=
X-Google-Smtp-Source: ABdhPJywpFJKGQNZ3SXjgyAemWCpN0hMbe2VO6NDUvctbyrqbWaP+rC1bC9y3a3CpEptPysgQYGFDtUUOybKOg4bccE=
X-Received: by 2002:a05:6902:1248:: with SMTP id
 t8mr24813267ybu.185.1640621227001; 
 Mon, 27 Dec 2021 08:07:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7108:19f5:0:0:0:0 with HTTP; Mon, 27 Dec 2021 08:07:06
 -0800 (PST)
From: Aisha Gaddafi <mgaddafi034@gmail.com>
Date: Mon, 27 Dec 2021 08:07:06 -0800
Message-ID: <CALjwqiQHxXG+eMiPpdpgErjx3nLGnoGWL-=sb2d+itvrCqUfCA@mail.gmail.com>
Subject: Hello Dear
To: undisclosed-recipients:;
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
Reply-To: aishagaddafilibya5@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh,


Hello Dear


How are you doing today,I came across your contact prior a
private search while in need of your assistance.
I hope my mail meet you in good condition of health? Dear I have
decided to contact you after much thought considering the fact that we
have not meet before, but because of some circumstance obliged me, I
decided to contact you due to the urgency of my present situation here
in the refugee camp for your rescue and also for a serious
relationship and a business
venture/project which I need your assistant in this business
establishment in your country as my foreign partner as well as my
legal appointed trustee.

I am Aisha Muammar Gaddafi, the only daughter of the embattled
president of Libya, Hon. Muammar Gaddafi. Am a single Mother and a
Widow with three Children.
I am currently residing in Burkina Faso unfortunately as a refugee. I
am writing this mail with tears and sorrow from my heart asking for
your urgent help. I have passed through pains and sorrowful moment
since the death of my late father.

At the meantime, my family is the target of Western nations led by
Nato who wants to destroy my father at all costs. Our investments and
bank accounts in several countries are their targets to freeze. My
Father of blessed memory deposited the sum of Twenty Seven Million,
Five Hundred Thousand, Dollars ($27.500.000.000) in Bank Of Africa
Burkina Faso which he used my name as the next of kin. I have been
commissioned by the Bank to present an interested foreign
investor/partner who can stand as my trustee and receive the fund in
his account for a possible investment in his country due to my refugee
status here in Burkina Faso.

I am in search of an honest and reliable person who will help me and
stand as my trustee so that I will present him to the Bank for the
transfer of the fund to his bank account overseas. I have chosen to
contact you after my prayers and I believe that you will not betray my
trust. But rather take me as your own sister or daughter. I am willing
to negotiate investment/business profit sharing ratio with you base on
the future investment earning profits.
Apologetic for my pictures I will enclose it in my next mail and more
about me when I hear from you okay. Please I want you to contact me
here (aishagaddafilibya5@gmail.com) for more details.

best regard
Yours Sincerely.
Aisha Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
