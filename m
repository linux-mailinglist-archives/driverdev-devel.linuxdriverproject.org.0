Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4DB5632F4
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Jul 2022 13:53:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 551554088F;
	Fri,  1 Jul 2022 11:53:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 551554088F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u3EYsg_afKgY; Fri,  1 Jul 2022 11:53:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD6704054A;
	Fri,  1 Jul 2022 11:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD6704054A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C37611BF5DD
 for <devel@linuxdriverproject.org>; Fri,  1 Jul 2022 11:53:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB84160A73
 for <devel@linuxdriverproject.org>; Fri,  1 Jul 2022 11:53:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB84160A73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 88iMsq860Y9G for <devel@linuxdriverproject.org>;
 Fri,  1 Jul 2022 11:53:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8781607E3
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8781607E3
 for <devel@driverdev.osuosl.org>; Fri,  1 Jul 2022 11:53:15 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id z191so1998461iof.6
 for <devel@driverdev.osuosl.org>; Fri, 01 Jul 2022 04:53:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Zr7FJr/ROqrH3KPFcIbpCq/ZL9h+i4UX28KOdEhJPUU=;
 b=v1yY9cO97cjqyExAJMEXi/vCsVJ/vIp9Qbvg3OkcQFiZ0hgV1Vpnvo1FQI6kxPg99F
 4YiMGGr+a03qP080PZYQy2FlRVCfD3+jKywS2gQDM4JnKNt0XppVXl8+1eH/o4iPm6lW
 5kmqOEugefBhsf1hB52IkqqGZTDgZQe2HTaqKVQu/lsz6FN6b06WlHNt4FCn6GmTsk3n
 GPBC41NB0c9WDnEuKZU7Y9ObQ5iywqinWADHmORcMSPY/Shi3QSn/KvVAoI4mLHJ9amI
 uuY0aTLQYxuDjPvuJOBGLIyVreUsAv7Ye0j9FLBOeznb7LJ1OBXAlhIi+4JQmHpwcWj1
 Qu0Q==
X-Gm-Message-State: AJIora9KgXIaVPORhK2uBmdyqAr2HdDKJZuLLfrm/DO9cC7lDouuJpTO
 Qzqb238RJkfavHslFki+hO76pEN8UtBE1D/RSzc=
X-Google-Smtp-Source: AGRyM1uP9KBnPFh+a8JjHxNOgmZqLIFTnWmeGo0Bkt6JgNPx4rbQtdV/Wq/DIFr7idBTKSzgRv1TLkJnp+XIBnBKlT0=
X-Received: by 2002:a05:6638:3802:b0:32e:3d9a:9817 with SMTP id
 i2-20020a056638380200b0032e3d9a9817mr8948510jav.206.1656676394153; Fri, 01
 Jul 2022 04:53:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:1645:0:0:0:0 with HTTP; Fri, 1 Jul 2022 04:53:13
 -0700 (PDT)
From: "Miss. Mariam Musa" <akpeprosper1234@gmail.com>
Date: Fri, 1 Jul 2022 04:53:13 -0700
Message-ID: <CAAgHAvvbwx1cO+MqTFTokNoMtyevOduaXNdr2sTnU9MLHXK8Vg@mail.gmail.com>
Subject: Good day frined and happy new day.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Zr7FJr/ROqrH3KPFcIbpCq/ZL9h+i4UX28KOdEhJPUU=;
 b=Ih1UEqZm/x0Khqu8pxJh4Z/F0rwDDlN+Q+7BI26eRJZR7uEf/2zMWgzfkpMUWJEgKI
 UFY8bV9C8okwpE6K0Fx7VQIBP5gUVSSTcU5b3ZBSErt1Cjo8AfdIBpq65jpnfhR2JEkv
 YKZENzmdFyaMeqyjgFKBY+S7lIATts+BPHOuX+IX0IxGHRQl34gOmpLYh9Er+GhCc2fH
 8wYkT9z5jByt9jjzacZBGOeAdkBWgS1JRXXjdlaFnEe4SYt0RU6b9DUtjqwy/kGcJrHx
 AtmlKKJZ7w1CR9q02bdMLZ5GNQMr0k8r50hEIBts7gJjLvbnRHaRG7dzAX343eBbsas4
 hcxw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Ih1UEqZm
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
Reply-To: mariam002musa@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day,

Can I write you here? I have urgent information for you here, With
utmost good faith?, as you know that my country have been in deep
crisis due to the war,

Miss. Mariam Musa.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
