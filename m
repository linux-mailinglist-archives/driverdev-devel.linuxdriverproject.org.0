Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D1E470DB1
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Dec 2021 23:26:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C7C385641;
	Fri, 10 Dec 2021 22:26:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LvO0v0M70iyr; Fri, 10 Dec 2021 22:26:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B7018563A;
	Fri, 10 Dec 2021 22:26:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 389191BF3D6
 for <devel@linuxdriverproject.org>; Fri, 10 Dec 2021 22:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 26CC461B61
 for <devel@linuxdriverproject.org>; Fri, 10 Dec 2021 22:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n1SysG9U-ySp for <devel@linuxdriverproject.org>;
 Fri, 10 Dec 2021 22:26:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4944F61B60
 for <devel@driverdev.osuosl.org>; Fri, 10 Dec 2021 22:26:17 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id z7so20472463lfi.11
 for <devel@driverdev.osuosl.org>; Fri, 10 Dec 2021 14:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=buW/XzG0h3SKGofyc5FDJkrlXM+1OfEEND7H3Hvod0+XIboBRMilj5Ho8K4MXYpErp
 JSOdzoXcsZu7ExX2W3kCxzveoVW5cdMGVzKJ1N/S5yFGv73QydT/dp5Xh7YDeH69wMy4
 mCthdl5gFt62kEqkMjZHbzlRAnLNPmOelQKpw1NtXyoHEWERbVUxUFK0EdD3TtjYQLtV
 v7OP2ITHxIEAijplwktIv9I5U4kDpfA0xSv+dCT8ke7vEjkGj0DJy6fTZDIBGuNy1sTX
 0WJrz5LynbG68njzLz7u9PjF2epHoT6D5NYEuKpdOJT+PETYwBCRXa+7Xb3HK+CZ+Gys
 vndw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=z29Q32JQ+F1NLqntek1iJcuOANlk0bUCqJoAGKpj5cd3RG25IJoUM9QVXg41F1Ec/p
 pL9KITj7ld7l9AIOXnNCyAd0iS9ZNIbNniOY1HQj496jm3CwzIXc/G0HkEqAm10Jqjin
 lti/aCnoeLRPh6LxXmUZNUtK1a9bWD5Rk/GEPwNd44XRzD7zuvTqRHU8vxtOrSpiA3Zi
 lHEjmi4Py9jjXBhTV8JFkDnMZ7NMvZTSzR0V6yHWPdPBBwYtIcibkNhBHq8XeaAylSn9
 uZB1jnqswiDhGlMXFPFFGSohP7GJ4vsS8nQB7By0D+pmOdNptCae8VsuGUZyKaCBX30+
 39QQ==
X-Gm-Message-State: AOAM531A5TJtryHPEdWeI32Pr853L0389sMZr1jBUdLdsoxCdJULWPNp
 8+OYQYJovLXpOvIr/KwiZskhwEmoEjwo+UWhvIQ=
X-Google-Smtp-Source: ABdhPJysO4CuGQjo2Ds2jurN/PJ0LXfLuMX+LP/Ckr58b5pdj9EevwQk108o0/hV0FREQFHDYQLdrety5EI1IfidqHk=
X-Received: by 2002:a05:6512:3a8d:: with SMTP id
 q13mr14358932lfu.73.1639175174907; 
 Fri, 10 Dec 2021 14:26:14 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6512:1090:0:0:0:0 with HTTP; Fri, 10 Dec 2021 14:26:14
 -0800 (PST)
From: Aisha Gaddafi <katelabo02@gmail.com>
Date: Fri, 10 Dec 2021 14:26:14 -0800
Message-ID: <CAMfHZNLFxoKFYHWS=GuaZ6OhOaV7WKRazttzzH5EeAvdTJqe3Q@mail.gmail.com>
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
