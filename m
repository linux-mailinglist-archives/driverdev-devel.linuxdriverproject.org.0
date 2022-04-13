Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E034FF251
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Apr 2022 10:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 595574013A;
	Wed, 13 Apr 2022 08:41:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 78x2QpR7KNCO; Wed, 13 Apr 2022 08:41:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB5C7400BB;
	Wed, 13 Apr 2022 08:41:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58B6A1BF403
 for <devel@linuxdriverproject.org>; Wed, 13 Apr 2022 08:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 54E3B60B53
 for <devel@linuxdriverproject.org>; Wed, 13 Apr 2022 08:41:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ygEKX-qmfAlH for <devel@linuxdriverproject.org>;
 Wed, 13 Apr 2022 08:41:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA6BB60B47
 for <devel@driverdev.osuosl.org>; Wed, 13 Apr 2022 08:41:54 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id m8so1302769ljc.7
 for <devel@driverdev.osuosl.org>; Wed, 13 Apr 2022 01:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=tG5afwSZ4IQ/HV6x5iMGsXBBWSv4p+OkEw+eIV1bnQk=;
 b=UoAslw3StzFYHOhlI9BgNKlunKqD5D5AHxNuQ/XezKJ0KOq69odaSK9/Dm1qyDv4V3
 UKSfB79JgKvfGZG2LnXBhm5pXWrQXRZligIY40s9VZAlxNYIURSFAs6ZD7jGCYqE05hA
 v5GE0EGW63j0mTnNA78ZnMqChSNMN6HhMTDn7KtwA3dziX2K2fwKt5I7Ab/qx30t7Xpj
 7/rSEAaPQx9OvrMMyJqCWNOG2ibgPhRgI5ajDssq/mdU65WuTMdhO4ou2IOuCp8e5Gnf
 mBumjoJRmjB0vV/pv//P0lKbCfNyZFgQFXk3qTlb/Minywe5Vzhzk9yxyBiwJpZr2rMn
 YJrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=tG5afwSZ4IQ/HV6x5iMGsXBBWSv4p+OkEw+eIV1bnQk=;
 b=owKP00sxCsEHkrbRZIOJj3sSS31WSHlbrOfeHPzaftmgp+M3y4zgpLsiAFestpZY7q
 UOzeDxPNgdgNbp++JNjVkkj1UVg2v9bGkwaQJjOw3grmupsmUrl5k4BS9/qHdz+UbDsw
 +K7Tgo2+Z6p5qMyn7oN16GUgZs4ElvV1QNDxkO/6dYANH3zDhh1HLZkOsY1afEnu+S8g
 xC8hzwGtRqzeW/ChAMhR4S1D5kx6fPlseNM2VthDrg09ws77/jf/DzPn6FbI6NVNbsen
 iSKDWsxMPA/O11YA4w4KLeiJNzOrs4ZYIXMSlTxKy1uEAo0kgqpXEV8stlA3C3YRZMey
 1gVA==
X-Gm-Message-State: AOAM533tFH6AMsgWvCYgHPClQlmQaBmUMcUa5YRdNlNFdb13Ks2+/3Qg
 5wTsT2I/SxBUApVb8Fyt2fbyp8/kVj/XXU+AmME=
X-Google-Smtp-Source: ABdhPJwb3gqg9DDvyNADa4UfkkJRImAv2KkhC8PAIIV3wURgLYqwlDEik8v/og7T0PLevU33opXw8WgYh9Z1rPwPuks=
X-Received: by 2002:a2e:8182:0:b0:24b:69e5:8dc9 with SMTP id
 e2-20020a2e8182000000b0024b69e58dc9mr6038323ljg.27.1649839312565; Wed, 13 Apr
 2022 01:41:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa6:c264:0:b0:19a:d3c3:58b9 with HTTP; Wed, 13 Apr 2022
 01:41:52 -0700 (PDT)
From: "Mrs.Alice Karim" <mrsalicekarim022@gmail.com>
Date: Wed, 13 Apr 2022 01:41:52 -0700
X-Google-Sender-Auth: C_fZQJRfoN1jzYNltxcYt8XVVH8
Message-ID: <CAK16M2RmVikQJqefvRcmoNAnuWPR1n8iss6S4giS8_h3SdC13A@mail.gmail.com>
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
Reply-To: mrsalicekarim22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Compliment Of The Season.

I am Mrs.Alice Karim. A banker by professional, if you were marked
safe from the covid-19
epidemic, my prayers with you. i wish to offer you a business deal
worth $15.5 million  dollars, if you are interested  and willing then contact me
privately  through my Email:(mrsalicekarim22@gmail.com)

Why I choose you in this humanitarian work is a divine direction.

Upon receipt of your reply; I will give you full details
on how the business  will be executed.

I am waiting for your reply.
Best regards,
Mrs.Alice Karim.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
