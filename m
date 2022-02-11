Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A6A4B2C72
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Feb 2022 19:13:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A87A401B3;
	Fri, 11 Feb 2022 18:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BJktOmVYRdZh; Fri, 11 Feb 2022 18:13:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CBF34018C;
	Fri, 11 Feb 2022 18:13:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6552E1BF36B
 for <devel@linuxdriverproject.org>; Fri, 11 Feb 2022 18:13:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 513FD400D6
 for <devel@linuxdriverproject.org>; Fri, 11 Feb 2022 18:13:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IshaXyFqoz1h for <devel@linuxdriverproject.org>;
 Fri, 11 Feb 2022 18:13:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FA1840A11
 for <devel@driverdev.osuosl.org>; Fri, 11 Feb 2022 18:13:10 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id 13so18102366lfp.7
 for <devel@driverdev.osuosl.org>; Fri, 11 Feb 2022 10:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=2lKmw3BAfK3Hmt1Qrh1Q51qY1plygnjgQcF1MZQIDMc=;
 b=FTqFShHAqsLj9bL72Y6ZnTao9lEVJjW87ah8bP+/uU8PDvKhoBB4/xBfn6XWsXo1jK
 RiT9F9bMmc0Ko+uDv4C+dGPULCEzmfniPAyZEF+0bTlqGuTQh/ijCJ/BGC4Du5TZzl/r
 9lRY6DIuyjURRYxJZ8y9XLge1Dr2nPxYCs4yAhQOc6F3TyQK9jaXEbrXi7dpC5k1MGXA
 yp4UUDeIOe3vwQXNDyvv3Mh/B57Ojw5tlpI0HNVJmIF7sPEE04anlQHBHc5LVoRtMxyM
 ieLPZ+AMQBFyCwu+1y0Pa/6tTmLdpjq/Q+ZaQKnh0IV1he7l04sZMzguMR6lnBG+00S/
 5O9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=2lKmw3BAfK3Hmt1Qrh1Q51qY1plygnjgQcF1MZQIDMc=;
 b=JlsSfRZcuHI+EZF+DLdLR6feD5hUuO85AZNpM7dSjWMNnAEXCblUMOrt1cx4JGDEGC
 dNSkC4j9wEO4LhNQQrkL2Q5yFO5BgtljhGeW+KQ6D2AJyHY2i/5nZCN2oikF/WpsTt1q
 bo3ToRZFEwNSc6odtN4eZ5LybrymPb54mDG8q70Q4XYyDvYKeSl8DDkLnP48aWMpzi2t
 TGz436as6tazJ9xaigxlk6261Vtl65Vcxm0U6ufaAnKGiKOmF/r4/b9/4QrV0+odG/qL
 UjRPQaddBPRwKxZB7OYNrCqD9scNx5iqE836NzIDLVk+o13wHhuiDqKNPGBvkVdcbOxQ
 iP/g==
X-Gm-Message-State: AOAM532IzczSlPTN7zSY+Beq5AB9KCKuK7AvKKtUGIjTqOlwuTgWVquW
 zenCdtabbAidWEqGbSP/FDW67BUHo1eto4xCEjU=
X-Google-Smtp-Source: ABdhPJxN/vnuxzWu7uznVJuljM4LjtSzFFxKnooKHqdxC0J1y/1Lhuh/V4sf2si2WG7PJZJ7Uq7u4JIxstCmVlxUhrc=
X-Received: by 2002:a05:6512:3487:: with SMTP id
 v7mr2006542lfr.310.1644603187982; 
 Fri, 11 Feb 2022 10:13:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6520:43:b0:19a:a3f0:a0af with HTTP; Fri, 11 Feb 2022
 10:13:07 -0800 (PST)
From: "Mr. Douglas Felix" <legalrightschamber07@gmail.com>
Date: Fri, 11 Feb 2022 18:13:07 +0000
Message-ID: <CALi75OqUEYEJ1KrfMyEzEN2SWbOD_BAA5Th9RcN+mT-Uce2FFQ@mail.gmail.com>
Subject: Greetings
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
Reply-To: douglaselix23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
A mail was sent to you sometime last week with the expectation of
having a retune mail from you but to my surprise you never bothered to replied.
Kindly reply for further explanations.

Respectfully yours,
Barrister. Douglas Felix.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
