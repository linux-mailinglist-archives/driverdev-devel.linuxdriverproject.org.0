Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BDB4F622D
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Apr 2022 16:51:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22531403B7;
	Wed,  6 Apr 2022 14:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vnqs4JFVrEBw; Wed,  6 Apr 2022 14:51:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9EE14046D;
	Wed,  6 Apr 2022 14:51:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9D4E1BF300
 for <devel@linuxdriverproject.org>; Wed,  6 Apr 2022 14:51:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98A1A41766
 for <devel@linuxdriverproject.org>; Wed,  6 Apr 2022 14:51:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SllT0uyAShFD for <devel@linuxdriverproject.org>;
 Wed,  6 Apr 2022 14:51:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 102BF41600
 for <devel@driverdev.osuosl.org>; Wed,  6 Apr 2022 14:51:02 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 h23-20020a17090a051700b001c9c1dd3acbso2923936pjh.3
 for <devel@driverdev.osuosl.org>; Wed, 06 Apr 2022 07:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xVJHepNq93ePmAbCv1LHbdOWJcqWYQh8v11fr0KUdVw=;
 b=gQ0uu5Qrn7buamcaFCqMFFulV1yEtUL0Cm1v9r0J/8cW85cuXkgkpqizHGomRKwPSM
 OUHldpWweT3PqoM/14B9U5KArDXnCy28EsP/mBvdtAwmiAOWIj2eUrSDIeLm5KhU7ws6
 rduLn20lVMJrOotmA3UeiqXOffJRxJJDZbtpwoAMiapByBGBDrxINiQbRIQDXa+jENK5
 Ix9/Q/0YZ1ESp8ahMOdskQW7MsAILoA1vm93yBa0jnfYsRjHB2B1/qi9o0qK6xqnpy3L
 58aHGQe8Dac0xiM8Ugk3m3rahbo2CRmlpl8Dv3SJaD8aI6z0IdXPZkNcuraGGF7RB1d5
 y7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xVJHepNq93ePmAbCv1LHbdOWJcqWYQh8v11fr0KUdVw=;
 b=YlahXxc9YO2NSnF5JDAzLQJIL5DDz1NAhX9bJCzuzuRnghcJUfHZwN4ez1EhPqngF2
 PDrlxT5ONhMMMVT2rtcWGR6+iZcHT/vCvL14khzxNDN+Jnz83lVu8nFZHW9XGldSgI1h
 G/6IXrO18L5JzfYngSBRpVKDieeGIhOO9/1eBFSAA1jnJvmJ1mEtgPo08u81JTcSgMdw
 QxoDWn0G3A/RmTl3IvwPirEY7tiVSQsMq6kgmXsdTMx3jva+czvyYMjzDvVq5eaz5QpI
 MR2XNoacg9SZR41bJ25hAB7vy662z4I489b++OoiFe1EpI1ZLS63HLvneLx38V+BiThs
 hbbg==
X-Gm-Message-State: AOAM531MHzZ1WLMlUFEVDK3POo14ZrgzXMscefBw9XSndEYpRaD/37ap
 qpITcU+UXcbQ+xOIHQms62yFE7nAFx4xqjAGl+Y=
X-Google-Smtp-Source: ABdhPJwILuZHv2NfRRD7jrUD5+rV3+Vd8iLiSsN9JoKceC2sqZdRXs25idNd0JkRgI/JPjXC6hVrk0/oUYgtNQgGne8=
X-Received: by 2002:a17:902:a40f:b0:14b:61:b19e with SMTP id
 p15-20020a170902a40f00b0014b0061b19emr9098228plq.20.1649256662199; Wed, 06
 Apr 2022 07:51:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:740e:0:0:0:0 with HTTP; Wed, 6 Apr 2022 07:51:01
 -0700 (PDT)
From: Lily William <mralbert139@gmail.com>
Date: Wed, 6 Apr 2022 06:51:01 -0800
Message-ID: <CAN2p9o7H4_L5n2aV+n+Aj+2_Oytm+AQgbEv=r-vXp-Jt8R+trA@mail.gmail.com>
Subject: Hi Dear,
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
Reply-To: lilywilliam989@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hi Dear,

My name is Lily William, I am from the United States of America. It's my
pleasure to contact you for a new and special friendship. I will be glad to
see your reply so we can get to know each other better.

Yours
Lily
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
