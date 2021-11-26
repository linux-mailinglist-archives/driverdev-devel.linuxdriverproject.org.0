Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2432845F6F4
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Nov 2021 23:45:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E2B781D0B;
	Fri, 26 Nov 2021 22:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ABCkZfeKdsgC; Fri, 26 Nov 2021 22:45:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C553815AD;
	Fri, 26 Nov 2021 22:45:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 476C81BF584
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 22:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 350BC40287
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 22:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dI1uOLUGe1i3 for <devel@linuxdriverproject.org>;
 Fri, 26 Nov 2021 22:44:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com
 [IPv6:2607:f8b0:4864:20::936])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E54C40286
 for <devel@driverdev.osuosl.org>; Fri, 26 Nov 2021 22:44:55 +0000 (UTC)
Received: by mail-ua1-x936.google.com with SMTP id o1so21343273uap.4
 for <devel@driverdev.osuosl.org>; Fri, 26 Nov 2021 14:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Qxa1VPbD4iRACjuGwaVkmeOrXfoNdyRVdr9Wp5Nogdk=;
 b=iu/HOOyzbO1tCPck/KDMezLTmzYpnqzod28kRetB+09KW1uyejll6jBZQ37JKNh8zW
 B+A6GIFUua1OTZ/BO7WbadQJOqyqJKK9NOScGTlqYAnd5hJkY7kazjPqrcMpMD5NFyNw
 uwltPy2Jq7qAorQTgTzc/iKIC8tGM0UW/ej9r6JcwkxbL70wt7BXc1uK0/wpngdA4u2e
 SCGBY3vR8hLdkSWnpTmo0vPjCgBTsT9nuB7Ltl3VL+/IjQ/pwA4cUiQuSxCPM8r+4p1y
 R2Vba+mi13ORONxK0js9vf2V0jO3CrymKgFdlOEk5EuQM0RSiqUkk9uWO4TlAbFcM9jK
 A3QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Qxa1VPbD4iRACjuGwaVkmeOrXfoNdyRVdr9Wp5Nogdk=;
 b=fBGBKkIPURZSjRYrv9aFIuJ+C1j6w/2/q1bXYlp7jynLtMrMlGFXAQd+Lxq0XTOAVB
 pvAeA4t1VOMidiyZWKcH5eAN7NsxZ1U5rJ05ga3y2aPevlQDWjnTuojNAf9xRwZLmhHV
 LCS6sc0BiGvKUnHK0Z7XAboxpc6AU6cg3JIBdukOpM3afbr1Gi3tERSgtn86vgyh4tWM
 zNnpCZpgM0nFtvAaxvPEtgCfGGESHLiiKPg8y+ASd6PINneqvD6nGav8gn38msABYK6Q
 v9N/vbRNw7nxvamqo4UAZU8SUySBDzdh4tCJvboezSNqt5TT+tyBT+kXfkuP9C9SfpH2
 MkVg==
X-Gm-Message-State: AOAM530EPo8+2PXDdrdUmnMQw7wRGnCMF3gcoWy0kj1Zsk05BON5ByiS
 cW+g9yxiPKs/cixRGX88gYXTE8zXRDe2ZKuA8TA=
X-Google-Smtp-Source: ABdhPJyWQbjWx4xTq8OTqF9ZhYXklAiJwypj5MkLWP4PLDTX2ao6jOoZEwqcLHj1yFeGHp4JMhCJ9YCsBWt9STEsAVw=
X-Received: by 2002:a67:edd7:: with SMTP id e23mr20990154vsp.52.1637966694890; 
 Fri, 26 Nov 2021 14:44:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:c1a4:0:b0:23e:818:9319 with HTTP; Fri, 26 Nov 2021
 14:44:54 -0800 (PST)
From: "Miss.Mmamie Shimirah" <son274368@gmail.com>
Date: Fri, 26 Nov 2021 14:44:54 -0800
Message-ID: <CAJp+SDmr27A=+vOS9NoWVwQeWqQfZLebz3vJEX5R2m+W4FyVeA@mail.gmail.com>
Subject: Regarding Of My Late Father's Fund $10,200,000,
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
Reply-To: mmamie_shimirah@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

dear,

I am Mmamie Shimirah from FreeTown Capital of Sierra Leone, Time of
opposed to the government of President Ahmad Tejan Kebbah the
ex-leader since 21st November 2005 But I am current residing in Calavi
Benin due to war of my country, my mother killed on 04/01/2002 for
Sierra Leone civilian war and I am only child for my family bad news
that my father passed away on 25/11/2018. During the war my father
made a lot of money through the illegal sales of Diamonds to the tune
of $10,200,000.

This money is currently and secretly kept in ECOWAS security company
in Porto-Novo Benin, but because of the political turmoil which still
exists in Africa, I can not invest the money by myself, hence am
soliciting your help to help me take these funds into your custody for
invest.

I want to add here that if agreed 35% that's $3,570,000 of the total
worth of the fund will be yours minus your total expenses incurred
during the clearing of the fund in Porto Novo Benin.

I would like to invest on heavy duty agricultural equipment and earth
moving machines to enable me go into a full scale mechanized farming.
l wait to hear from you
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
