Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5DA70A4C7
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 May 2023 05:04:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4717E83883;
	Sat, 20 May 2023 03:04:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4717E83883
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cvy4noeE6jkJ; Sat, 20 May 2023 03:04:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D8C78397A;
	Sat, 20 May 2023 03:04:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D8C78397A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E68001BF95F
 for <devel@linuxdriverproject.org>; Sat, 20 May 2023 03:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD2928397A
 for <devel@linuxdriverproject.org>; Sat, 20 May 2023 03:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD2928397A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J0rRYN5lc2jp for <devel@linuxdriverproject.org>;
 Sat, 20 May 2023 03:04:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4F3683883
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B4F3683883
 for <devel@driverdev.osuosl.org>; Sat, 20 May 2023 03:04:23 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id
 af79cd13be357-75939de402dso214623785a.1
 for <devel@driverdev.osuosl.org>; Fri, 19 May 2023 20:04:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684551862; x=1687143862;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9nI98n7hQHfgZ0b03oeYOgjjGhyapNQ2IwWuc24Y3aA=;
 b=NP6faoDdNA8DHcSKQzMw24GzMYFd0LFL/lPjdjnORBnY0BxaHVlXPi/j4hZCwCHeAG
 LlNM+KUA7hk6ZGjdiwID61Ae65IO2riys2271ToqoxmlS7M2igF9IOSc+TJOpjExcG/I
 p4fxjaSVXtN+tv6TBguM/dAxSM7POeQ8kpdVrB0QvUtpNxQ6PZhST8lZyz+xZNW1y/zB
 v3rbjkDGbt277K207XJCbRBoNIFqT0T1ovHfM+XP2y+RlPhi6uLKaWdeTeOY7wDEedAB
 VhEj0rWVd8yfpycPuIYt0MVCQUG9PU5op0FGEPAmGiOvCma8S8CiU4Ie27o5vx65SYxY
 xD8Q==
X-Gm-Message-State: AC+VfDxwcIN48/FUJOzUlCiCLUgwcZ7/oSUg/829/OcG5/moeN3NiwA4
 Q2LiD0L8fuG2sNW+TR9Fi7yaiPZhxeiuqofzH68=
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
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
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
