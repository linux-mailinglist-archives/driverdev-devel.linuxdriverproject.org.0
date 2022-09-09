Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F0E5B389C
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Sep 2022 15:08:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1296682AAA;
	Fri,  9 Sep 2022 13:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1296682AAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Jlr1Tj0WzBn; Fri,  9 Sep 2022 13:08:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCCF582AA7;
	Fri,  9 Sep 2022 13:08:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCCF582AA7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 110971BF2BF
 for <devel@linuxdriverproject.org>; Fri,  9 Sep 2022 13:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6685416BA
 for <devel@linuxdriverproject.org>; Fri,  9 Sep 2022 13:08:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6685416BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yiox4LOBEJqi for <devel@linuxdriverproject.org>;
 Fri,  9 Sep 2022 13:08:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 145164169B
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com
 [IPv6:2a00:1450:4864:20::229])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 145164169B
 for <devel@driverdev.osuosl.org>; Fri,  9 Sep 2022 13:08:45 +0000 (UTC)
Received: by mail-lj1-x229.google.com with SMTP id z23so1777225ljk.1
 for <devel@driverdev.osuosl.org>; Fri, 09 Sep 2022 06:08:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=nAO+y2iHRPhX1dA5VJubg7tNizRYxg9AbHMIRxMn87o=;
 b=qaOe5Tc7YJQ3SxmqIZ98RyRiEBdhcIG+oavPUvxecP2IbZikwwwGctleBkrvPAliQR
 F2BhEhxGqGVq5ZJSeNS+l/M/PWHOTGE17V14gpppkb+ZiMl2QacELc5XTVl95a6aBmdK
 XEq3H0VjcXnk/olyv2mL7FcVSOQH3X9Gx6BUFc5yP0ohLy8gOxKNWsHty7djYrQcKbQJ
 4kZTjhy9OeF3v4Z0hSXTmyum7QG3PI8jHhKo5vpD7ZxjpPp0B30MVsqiiK/hvqj43Sue
 3z4EQAAYp8l6iGpj9GAZWop1TD3+tILDJMRAbM2xh9N/ed8+iVEf63B44/cXhFjbjiq+
 IK3A==
X-Gm-Message-State: ACgBeo1h3TLgpWCdOv5Ix3UhfUvK/9uX9BjOUGz7YIJPy9EmOYJhH0BB
 u2z3ZlgcBaPXfhTjvWZr4y8Wf7SM0qVwimMNMA==
X-Google-Smtp-Source: AA6agR4EaQ7pesvq4Y1rvddIoFZJ+GSY/84/x/UWtT7qC1pE55iexUAtPR5n+BgJehWCYZH2KGwSwYcCORjAt7lBWKg=
X-Received: by 2002:a2e:9851:0:b0:26b:df5f:ffe with SMTP id
 e17-20020a2e9851000000b0026bdf5f0ffemr1467234ljj.474.1662728921353; Fri, 09
 Sep 2022 06:08:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6512:139f:0:0:0:0 with HTTP; Fri, 9 Sep 2022 06:08:40
 -0700 (PDT)
From: mr michael doku <mondy.mike012@googlemail.com>
Date: Fri, 9 Sep 2022 13:08:40 +0000
Message-ID: <CADr-3kdmYHrDVgy-DQ-CeUdJ3EcDE2y+sd8SGG42RtF0tvRooA@mail.gmail.com>
Subject: Please Respond Urgently
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date;
 bh=nAO+y2iHRPhX1dA5VJubg7tNizRYxg9AbHMIRxMn87o=;
 b=PiKZtKY19w2jstvGGkhI2ZpHhMz6vF+eWAA6dEIaPsO6+k1/UAFnXHh4hAOWBgx0na
 +/MtdhQSgIgUbEq5I4FFz3jXl7AslEQau8PYcM3VIzGnOZ2uytGWnDJ13wdQ3Zn2PK76
 +cmmHShgB0JMpOWJwwinx3eodxphI1DVgVEEYNrYFvkEwvhdbqSZhyNO7k6LvwR+cY0L
 hb/DnDzMLqw/RSTYWiA2+TiNifc04U8loWTYIiTcgzkVgytaW85tyzHdhFRUswO34TUj
 NI+1UDyr5ojBLXgptQGp448G+ZveS9FlBgQBJpuhAzFk7j32pOC4/j71sHfjWsp9gzB3
 1XnA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com
 header.a=rsa-sha256 header.s=20210112 header.b=PiKZtKY1
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
Reply-To: mrmichaeldoku@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings,

I know that this mail will come to you as a surprise, but need not to
worry as I am contacting you independently of my investigation and no
one is informed of this communication. I need your cooperation in
transferring the sum of $11.3million to your private account. The
money has been here in our Bank lying dormant for years without
anybody coming for the claim.

I want to release the money to you as a relative to our deceased
customer the account owner who died along with his supposed Next Of
Kin in October 2005. The banking law and guideline here stipulates
that if such money remains unclaimed after 17 years, the money will be
transferred into the bank treasury as an unclaimed fund.

By indicating your interest I will send you the full details on how
the business will be executed.

Best regards,
Michael Doku.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
