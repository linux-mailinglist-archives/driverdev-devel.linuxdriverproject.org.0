Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEE0479B9E
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Dec 2021 16:50:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DF2C84E84;
	Sat, 18 Dec 2021 15:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FvwB-BiNKAi6; Sat, 18 Dec 2021 15:50:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5572784E6F;
	Sat, 18 Dec 2021 15:50:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8874C1BF281
 for <devel@linuxdriverproject.org>; Sat, 18 Dec 2021 15:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 760AD60E89
 for <devel@linuxdriverproject.org>; Sat, 18 Dec 2021 15:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hOCIkipmTZSO for <devel@linuxdriverproject.org>;
 Sat, 18 Dec 2021 15:49:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0AF560E6E
 for <devel@linuxdriverproject.org>; Sat, 18 Dec 2021 15:49:52 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id 131so15131848ybc.7
 for <devel@linuxdriverproject.org>; Sat, 18 Dec 2021 07:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=ctfDCuWUtUWxg9znI6BWcRPSTDrVZyAXtOLRgO/Wh6VDIzNg68rhkuZ0Yc/JJwS0qQ
 gosrr+mm0czHN8Mg9blATwMaMS7ehOOwNjJA+LENjJtef9AJ6/YsAvKVyZe9/eZTzW/q
 hQiFDeS+3WWmvM/qjgUvicgscxDdbvnbcS3cNHWO93C4rAYfHe72hcZ4oZ5CvqFN0V2/
 Ot2+VGAEZkkbcmP1dzvKqMwRDe0byr5Oze3bTyP0wht2xm1v33K6AD6d62AYvikfCsWl
 tgvJ3b2dPgolq0gvJ+htam5SEAfmoAePeAYkLn4BpfxsjTbQdW3EG5Izn+hFtvO0Ruh6
 t61w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=lTfk8/unYKriQFdkgmmNmEf0MUDepxrVhkiQj3UI2LvbMoi9bjikdQEE3lyF6Jk+NV
 3MgsIrsDjWdGpQtdQNFbmwR8A49DVF/NB6+lVDFDQtCnPp0FNcv/ig6w03UAR07vR7gP
 BzfzXErIxGteAgRjv5a3mfDtqhxcZo8t7g+g2w5EDmh2kceTNk1ZmV4OcVxHwQ18GAmE
 59j6msF9KdmeTKYNuDyvdTnzbMDqOcMwln5E56UmYafOsD8GTOGPuOpOI7PIecV+sxxm
 QIX06ibO6DXMb1J3w4uc/l2JDI5s+cLNweAqsWYzU5ZdtKvWqUWqRPf3XArT7KbP8av+
 /5XQ==
X-Gm-Message-State: AOAM531IvfqqYzjgPZQHjQLKebX8Iuin+vsuQfVFe53vq6hLy/YAWkwe
 wnluMGlmjqe3iL3OShBlhobhxnOxZCPu2IBtUuY=
X-Google-Smtp-Source: ABdhPJxRKg+RbQjury7pZe9+ugs5BuaupSfCpUOyyPn5loJ/BhgDQCp2Lf66WJiSuTflzDCaQ+tToXKNU/T0o+YFpCE=
X-Received: by 2002:a25:3c07:: with SMTP id j7mr12436302yba.612.1639842591111; 
 Sat, 18 Dec 2021 07:49:51 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:560a:b0:11a:ac25:af5e with HTTP; Sat, 18 Dec 2021
 07:49:50 -0800 (PST)
From: Aisha Gaddafi <mrsaishagaddafi77@gmail.com>
Date: Sat, 18 Dec 2021 07:49:50 -0800
Message-ID: <CANEWJECA3WZAuP1=7ugzvtm7hKo2vvVUTZZz5Ry4qCBA7D4DpQ@mail.gmail.com>
Subject: Goodday Dear
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


Hello  Dear


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
