Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E4347E803
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Dec 2021 20:08:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C5D440AD5;
	Thu, 23 Dec 2021 19:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U0sOReb56Eno; Thu, 23 Dec 2021 19:08:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79FBD405D8;
	Thu, 23 Dec 2021 19:08:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BE631BF2B3
 for <devel@linuxdriverproject.org>; Thu, 23 Dec 2021 19:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A6F78148A
 for <devel@linuxdriverproject.org>; Thu, 23 Dec 2021 19:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AYLgdSTbPqE7 for <devel@linuxdriverproject.org>;
 Thu, 23 Dec 2021 19:08:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C89448146C
 for <devel@driverdev.osuosl.org>; Thu, 23 Dec 2021 19:08:42 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 rj2-20020a17090b3e8200b001b1944bad25so6432564pjb.5
 for <devel@driverdev.osuosl.org>; Thu, 23 Dec 2021 11:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=PA5Eb3SKatYFaqsO/40bx9AAytaL07oA6ydkj8EAbzQ=;
 b=mSegVjxAkPyofMsEZfIKmYaHS9L5poSVj3kRVnPxSW+JzxyHXb9MSxFf1tH0sFwHO+
 mBznKBe0g/3OZ1a7R5p17OyU2tasENwDMNo81rV1vfhQBeicRAQTHnxJasG6ALAkyWfK
 IoKqTAuL1xa2tTJNq55EdgrUf2Z0xmGrdubGis+O0v+ajbj80S3Ex3iBD3E1ZTOlDPvE
 uFibsGDRXXYtBQarfVueeowZt0ri3vC/iM8vMljKhIUKn/9qQUNiHxrzlcDnrxl713UD
 9kuXnNQWwva0bs1tB0YmBVjOYfUNy8eV2RXmQcrsBg8dAgUl1cS+fxiPSgn3EUos8cSi
 nAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=PA5Eb3SKatYFaqsO/40bx9AAytaL07oA6ydkj8EAbzQ=;
 b=LTuaFkZwltVxYiYlaOs3G4poKn5vF/V2+mRe0FAHj5sLl1IAwDDmLJk59d9PYW59Jf
 X/Kl0jiL+4Y/2JosNCUXADYpZrYbHUfuxHrmDby9csPkL/smSWbXrNEpt7JKSG48M9Hd
 /IyRZp1QkB40fDEVGWC3iOpZOIno+BR1CJtlCghgAfHofjrXSevT7DsQbQJuK6qjNKf+
 PSrO+3XG4jbI0aSpjsyObvyvAIzTq3c5x5vR4vprd5KbdszPA8aBGssgTZTw8aXW9PCc
 ESIslWQCUFy6bbP1HIgBNzVUbMwuxYEV2UQd6Ge0z87MY3aefFmNquKp9zEKF481AwE2
 51pA==
X-Gm-Message-State: AOAM533B7BmsudBupeJRMXFf7QeJrk0oUC/FGTY2DWSuNea1y+J3zSed
 9DyIXgoY8aU3EC12UXZHXfOM/zmi3ULaaxdNFNE=
X-Google-Smtp-Source: ABdhPJyJlKB+jueRv2GMI3uJppSRcRzmgWoPpLYA3AcKrI3qlKIbGCBNf2EWquQ3oFcgwluq4WNvQvcdk2QJGl2tvX8=
X-Received: by 2002:a17:902:eaca:b0:148:c78e:3064 with SMTP id
 p10-20020a170902eaca00b00148c78e3064mr3404888pld.53.1640286521800; Thu, 23
 Dec 2021 11:08:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a20:789d:b0:68:7657:a7bf with HTTP; Thu, 23 Dec 2021
 11:08:41 -0800 (PST)
From: "Rev. Fr. Paul Williams" <melindagatesfoundation53@gmail.com>
Date: Fri, 24 Dec 2021 00:38:41 +0530
Message-ID: <CAMk=7SSPrk=a0HjznNN=vcuH-i6zFjFEGsp24h9u3e+jjJB4vw@mail.gmail.com>
Subject: Donation From Williams Foundation.
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
Reply-To: revfrpaulwilliams2@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Contact Rev. Fr. Paul Williams Immediately For A Charity Donation Of
$6,200,000.00 United States Dollars At E-Mail:
revfrpaulwilliams2@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
