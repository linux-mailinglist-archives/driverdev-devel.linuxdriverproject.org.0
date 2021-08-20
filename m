Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AC23F293E
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Aug 2021 11:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AFA44072A;
	Fri, 20 Aug 2021 09:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kQKdQWM2sa4b; Fri, 20 Aug 2021 09:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEFEC40725;
	Fri, 20 Aug 2021 09:33:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A2DB1BF383
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Aug 2021 09:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 66BFF4072A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Aug 2021 09:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySjjyvXjQKHG
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Aug 2021 09:33:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com
 [IPv6:2607:f8b0:4864:20::f43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CAD614070F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Aug 2021 09:33:08 +0000 (UTC)
Received: by mail-qv1-xf43.google.com with SMTP id jv8so5187953qvb.3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Aug 2021 02:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=WuDQPRa1pRZEmgy3rMsrN6WxMhN/6RZwdTFnT+vP0Q4=;
 b=aJcxyQlCiilF04pVL6HKAmX+6mpfT5YQf0XXGNhmV66paEHRQrIcrhY2HsUiMIjBsy
 HkLyAsSZaL1PJK9VmIPvH4+GFVRsZ0dvjMZx+H1TSobaWK1ocuXMEash/QcelNZs52QG
 foNd4wDfbavXHp0InPkxOFDYo1LGVeR1WDaE0SdcaD2stSWyuyqSiKc8ajlZ7S9lStUA
 09L6XwOHBCwfh8m48mitLcFNkxRj3p01mzmdYAXNXiiBSI7IWOa9o5XcoHp4gTiuZIM0
 yfSOyGLUNjF58agIx2P0xFroUgVktMRrHXHClycERElaR38YzNF7T7r/q5/QWEObz2PS
 xPQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=WuDQPRa1pRZEmgy3rMsrN6WxMhN/6RZwdTFnT+vP0Q4=;
 b=P1FamB1oav7vju8CFbhfYNiKPYuplj2Hq9MDQuvRk3XUTeio6VFA3YjjbzUZ+6VNjE
 lDc87CeimezXNdenS5txbkNkiNaPgY1jnTztORHafsv3EIcJEs/i2YtOMO45untZYbTH
 1/Q8C9WVdq/RMdvAh41ALGrfDWfZuw1mF71vexQpZ4EmPSVKy+554b0HbijBaPeZsNl1
 Dx6ImkjlJG+akM76+ppiCRhPOSB29YhQOGZl7uAg/PyXGWvCuIYrFGLHdNWgDd0RMZJt
 X1ElpTUW3e7yG8vV8FJ+ajNLqEaBx/9iI/u1Agk21jszFScXB0Zuc6ZhWKypjrDKghxm
 4GRw==
X-Gm-Message-State: AOAM530LCmzislfwU0s/naQ5LPxZBRK0wfLBdvCphIc8rohAUiKdVq5w
 KGaT6VVEZmUY4M98C5bCcpGXLmhlSarNXJWZvE4=
X-Google-Smtp-Source: ABdhPJwPhJHWvIezF0gp96RMj1YBuB7yPxH8PBdoH0En8VWy0QJNsXUneZ4cLw3LJyPu40ciYr/SHivElKeZEN0lPEM=
X-Received: by 2002:a05:6214:d65:: with SMTP id
 5mr19209641qvs.11.1629451987689; 
 Fri, 20 Aug 2021 02:33:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:5184:0:0:0:0:0 with HTTP; Fri, 20 Aug 2021 02:33:07
 -0700 (PDT)
From: George Micheal <philipowiredu77@gmail.com>
Date: Fri, 20 Aug 2021 10:33:07 +0100
Message-ID: <CAGkcCGEmV23ycKRkpSTVz=F-rM-PjYmao-TXY3oKYNN10jZGDg@mail.gmail.com>
Subject: Waiting for response
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
Reply-To: geomic123@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Sir/Madam

My name is Mr George Michael,i am the Personal Aid to former
President Baba Yahya Abdul-Aziz Jemus Jammeh the Republic of Gambia in
west Africa, who is currently in exile with his farmily. I have been
trying on how to get in touch with you over an important issue
concerning a project that will be profitable. I anticipate hearing
from you for more details.

Yours faithfully
Mr George Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
