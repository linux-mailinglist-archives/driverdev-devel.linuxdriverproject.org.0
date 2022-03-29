Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B174EB176
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Mar 2022 18:09:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A672401A0;
	Tue, 29 Mar 2022 16:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fem1HAB7yE1B; Tue, 29 Mar 2022 16:09:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE13B400D6;
	Tue, 29 Mar 2022 16:09:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2BC01BF30E
 for <devel@linuxdriverproject.org>; Tue, 29 Mar 2022 16:09:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6C16401A0
 for <devel@linuxdriverproject.org>; Tue, 29 Mar 2022 16:09:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zK_jU6QIWp4D for <devel@linuxdriverproject.org>;
 Tue, 29 Mar 2022 16:09:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A89E3400D6
 for <devel@driverdev.osuosl.org>; Tue, 29 Mar 2022 16:09:21 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id p15so31128935lfk.8
 for <devel@driverdev.osuosl.org>; Tue, 29 Mar 2022 09:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=vWFRMZx2bKko6nyzoyYYdg3emVxYBex/CuA4fC0mKxM=;
 b=XNY5nIfl1JDnH0IpwLTT6OvIwOAO+wTco6yK/eKiPQIb7q7hmO5NfN7M4P6x5Wl8UA
 nCX8nPw2pG6UwqXf6tr5UYWOIBxeDCeebBo4s4cVZSULcqO29yylaUpeTKrOaK2YCaIH
 mFf5/+TeFryXsdVJCMWVwyvFDKkyuGU7fzdbrYq1eV6PJBTVwRu1bz9hm+9ScCX/p7o4
 91/5X59wM3qAu6piDey4d0uvz3jTIHnL9fn2LwAR1C7i4oCmjYgcmV9IjK1kC1SR/A8M
 s1LQKaf27J4he2SDmFpRU/aNQ8Qb7qIH5Z6T/mE/1KNB48spu3Xk9ML7G5sTXQwUwNRf
 9J+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=vWFRMZx2bKko6nyzoyYYdg3emVxYBex/CuA4fC0mKxM=;
 b=l0HD7kasschO+QQ5YAcaDOf56gx823K2YhTmTwLWoAgzvOFBRqO53LQ9bQmHSo5CJD
 flrR5MkL950u8daNenIEaB9w/N3DHYJi3clEZ+uStYvEqNVXVev5WneywnoEznGK/08q
 HdTdEL4cWnToOaWILQERoxaowcpzFdpSNr2jrv50SHLUbwSvoTIAwdZtCrGU5BebiszT
 mxUxdkBIJIaYt01hAowq0Ae93Mts9/PR4PHGVsZRjbpgvqLL3KQHH7h1plPGW4BcFWNA
 6C2NJClzXiGGomoLyEYCIfJOA9TKfzyA8D3rvg6rpv+EI9X04BdJgDJWlCe2vS3DOJ3J
 AJcQ==
X-Gm-Message-State: AOAM532YIF8DDDdNyVBpSMQG6c93Mxyh6zhV8EI0PKDHHd118Y5wq6W4
 g/2e5gvHj1HZFVf7nSKSVEonWGVhtSBJdTJ9fKI=
X-Google-Smtp-Source: ABdhPJwvaZVrMhGLkMbcDCEb4200CGbdm41ZE991Yg+i+Iq5AbMgYXahumeprJP+CRDJTE90YIQ/SLxR0nD4e7TfjX4=
X-Received: by 2002:ac2:5219:0:b0:44a:a4b5:dabe with SMTP id
 a25-20020ac25219000000b0044aa4b5dabemr3371790lfl.530.1648570159148; Tue, 29
 Mar 2022 09:09:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa6:da07:0:b0:1a6:97eb:db9c with HTTP; Tue, 29 Mar 2022
 09:09:18 -0700 (PDT)
From: For Business expansion <advisery1000@gmail.com>
Date: Tue, 29 Mar 2022 17:09:18 +0100
Message-ID: <CADNnp3FdB3=uZ2VpnoMLn-E6f1xfyr0aV6ACsKEY_3Eok58H5Q@mail.gmail.com>
Subject: For Business Plans
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
Reply-To: marywilliams2021@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

I work as an investment consultant. We are registered in United
Kingdom and regulated by the Monetary Authority of United Kingdom. If
you think your firm will do better with some extra funding and
business expansion in a partnership or an investment loan then please
get back to me for further details.

Karl,
Thanks


STUDY WELL BEFORE GETTING BACK TO US.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
