Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F023E55A0
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Aug 2021 10:38:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 482BC60838;
	Tue, 10 Aug 2021 08:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 65MLd3efWayH; Tue, 10 Aug 2021 08:38:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72255605FB;
	Tue, 10 Aug 2021 08:38:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42A091BF2F4
 for <devel@linuxdriverproject.org>; Tue, 10 Aug 2021 08:38:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3276360829
 for <devel@linuxdriverproject.org>; Tue, 10 Aug 2021 08:38:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e5lbTKmVPKjq for <devel@linuxdriverproject.org>;
 Tue, 10 Aug 2021 08:38:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D95DD60828
 for <devel@driverdev.osuosl.org>; Tue, 10 Aug 2021 08:38:30 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id z11so29025288edb.11
 for <devel@driverdev.osuosl.org>; Tue, 10 Aug 2021 01:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=0rOWNHRpI+fAft7dk46Y7sITV5v4wgNHckSyQcYfzac=;
 b=bLS0T7DND1vDgnA4rF5WuysDcINF2WJUxsfrfEGlazKJ1iG7KCPkEi1aizKo8ssyi0
 KjaSZMJAALh06U9k8aaNxppRPjYvIwM18yTVk0aFCtTSXHa4fTl5KxBHbLwL6xHJwFeh
 aFyGlyqCWd7SwGsNiDL2OrelwVjBaRpxei4ViONYT/fcaCZ5KqqMmPMXaqwZ2rWOx7TW
 CSXUI+0V58xTroErwaFKHVAvCnlBvd9m7q5F60p711m9IX4Fv5AiD39Mone6Xr8joI1n
 KOM1MkFUTGvW7gwNYqHPKbLKT59gPrdtW+Tw/OXSNePJEsCZUjlIYkM4SfwIuediRcA5
 d1jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=0rOWNHRpI+fAft7dk46Y7sITV5v4wgNHckSyQcYfzac=;
 b=Zdce2wpGq4VhB7gIuHYzgsGAYjI8FI4niBQ0jvaWmizFTdRkS6BknUEapxdCbJQNrC
 6Ucknj9KUrqbyd6n3M6kRipLKrGsIF5/rkgVgBG2lLo86fJnHiqNNRFmCL7ML/gP4s7/
 5UbaPV1278pYRNStK5kxjIuhuGleAonIpSh/1sYiiFOCm+bXO1863zHeVg6dB9x41SWd
 lXQducMT3WTZc0fpWkcPIu/sGrRHx5qy4vaWvajV9qw7vxBdiS0uYC3ubw3Xji4/9PDU
 Gd8W8wsjMlodJJmHz3K4YUGdhFy7QIRXnpA9owFQ9k7SG+M4RHoge020W96Sz7GVt+ID
 DmQA==
X-Gm-Message-State: AOAM530gH/HmOqkloXy2ocJRGVk80lnAaMcLZM7t20jk5R8W/nQB2Nrt
 ssc4pwSfeegbH8tOmbmDRzuktYSytPYDF9+QHFA=
X-Google-Smtp-Source: ABdhPJwMA7Ifp3Xc2icbSFKnHz5kLE1EjiBoqNuA1yqiXhi+KQHF0UOCtU1LEUKOjhhBjq1pP5cFbWE8Ms/HUl7ZgYs=
X-Received: by 2002:a50:935c:: with SMTP id n28mr3583338eda.287.1628584708776; 
 Tue, 10 Aug 2021 01:38:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:ce5c:0:0:0:0 with HTTP; Tue, 10 Aug 2021 01:38:28
 -0700 (PDT)
From: Mrs Aisha Al-Qaddafi <ibrahimtasha12@gmail.com>
Date: Tue, 10 Aug 2021 01:38:28 -0700
Message-ID: <CAEOt4Mx+3EDvYRc8BZ8+Ag_+z3Y2S6KynTBOJRcFL9atBYJ16g@mail.gmail.com>
Subject: Goodday friend
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


Goodday Friend

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
