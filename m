Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D32473291
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Dec 2021 17:57:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F17A942A7C;
	Mon, 13 Dec 2021 16:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EihfLII_c_nQ; Mon, 13 Dec 2021 16:57:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38B344239F;
	Mon, 13 Dec 2021 16:57:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38EA31BF361
 for <devel@linuxdriverproject.org>; Mon, 13 Dec 2021 16:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1BB7142A60
 for <devel@linuxdriverproject.org>; Mon, 13 Dec 2021 16:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5B4V5I0SvJXf for <devel@linuxdriverproject.org>;
 Mon, 13 Dec 2021 16:57:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76BB942A5E
 for <devel@driverdev.osuosl.org>; Mon, 13 Dec 2021 16:57:40 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id j2so39733900ybg.9
 for <devel@driverdev.osuosl.org>; Mon, 13 Dec 2021 08:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=RpJMRmiRauxIO0XtoNFjMslSFxPS/cpWVlWX4zSfMpeN4BZQFYuCKH1924ZlZaSY9n
 mBPUEb14DE67K+C9D0My1UEFWV2ncvmpHTvtO4EnzhXAGcGwGyfJoLfT8HPGgz3mmkYu
 amihIdWRcIIqbxTltyawF7DlJSupdXabZ3X7cjMjSyfPHfWb7rcm9z2Kzfy8rF3Ql+xD
 BK84C+KsAsve2G4eySOZvPy4G3t/ZZ2nSr9SnkYWKrZ7GfPRx/ETlku/R2nh5d/mISss
 Ao7se4nCTiX3BowxqhGDTY3iDe9ROojIBrtpZLHe0MrKv2zBPMkZdE6KQEhWpEkjIpla
 hiPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=ilh3qm6f84+rRUZISI6ZAi1xGxvvo2X3HLW9u4/ChuDgBbRChS+G8JheYsNsNIyrhl
 FRmvtWzGJSlHu2HSptHkZFEuABiTtYLpIiPxmQ/F8naPlVLxevTzPuUtkTG/D57IKOuE
 R6nuyZ8HvOyNgLy7SN4FU3cxrdgSX/4TqqEPkmX3F5SbKnHzgVMl7pIW7DELzUHGERzo
 66WxnWS6KTpOV9WMiXAAxNduCACk8MAgmdXfU2YI79gcgUX1dTiF3RMZ+G4MW1SltXqN
 2Ay2/fwwunNC2hHXoYOnZaFvzlMaY+dp+adadA6Xlh0iblFLsQE7tiY1D++qNCtBUNJK
 5GQg==
X-Gm-Message-State: AOAM533KI88B9sKOBguWyAhGRig8TEMn/F+eYCxCP4idYGYdQcihv1sE
 ww6Updt+lkSshq0hyjvrGVqfqbHDxCfPtJNfOTQ=
X-Google-Smtp-Source: ABdhPJwT0q94cUyc9X+XqKIx90uGe5EVb4pORP/frluf1b9Vk5iNGd2jnXB/AGT2OOT/f7nF1ne1pMLgn1Gv2Z02sTY=
X-Received: by 2002:a25:b0a8:: with SMTP id f40mr34271323ybj.125.1639414659231; 
 Mon, 13 Dec 2021 08:57:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:a256:b0:1e3:b979:8f82 with HTTP; Mon, 13 Dec 2021
 08:57:38 -0800 (PST)
From: Aisha Gaddafi <kaborzongo794@gmail.com>
Date: Mon, 13 Dec 2021 08:57:38 -0800
Message-ID: <CAOawFR+A0JNu0MkdptetRgCaYwQJUJzZi6TKA4pLopQLjc3Mqg@mail.gmail.com>
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
