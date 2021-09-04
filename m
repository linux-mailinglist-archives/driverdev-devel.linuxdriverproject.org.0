Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CEF400BAF
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Sep 2021 16:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 356F060717;
	Sat,  4 Sep 2021 14:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rf1DpkrpZfFx; Sat,  4 Sep 2021 14:40:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A61F6070B;
	Sat,  4 Sep 2021 14:40:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D4C21BF3F7
 for <devel@linuxdriverproject.org>; Sat,  4 Sep 2021 14:40:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BDC3400D4
 for <devel@linuxdriverproject.org>; Sat,  4 Sep 2021 14:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l7_BwHBlrzZx for <devel@linuxdriverproject.org>;
 Sat,  4 Sep 2021 14:40:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3592140001
 for <devel@driverdev.osuosl.org>; Sat,  4 Sep 2021 14:40:07 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id k65so4081645yba.13
 for <devel@driverdev.osuosl.org>; Sat, 04 Sep 2021 07:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Xc0SveC6FG9/fTwgjo3YwVs7JvWZS15daQrd5qcr+Gw=;
 b=MGCtJ9brLLsgxXboPTZXea26GBq7flZdoYtkueMR6WLeweOkS+6wxQ7fjStRD7YgPI
 qZitwJm/QXLiBSMp3dMeihMWO4gvS/JfheOPgXidR6lIT48sK6r6ZvT6LZGHbts0G9AA
 Fx4A7AX7o0hiH7MEMR3dpFyvUD1oZiFDnvT2D5bHDSXWBr9TyzsmXIbQR+JEnOgRLMLt
 4UeNWp2LBuknFXMwjQEO2QxWvI21YoNBZAfjGBOMNH0A1RTUFx7NCqNqJDCVZqp2KH3z
 fehSudYbxpH8u5MMgzzWVOKLv5eVaxLmz1rCmCzK15vjwKdI8KRpKgb0mYOyIenLuo/e
 O/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Xc0SveC6FG9/fTwgjo3YwVs7JvWZS15daQrd5qcr+Gw=;
 b=JjVqeb8f1TovnFvrXlMmaCeEXNU3tEZsjjyRWIyUm5m8BKbHFv7tnM5F9Z81d2byR3
 86FJ+1xlScOPMPuEkXWYJxo/8khPPyvVVciSCQ0NUFb0cIf/HFynYlaT40IUJ9e8fshH
 7bh2Tw+f29RXQ48EJ87ZnO3cOTHbF0ZK/O3qwSUQum3ueCVXJw+CLJyqWnDIdI2cOm0T
 f0KIcjpM4mi/rKZb9MYTphahoKa0g7XHX8LOOApMZ2U+F4Hg6YV3elKu31yUtXNLqUY2
 zX1jOl5w/rQeCCJOZDvhdqO9S2V84ssbe02cS0lIbPdLaarveshMHWkFz9UaH4PU1npz
 A+xQ==
X-Gm-Message-State: AOAM531YKIFJecZSfxNAw7sUQSimrz7/fB89yAlnFUc5By+4gM+5mOB6
 J0db8wrhTQXO6bV3QgSlhEBC9FFt7hcZg15Z9eY=
X-Google-Smtp-Source: ABdhPJz5am8r64NHvs1DmO1nHsfsIZdzuLAu/kasChRdomBltlpfzHEhOa55nt154xM0xr+4Qey3n9FixpR35VVclo8=
X-Received: by 2002:a25:6087:: with SMTP id u129mr5126173ybb.513.1630766406021; 
 Sat, 04 Sep 2021 07:40:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:df0a:0:0:0:0:0 with HTTP;
 Sat, 4 Sep 2021 07:40:05 -0700 (PDT)
From: Aisha Gaddafi <annajohn6442@gmail.com>
Date: Sat, 4 Sep 2021 07:40:05 -0700
Message-ID: <CAECmhfBZ8xm0_v=4sZXQZq0KwviR5ZwYo5NMvDP7-929YFzJDA@mail.gmail.com>
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
Reply-To: mgaddafi034@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh,


Dear Friend

How are you doing today,I came across your e-mail contact prior a private
search while in need of your assistance. I hope my mail meet you in good
condition of health? Dear I have decided to contact you after much thought
considering the fact that we have not meet before, but because of some
circumstance obliged me, I decided to contact you due to the urgency of my
present situation here in the refugee camp for your rescue and also for a
business venture/project which I need your assistant in this business
establishment in your country as my foreign partner as well as my legal
appointed trustee.

I am Aisha Muammar Gaddafi, the only daughter of the embattled president of
Libya, Hon. Muammar Gaddafi. Am a single Mother and a Widow with three
Children. I am currently residing in Burkina Faso unfortunately as a
refugee. I am writing this mail with tears and sorrow from my heart asking
for your urgent help. I have passed through pains and sorrowful moment
since the death of my late father.

At the meantime, my family is the target of Western nations led by Nato who
wants to destroy my father at all costs. Our investments and bank accounts
in several countries are their targets to freeze. My Father of blessed
memory deposited the sum of Twenty Seven Million, Five Hundred Thousand,
Dollars ($27.500.000.00) in Bank Of Africa Burkina Faso which he used my
name as the next of kin. I have been commissioned by the Bank to present an
interested foreign investor/partner who can stand as my trustee and receive
the fund in his account for a possible investment in his country due to my
refugee status here in Burkina Faso.


I am in search of an honest and reliable person who will help me and stand
as my trustee so that I will present him to the Bank for the transfer of
the fund to his bank account overseas. I have chosen to contact you after
my prayers and I believe that you will not betray my trust. But rather take
me as your own sister or daughter. I am willing to negotiate investment
/business profit sharing ratio with you base on the future investment
earning profits. Apologetic for my pictures I will enclose it in my next
mail and more about me when I hear from you okay. Please I want you to
contact me here (mgaddafi034@gmail.com) for more details.

best regard
Yours Sincerely.
Aisha Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
