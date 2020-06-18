Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C37FC1FFBBA
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 21:23:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 222572667E;
	Thu, 18 Jun 2020 19:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S-ZyHveb05cq; Thu, 18 Jun 2020 19:23:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4DBD42654F;
	Thu, 18 Jun 2020 19:23:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F20A21BF2C7
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 19:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EE314889F6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 19:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qhSaoV7lk9y2
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 19:23:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BA5FC889BD
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 19:23:43 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id f23so3112376iof.6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 12:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=ldZEk6GZkwUuy2Js9SWtf3nbeJAEXnm6tR2ZTKBqXvg=;
 b=XfLywJqYaLWrDhakSCpe+gjnYmkTCU2Y1f43Ib/XdUhMNCB1FNCHA7o1anANiHiBx6
 9tFWKFz984Hpm27czDywgnmFsHmGCo70eT2BG+84LhAaQL83e5tLF5eAnJiiA11Wu3l5
 gc/KGOdsaUkIwFb7SumFWUbeFyLdU5342/GRIXbc0efcOAlN0Mx1d09UiLf88IhFLuit
 1NVCXkdpAeLdVJt7kFA2nmnU5N7EW+54tCEdQHu15RSQLE11SnYSNd31okj9LJ9OfG8c
 6n0MRDPd9obQT2N4lceyAWvglgDAIO5avit72LomzMwcJnzHDqjOfo6CAoew7X27HZ1X
 GILw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=ldZEk6GZkwUuy2Js9SWtf3nbeJAEXnm6tR2ZTKBqXvg=;
 b=UyPITm5t5t4pvOQSYKXJ7DSgtK/cM38fHvqlLv3HO/2d4aofkRLuPve3vJRKr+UHBt
 3lRO4dghn6xwU5IVqnOF0fnZuKILoJhYW7zoYbEVLtspe3Y9+wn8Bx9GVnzJsujrhJjN
 TQUtknKQ/NeijnQbjtgscuDYxAUrILyvciioY1nqKeVJjfflQu9oiDsKzYCppmcKFba6
 c3sUYirNY7/kbQ61mE+o+VbNjWISQSji73LEC6yWJxYiovpdYE2awtALu7xdCOgf3prk
 DkJl6bpw6VwGztrcilVq9e9JJzwn2XAID4ChYgD/HL8AK8TTahdwT1plbqxTkLqzty9w
 UJ4Q==
X-Gm-Message-State: AOAM533ZIWWOdVQWlyGn/0LJ8UkRVPi1TZaCziwsLhItfrOm74B6pgtD
 5VIS2Jr8eb6r/DAF3qQgoakVGbr9Wlc9+7VWS/g=
X-Google-Smtp-Source: ABdhPJzF90h+SHrLPS3Gzn2I3DU7yIGxMVprdcRT/GyTFIiYuKQX1QG8nP9Vdv4+/Bo5uvJTzQa3QvIXg8KwSUF+Isw=
X-Received: by 2002:a05:6638:975:: with SMTP id
 o21mr102839jaj.99.1592508223114; 
 Thu, 18 Jun 2020 12:23:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:44f:0:0:0:0:0 with HTTP;
 Thu, 18 Jun 2020 12:23:42 -0700 (PDT)
From: Mrs Kim Hong Yeoh <mrs.kimhongyeoh55@gmail.com>
Date: Thu, 18 Jun 2020 19:23:42 +0000
X-Google-Sender-Auth: rUqd7Z5sttRCAuxqxvvVxw0dJ1g
Message-ID: <CAPAVGmxf9YQV2Sk1m-7gHFtsTermWiKQX97Kdog75S8xBxAesA@mail.gmail.com>
Subject: MAY THE PEACE OF GOD BE UPON YOU
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings Beloved in Christ,

I had previously sent you an email with no feedback from you.I suppose
it went to your junk folder.I anticipate that you read this mail
quickly and let me know your opinion or willingness on this classified
information that I will release to you.  therefore I would not want to
jeopardize this opportunity to Save lives of Less Privileged ones and
also change our financial status and give Less Privileged a secured
future.

I am Mrs. Kim Hong Yeoh, Working at MAYBANK (Malaysia) as the
Non-Independent Non-Executive Director and Chairman of Maybank. During
our last banking Audits we discovered an abandoned account belongs to
one of our Foreign Deceased Customer, Late Mr. Wang Jian, The
Co-founder and Co-chairman of HNA Group, a Chinese conglomerate with
significant real estate ownerships across the U.S., died in an
accident while on a business trip in France on Tuesday.

Please go through this link:
https://observer.com/2018/07/wang-jian-hna-founder-dies-tragic-fall/

I am writing to request your assistance in transferring the sum of
$17.000.000.00 (Seventeen Million United States Dollars) into your
account as the Late Mr. Wang Jian Foreign Business Partner, which I am
planning to use the fund to invest for public benefit as follows;

1. Establish An Orphanage Home To Help The Orphanages Children.
2. Build A Hospital To Help The Poor.
3. Build A Nursing Home For Elderly People Need Care & Meal.

Meanwhile, before I contacted you I have done personal investigation
in locating any of Late Mr. Wang Jian relatives who knows about the
account, but I came out unsuccessful. However, I took this decision to
use this fund in supporting the Orphanages Children, Less Privileged
and Elderly People Need Care & Meal Support, because i don't want this
fund to be transfer into our Government Treasury Account as unclaimed
fund as the law of my country abiding.

As an officer of the Bank I cannot be directly connected to this
money, so this is why I have to contact you for us to work so that you
can assist to claim/receive this money into your bank account for us
start a charity project, Meanwhile you will have 40% of the total fund
and 60% for charity project, Note there are practically no risk
involved, it will be bank to bank transfer, all I need from you is to
stand and claim $17. Million without any problem with the information
am going to provide to you.


Please for the sake of god accept this offer to work with me and let
us save lives of those Orphanages Children, Less Privileged and
Elderly People Need Care, I will appreciate it very much. As soon as I
receive your kind response, I will give you details on how we can
achieve it successfully i will explain more on how the fund will be
transfer to you.

Waiting for your urgent response now.
best regards
Mrs. Kim Hong Yeoh.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
