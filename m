Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE39170A4C6
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 May 2023 05:04:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F145839A4;
	Sat, 20 May 2023 03:04:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F145839A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6_59ka-rk_ro; Sat, 20 May 2023 03:04:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 061C483AD0;
	Sat, 20 May 2023 03:04:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 061C483AD0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C58C91BF35D
 for <devel@linuxdriverproject.org>; Sat, 20 May 2023 03:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E11E40432
 for <devel@linuxdriverproject.org>; Sat, 20 May 2023 03:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E11E40432
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1LSUDcTZGsKo for <devel@linuxdriverproject.org>;
 Sat, 20 May 2023 03:04:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87BC3400FB
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com
 [IPv6:2607:f8b0:4864:20::844])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 87BC3400FB
 for <devel@linuxdriverproject.org>; Sat, 20 May 2023 03:04:23 +0000 (UTC)
Received: by mail-qt1-x844.google.com with SMTP id
 d75a77b69052e-3f41b73104eso21128931cf.3
 for <devel@linuxdriverproject.org>; Fri, 19 May 2023 20:04:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684551862; x=1687143862;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9nI98n7hQHfgZ0b03oeYOgjjGhyapNQ2IwWuc24Y3aA=;
 b=UQYD8QTak14YE0qLPm2JGTAW3g6avgkbD9vKASW4xkKjYi8oF+RdNc83k+Mo6X2caJ
 +kCvCffKrojQXJF3uU9LzsYG6Ln8odIUb1jLuiXfnDLQ+EicTrlF1pKSCQ6e3zE22wFS
 FBYlXqBDa8mqha2YoOykgQHWV7Zcr9LX4awY5rAefVjumcWrD8NpLkEg4jlpMwSy47ft
 PXqDkUzJCIyxdN7NuR2hMfUE3oUMX6MuTisbmOa1CWzLa/C+fCIklQYH2Qz3TVeMWShL
 xARaqbbKFahajMTUbgRuUl9O+jrSOu2Q/+b7ud/X7Z2xiSkTn3uRngY/ZT6DyjwAu93c
 zXig==
X-Gm-Message-State: AC+VfDwrSM0m0PerwqAH04BHvrWRBQBQ+4z32/W4OYD+yywWIKRce8Ks
 sfqM5NGI6yWHhfRmP6IB4E1hsirDdLsAK7DaE5A=
X-Google-Smtp-Source: ACHHUZ5o87Dxk7OCObj2G2G8ejREZHe8QPwPhFt4hVDnPR/2xxEE+xxm6yGJOD4cAdw26t90B+e96tmlLplWIjfo910=
X-Received: by 2002:ac8:4e56:0:b0:3f4:c9b:24ca with SMTP id
 e22-20020ac84e56000000b003f40c9b24camr7319309qtw.53.1684551862151; Fri, 19
 May 2023 20:04:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:5a4b:0:b0:3e4:e411:44a2 with HTTP; Fri, 19 May 2023
 20:04:21 -0700 (PDT)
From: Fatima Muhammad <tehalsingh1965@gmail.com>
Date: Sat, 20 May 2023 03:04:21 +0000
Message-ID: <CA+r7bWHq-c-D5V5CATXT6qL35K1qX9G4NsyhrPHDYqEF5QtVsQ@mail.gmail.com>
Subject: CHARITY
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684551862; x=1687143862;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9nI98n7hQHfgZ0b03oeYOgjjGhyapNQ2IwWuc24Y3aA=;
 b=YG0XJRNyfqioGBcGs5BK7DCf7NWfy/8qmzExHJqSrZhCSXzLnR+ICKnZfztX5ICdMP
 OeuSQIqciVuQ5lpxq6sLKJporenlKZbCx+nwibFpq7qKwESZC++Oh+9tHnA4rOZnXDrY
 /9ceQUzU2VzRfgwKzRIG5prNLk0rvqIl3myclWjdXdKNHjilGnGZ47v467h1v88Zt+iw
 wuZD2Ro4b4lhXY43B1GInUDib6mQTnJ5EbrYln285YUudl6RGpirud6oKCBj91PPT6lF
 vXtki7khk0PNi+2zQmTfofT+AN2BQv4Q+WYFqZYBGoiMTt9evqPJJwdxgTdiEiOnLCQy
 S6fg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=YG0XJRNy
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
Reply-To: fatimatmuham24@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Greetings

My name is Mrs. Fatima Muhammad. I am 56 years old woman and I am
legally married to late Mr. Malik Muhammad. who worked with an oil
drilling company as an expatriate for many years before he died I and
my late husband did not have a single biological child of our own.
Presently I have a serious breast cancer sickness and my private
doctor just informed me that my breast cancer sickness has gotten
worst and they are going to carry out a serious cancer surgery on my
heart by next weekend which I might not survive.

When my late husband was alive, he deposited the sum of Three million
five hundred thousand dollars  in a bank and he signed an agreement
with the bank that the funds will be used for charity and humanitarian
purposes, My Dear I contacted you today for this charity and humanity
work  If I die during my surgery, the bank will embezzle the money
because I have no child to claim the money  I want you to take  forty
percent of the total amount for your compensation and use the
remaining sixty percent  to do the charity work in your country.
please kindly reply back to me for more details  if you are interested

Best Regards
Mrs. Fatima Muhammad
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
