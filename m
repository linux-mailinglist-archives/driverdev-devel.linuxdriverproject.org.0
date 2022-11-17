Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5267462DC33
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Nov 2022 14:03:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37C1A41845;
	Thu, 17 Nov 2022 13:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37C1A41845
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aXpXjpAkBAMM; Thu, 17 Nov 2022 13:03:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91D1E4183F;
	Thu, 17 Nov 2022 13:03:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91D1E4183F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E61D1BF2BF
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 13:03:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 305FB404C1
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 13:03:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 305FB404C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BL_R2hwXOyta for <devel@linuxdriverproject.org>;
 Thu, 17 Nov 2022 13:03:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91068404B3
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91068404B3
 for <devel@driverdev.osuosl.org>; Thu, 17 Nov 2022 13:03:50 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id 130so1903742pgc.5
 for <devel@driverdev.osuosl.org>; Thu, 17 Nov 2022 05:03:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FNMEulldSXVMg7ulM6g1t35fIqQxm0B7A8BOWjbvtwM=;
 b=4vpezFCt33wtAyY7G7TtRCdE9PAFf/YDwuYOjCdNciH/VawtPsj2X//AfMCgQvj6LW
 tk/YDhZepkJ5DZSDdiCeAfhvJEubac1EVAkCSb9Zab2m4TRwM0/WsUU5xH9O4Qrjk/FA
 JgZcPPyvac1NPTc3yCyTW/kmudA5OAEs4gk27vZoZKiT80svjwTMC73k3pvawkNi0yEe
 /dK40FeY90Xh8TZ1WrAc2htxXEyIxjoObXFHSCG+FzAHwp7IJMEDU8PrItOSNErsaMB2
 PxxEA1saw+ANvwK1ypnXpYR6U+cdXCNDnWT38oQGEBxUYMOH8+Z11SqampCFJ9VPtmQf
 hUhQ==
X-Gm-Message-State: ANoB5pnvwxDKTQI7OVDitoaBPwQGiBDyAJ18hxaXKslgQFTlxBP8gPmI
 zjb7ZkyY7NBiRT9wQ17zVH/I6B1suWEdium2tmw=
X-Google-Smtp-Source: AA0mqf5qcrNtL+uA3+zN/IvNmBxfP3CZKpw/GKiGbvXA/qLFYpkrfPwqbtHgC/l9ZzJoJRQelhDFzo6BxXUUWrwMCR4=
X-Received: by 2002:aa7:8115:0:b0:571:f667:4d85 with SMTP id
 b21-20020aa78115000000b00571f6674d85mr2882136pfi.70.1668690229827; Thu, 17
 Nov 2022 05:03:49 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7300:6110:b0:83:f7ec:af9d with HTTP; Thu, 17 Nov 2022
 05:03:48 -0800 (PST)
From: SILICON VALLEY BANK <siliconvalleybank9@gmail.com>
Date: Thu, 17 Nov 2022 14:03:48 +0100
Message-ID: <CAL5r-k8VEq0bFUDnYrrxAvxQ8PEz5fsxpT3_bOWir2Omu3rBNA@mail.gmail.com>
Subject: I am Mrs Alice Bryan, I am a USA citizen 48 years Old
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=FNMEulldSXVMg7ulM6g1t35fIqQxm0B7A8BOWjbvtwM=;
 b=KYSfpjBv7YR1OWiBx6ryGtMVKNkbphK+qTgX8kXxhEXbVDLx3TAByKawCzb+jHzTSC
 /jRCPlfhkE0EAk1hd9Y64/3NTt50CDbwtZF9xTdmtjCFbu/V8pjDCfoNRc7n0hhgL60Q
 VUr24GZQtcHMc8UiZrFlhEfis7QYreHSYd6geFmQUo95E2+FoRiPJVFSEIkN1+YgchE7
 8NCdRq/KYfLsJ3uyEV6u81eGTfJi0e0ZPH5qXOo+KsqsQSb+uXmYywJWoh4/T6sIkDMC
 r9zg1y1F2QfSTicOB3DHnwzAs3Bw2hYRNgdZB1vPKrBYGXUGGajcy0vXSqZJD5uRT1qd
 Grcg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KYSfpjBv
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Attn: My Dear,

I am Mrs Alice Bryan, I am a USA citizen 48 years Old. I am from New
York, i am thinking of relocating since I am now rich, I am one of
those that took part in the Compensation in Nigeria many years ago and
they refused to pay me, I had paid over $100,000 while in the United
State trying to get my payment all to no avail.

So I decided to travel to WASHINGTON D.C with all my compensation
documents, And I was directed by the ( F B I) Director to contact Mrs.
Erelu Angela who is a representative of the ( FB I ) and a member of
the COMPENSATION AWARD COMMITTEE in Republic of Benin and I contacted
her, she explained everything to me. she said whoever is contacting us
through emails are fake.

She took me to the paying bank for the claim of my Compensation
payment. Right now I am the most happiest woman on earth because I
have received my compensation funds of $30 Million Us Dollars,
Moreover, Mrs. Erelu Angela showed me the full information of those
that are yet to receive their payment and I saw your email address as
one of the beneficiaries,that is why I decided to email you to stop
dealing with those people that are contacting you they are not with
your fund, they are only making money out of you i will advise you to
contact Mrs. Erelu Angela. You have to contact her directly on this
information below.

COMPENSATION AWARD HOUSE
Name: MRS. ERELU ANGELA
Email: file.office99@aol.com

It is not in anyway with them they are only taking advantage of you
and they will dry you up until you have nothing.The only money I paid
after I met Mrs. Erelu Angela was just $400 for the paper works take
note of that. Once again stop contacting those people, I will advise
you to contact Mrs. Erelu Angela so that she can help you to Deliver
your fund instead of dealing with those liars that will be turning you
around asking for different kind of money to complete your
transaction.

Regards,
Mrs. Alice Bryan.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
