Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBCA41DF3D
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Sep 2021 18:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20FC961419;
	Thu, 30 Sep 2021 16:39:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pvhYKWjG-3B9; Thu, 30 Sep 2021 16:39:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 366DD6063B;
	Thu, 30 Sep 2021 16:39:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68CA81BF285
 for <devel@linuxdriverproject.org>; Thu, 30 Sep 2021 16:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65374421CA
 for <devel@linuxdriverproject.org>; Thu, 30 Sep 2021 16:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Z4jOABZU0hR for <devel@linuxdriverproject.org>;
 Thu, 30 Sep 2021 16:39:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9A8D41978
 for <devel@driverdev.osuosl.org>; Thu, 30 Sep 2021 16:39:38 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id r8so4740595uap.0
 for <devel@driverdev.osuosl.org>; Thu, 30 Sep 2021 09:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/T9drlD1s9vO6lHEMs4LJzmDo2MKXEHBXvFYaWoQWpk=;
 b=o3SZ3/8xgB3svMq+UXE3vgW9sKtG91px1UYnaI00T4dLP05ECFH5EVSAWUR78xdR5n
 ebHrIeHXVPRJa791OB2s/aZJdtzWdPaX5sbadOL24EflkgZ6O2rEvsBWvojGxJeeST6T
 eb+k8lxZZa/bWNfHNPwQHvNUM1YEFh4fUMO861Pe8Wc6pfqqL72s+8eCO53Msweav+mv
 XfoVjVScWXWc0hGgmBVMNFkqROc3jDhXxKvwZxz1ZkBwNJLCRx7xYOcAqQ0tzz+Q5cSM
 PuhaOVDUO2vb8ybQ6jSikOKS/AFhEN/8Lz75PuCS5qgomh+uSMNWQBtsXYMKNbf3IvW6
 pZbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/T9drlD1s9vO6lHEMs4LJzmDo2MKXEHBXvFYaWoQWpk=;
 b=oMZB6X6KsmoqK274NPm9DEG4t2oi2cMRjfL0Sgy1QI7CEKsY76bYdEJwjNKnNuc9FB
 +iTt+Yt1jjWkIPdlBBft3/RmqecYzIIHS8XPETN/BlhBOGEfxAm5lVxIHgOcOwrRdXyP
 OP5xFIh7rwh8vO59e938v7q/2wmM+p0/nAsCIKrLooZCz9xaC8oBON6lLas2AL5R9uZG
 S4T5y1Xf3Im292DtX3JIw3DNTmfHyMw9oH2l3FujmNHdxmM1vRny9Ok/c8i8cugVgg+Z
 WLP4+JaEeIeyv4FfOrrz1fkiZfoERDw437rnVB/couZQdiLAt1QTFwZpDaWH9bLiiHlz
 gAmg==
X-Gm-Message-State: AOAM530nc6NoNSkZDtto0yjE5N9V/stoC6s/UOMk4B20+DVIEyhdA6jS
 7UCV5mPptYNaXjPrRqjenAWkgDwZyxTibtaZGjw=
X-Google-Smtp-Source: ABdhPJx0AmgkV9cE7YZrAYTucsDxPOj7iGMkrooBstJ2APLp74YQnUFP0J0PcWONym4DRiNtFFvbKXZFoRlaXsy60JM=
X-Received: by 2002:ab0:5602:: with SMTP id y2mr6724983uaa.120.1633019977032; 
 Thu, 30 Sep 2021 09:39:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:ab2e:0:b0:22d:7f44:603a with HTTP; Thu, 30 Sep 2021
 09:39:36 -0700 (PDT)
From: Irene zakari <irenezakari88@gmail.com>
Date: Thu, 30 Sep 2021 09:39:36 -0700
Message-ID: <CAFT8PFG_8981ivC4O1EnUpb=bxUAD3b8Ry0XqxnGDqbSoBpVzQ@mail.gmail.com>
Subject: PLEASE I NEED YOUR HELP
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
Reply-To: irenezakari24@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello   ..

How do you do over there? I hope you are doing well?

My name is Irene. (24 years), i am single, from Gambia, the only child
of late Eng. Bernard Bakary Zakaria. the Director of Bajam Enterprise
(Building Construction Company in The Gambia) also the CEO of Bernard
Import and Export (GAMBIA).

As a matter of fact my mother died when i was barely 4 years old
according to my late father and because of the type of love he had for
my mother made him to remain UN-married till he left the ghost..

So after the death of my father as a result of assassinate, his brother (My
Uncle) who is the purchasing and marketing sale manager of my late
fathers company named (Mr. James Tokunbo Oriade Zakaria) wanted to
convert all the properties and resources of my late father into his
which i quarreled with him and it made him to lay his anger on me to
the extent of hiring an assassins to kill me but to God be the glory i
succeeded by making a way to Burkina faso for my dear life.
Honestly i do live a fearful life even here in Burkina faso because of
those Assassins coming after me .

I would want to live and study in your country for my better future.
because my father same blood brother wanted to force me into undecided
marriage, just for me to leave my father home and went and live with
another man I never know as he want to occupied all my father home
and maybe to sold it as my father no longer alive, I'm the only child
daughter my father born, '' but he don't know that i am not
interesting in any of my father properties or early marriage for now,
because i still have future to think about and to focus on my studies
first as i was doing my first year in the University before the death
of my father.

Actually what I want to discuss with you is about my personal issue
concern funds my late father deposited in a bank outside my country,
worth $4.5 million united state dollars. i need your assistance to
receive and invest this funds in your country.

Please help me, I am sincere to you and I want to be member of your
family as well if you wouldn't mind to accept me and lead me to better
future in your country.

All the documents the bank issue to my father during time of deposit
is with me now.
I already notify the bank on phone about the death of my father and
they are surprise for the news and accept that my father is their good
customer.
I will be happy if this money can be invested in any business of your
choice and it will be under your control till i finished my education,
also I'm assuring you good relationship and I am ready to discuss the
amount of money to give you from this money for your help.

Therefore, I shall give you the bank contact and other necessary
information in my next email if you will only promise me that you will
not/never betray and disclosed this matter to anybody, because, this
money is the only hope i have for survival on earth since I have lost
my parents.

Moreover I have the FUND PLACEMENT CERTIFICATE and the DEATH
CERTIFICATE here with me, but before I give you further information, i
will like to know your full data

1. Full Name: ........................
2. Address: ..................
3. Nationality: ........... Sex................
4. Age:........... Date of Birth:................
5. Occupation:...................
.....
6. Phone: ........... Fax:.........................
7. State of Origin: .......Country:..............
8. Occupation:...................
................
9. Marital status........... E-mail address's: ............
10. Scan copy of your ID card or Driving License/Photo:............
DECLARATION:

so that i will be fully sure that i am not trusting the wrong person.
and it will also give me the mind to send you the bank contact for you
to communicate with them for more verification about this money. and
to know you more better.

Meanwhile, you can reach me through my pastor,his name is Pastor Paul
any time you call, tell him that you want to speak with me because
right now i am living in the church here in Burkina faso and i don't
want to stay here any longer,
send for me to speak with you his phone number is this(+226 75213646)

I will stop here and i will be waiting for your reply and feel free
ask any thing you want to know about me.
Please help me, I would be highly appreciated
Have nice day.
From Irene
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
