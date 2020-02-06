Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ED91544F8
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Feb 2020 14:34:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AF7A5207A2;
	Thu,  6 Feb 2020 13:34:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E4CB2KJ3fe55; Thu,  6 Feb 2020 13:34:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0CE212155F;
	Thu,  6 Feb 2020 13:34:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC3311BF836
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 13:34:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C521E87B08
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 13:34:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8MGERdMK6OXq for <devel@linuxdriverproject.org>;
 Thu,  6 Feb 2020 13:34:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 34CD085B55
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 13:34:24 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id r18so5969724edl.1
 for <devel@linuxdriverproject.org>; Thu, 06 Feb 2020 05:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=jzrZ30MJAfGBLNaIb1wGwJ1t7d2ttoz+dRkCOoNYXW8=;
 b=tMnv5xGwkIxdMY3hjEXcE6KH3UBzkTJjEgXerlSMpu2CcD5P4bJg/ADPWxdCd8+v8Z
 aSi05SeQxJ1Bfl2EHrXy5t7Hj73i1c6TeTCtWEY4vmgS/6SbGLSSIhA4aaF9XJhv7xBw
 lG4hHbBzcbUui2rhk0JmJWsr1XszXMdDe4v6iWROG84Q5uPS7+IrS9KRanem8LaT9OeO
 bdumfSajIugcG6UMAlMczgtgjU3+GaKZBD6Np2JawomLW3qklc6ZFwvx9KP4NbNSmYd+
 KhFF9hlRecwkv2zXkz9H/x1tQ5e2CrdpOrDHMlWj6ziJ8u15CPCffEgkfkVY7BQduQdN
 GKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=jzrZ30MJAfGBLNaIb1wGwJ1t7d2ttoz+dRkCOoNYXW8=;
 b=PS8RxSP+LelWDpp49UcCd01dKN+GSJtSnHZ2LVhDcSb8NMyJ8vzRnQAN/YXCD4VvZ0
 Wj0bfC0y5tGXuxi2T3Q7DcblmbJCQcZVQOwxvxeHVMZ5ddejAkxMgKKfvAKy1iLOOqVo
 sU5AwAh1pwo8w6sDsEfZrxV544SWrrLTTZMAdBmGvV/3UahF79lF6qDCZ0SbIAY6ApLK
 RVI/l3ughlVrc65TLFYHWG6Lfn+TXBziC5JG+q/SMKNC1q0hN3tUr65Zw1zZuB0GT2v/
 BycaEvtMDWhj5Dh9LJVphgI4u1M73cUHWFZTsWdbKBFdqSmzrnajGNT2Yi/Zimw4T7Jf
 N2Ig==
X-Gm-Message-State: APjAAAXgJblQelvFmIZ+mikKy2ZE681if1DmMhEyqL0XpNQSnmN2x2NV
 /cJq+RqMFkmTCqEPfz/hSE/j+i6Q7x3498XvipQ=
X-Google-Smtp-Source: APXvYqxETZJ+e3ZVTwIMQ5ptldoUeuom14aANGF3AndjrW5ix84Wfq4+A78UPaLGNzcIOavYcMzcDdPOdRFL1Fe1xkg=
X-Received: by 2002:a50:9fab:: with SMTP id c40mr2879132edf.15.1580996062555; 
 Thu, 06 Feb 2020 05:34:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:22dc:0:0:0:0 with HTTP; Thu, 6 Feb 2020 05:34:22
 -0800 (PST)
From: "MS. MARYANNA B. THOMASON" <eco.bank1204@gmail.com>
Date: Thu, 6 Feb 2020 14:34:22 +0100
Message-ID: <CAOE+jADr-ryPXPMftAbYrUe08+S7unt7HpXJqGQmTokvNXegrQ@mail.gmail.com>
Subject: Contact Federal Reserve Bank New York to receive your inheritance
 contract payment (US$12.8M)
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
Reply-To: eco.bank1204@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention Fund Beneficiary,
Contact Federal Reserve Bank New York to receive your inheritance
contract payment  (US$12.8M)
Payment Release Instruction from US department of Homeland Security New York.
Contact Federal Reserve Bank New York to receive your inheritance
contract payment  (US$12.8M) deposited this morning in your favor.
Contact Person, Dr. Jerome H. Powell.
CEO Director, Federal Reserve Bank New York
Email: reservebank.ny93@gmail.com
Telephone- (917) 983-4846)

Note.I have paid the deposit and insurance fee for you,but only money
you are required to send to the bank is $US25.00,your processing funds
transfer fee only to enable them release your funds to you today.
Thank you for your anticipated co-operation.
TREAT AS URGENT.
Mr.Richard Longhair
DIRECTOR OF FUNDS CLEARANCE UNIT
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
