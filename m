Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27768244B72
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Aug 2020 16:52:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A415F88CB7;
	Fri, 14 Aug 2020 14:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jOHOOWwTogKG; Fri, 14 Aug 2020 14:52:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E4E488CA8;
	Fri, 14 Aug 2020 14:52:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B245A1BF83A
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 14:52:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AA10488C3D
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 14:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qh7D2fKCfg-2 for <devel@linuxdriverproject.org>;
 Fri, 14 Aug 2020 14:52:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com
 [209.85.161.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0C09C88C30
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 14:52:11 +0000 (UTC)
Received: by mail-oo1-f65.google.com with SMTP id g18so1971206ooa.0
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 07:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=lqyz283T/dIOw03L8mirawXjATrSpRlBUoTDYx+lgsQ=;
 b=g8mbi7cYFE18DCJozJHPY/8hmD//hKEiErDq400L0M6X/47ZHeY+iF6O9+VA0TKcWU
 QSOZGA9prMQSh5uImcIzB9IMevpVkXXwnmtSx3hwWEM9L/AhrqVyw7k6lY4edLAuTPth
 r0jdvThIZ2cyyP2ofL0qM+8iMCfTzK6hcDVt0OnPgLatw1ZAcMJ0cxNQpRHNOs0u5dSx
 7EgiTAuPTdrPggSVvoQJLTQrvAstlDLUAbqlWYAOv8wYfcK5Iquzf+zDoFldg3Hw2A+/
 MlOHvZ5opAJWluvgRGOKFFmf7SCp7HhdY2xgGWKdDhvqYRYQdLqO7PZ5FMpuVEam7Tcy
 tjKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=lqyz283T/dIOw03L8mirawXjATrSpRlBUoTDYx+lgsQ=;
 b=SxayGAdIASYugAKD/NEgJDIiHYAUqjOul/khc5d9K6eHNVjfZIZREZaw3E8+5SFxl9
 EnH1VJHCPby2OVAKZrGQRbvBwCXcCWyNRZe6PToPOeW8+5KdmP1BsJf//A2WY8dfuoC/
 ln3MMXHiQj/+76hTf0rfhBKVgwex182BEq/PfRx3CL/jVOSEljzQ+xzhWOx5SsmFJhKX
 ZiOfZaYbMNgQgQ1ttWWUzVu9yj9kHgFSnJm/KSvKak2ZGGCfIFbZNVD8JH8201+9sw9z
 cQfuJQ9ICVm4mS1QAxwhETT2bFEKWAtGFpIiiwZLvG6GUcgWEBsGx/Pxn2KH2ne243Mw
 3mow==
X-Gm-Message-State: AOAM5333wJKBnXkVpSa7ZPRujrN/jBXx0H43FELD5LG2SZiGeWqgpGRQ
 NPOu3+z1k62HRkv9j3tWwes9AIznLe4KJ+hq+E8=
X-Google-Smtp-Source: ABdhPJyhyaeVJDtRu0rtAsW+s8cKzEnfuz2FgOGOlGGzsBlUnoYLdlkUS2EpjLEZ9JZbREQLqRMq0EIw9r224mD01Xc=
X-Received: by 2002:a4a:3443:: with SMTP id n3mr2016918oof.30.1597416729839;
 Fri, 14 Aug 2020 07:52:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:eb03:0:0:0:0:0 with HTTP; Fri, 14 Aug 2020 07:52:08
 -0700 (PDT)
From: "MR.ANDY CECERE" <rosemarysholm@gmail.com>
Date: Fri, 14 Aug 2020 07:52:08 -0700
Message-ID: <CAKOwYn2tX46d+w8ggNENB_w2yYeN4O3N2+5-sse3e7rdd+4Zaw@mail.gmail.com>
Subject: REF:- INSTRUCTION TO CREDIT YOUR ACCOUNT WITH THE SUM OF (US$5Million)
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
Reply-To: info.usbanking1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Us Bank.1025 Connecticut Ave.
NW, Ste. 510. Washington, DC 20036.
Tell: (213) 537-2170
E-mail: info.usbanking1@gmail.com

REF:- INSTRUCTION TO CREDIT YOUR ACCOUNT WITH THE SUM OF (US$5Million)

This is the second time we are notifying you about this said fund. After
due vetting and evaluation of your file that was sent to us by the Nigerian
Government in conjunction with the Ministry of Finance and Central Bank of
the Federal Republic of Nigeria.

This bank has an instruction to see to the immediate release of the sum of
(US $5Million) of your claim that has been holding since is transferred
into your bank Account from their Domiciliary Account with this bank.

We were meant to understand from our findings that you have been going
through hard ways by paying a lot of charges to see to the release of your
fund (US$5Million), which has been the handwork of some miscreant elements
from that Country.

We advice that you stop further communication with any correspondence from
any bank , or anywhere concerning your funds as you will receive your fund
from this bank if you follow our instruction.

We know your representatives in Nigeria or anywhere will advice you to
still go ahead with them, which will be on your own risk. Your
(US$5Million) will reflect in your designated bank account within five Bank
working days.

Do not go through anybody again but through this Bank if you really want
your fund. Finally, you are advice to re-confirm these to us,

Your Full Name,
Contact address,
Occupation
Telephone and Fax Number for easy communication.

We need your second email gmail or hotmail for security and private reasons.

Yours sincerely,
MR.ANDY CECERE,
Tel:.(213) 537-2170
Assistance Secretary,
U.S Bank.
Email address ( info.usbanking1@gmail.com )
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
