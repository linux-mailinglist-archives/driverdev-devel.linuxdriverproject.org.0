Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 240C04BBC08
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Feb 2022 16:23:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F4504176F;
	Fri, 18 Feb 2022 15:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id peGvb8khTzSm; Fri, 18 Feb 2022 15:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F069B40224;
	Fri, 18 Feb 2022 15:23:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A13261BF28A
 for <devel@linuxdriverproject.org>; Fri, 18 Feb 2022 15:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9031E60681
 for <devel@linuxdriverproject.org>; Fri, 18 Feb 2022 15:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pKhtgwi70GAg for <devel@linuxdriverproject.org>;
 Fri, 18 Feb 2022 15:23:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com
 [IPv6:2607:f8b0:4864:20::e31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E81E560592
 for <devel@driverdev.osuosl.org>; Fri, 18 Feb 2022 15:23:41 +0000 (UTC)
Received: by mail-vs1-xe31.google.com with SMTP id w4so10363686vsq.1
 for <devel@driverdev.osuosl.org>; Fri, 18 Feb 2022 07:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=24MlHugeCnbKH0xBzF6FKV3t3Vc5OohZaYJMviCcUQ4=;
 b=neuC5YJZQJ/Wg8Tzr+JDmBpKqVjLYpJiDNGTr5kwm0QF/GBi2j29XXS6x4eygxhA7q
 f6ozR+7jJ+A46YTZlSWazrB68Y2rq7XX2miHtEquKqc2doR4iy/rHe4gGqYlEWIgf07/
 DCx6q0D6XdQfBIZgfRzf/sxhcawmsP09mUwSpFFM7ZrBm3IIKC14I2DggSFMwsVGTDwG
 7a9K8wQb8knNr5YpvX5tXLHYknhG9O/W8VfRqToXWWBWbIAz96fL6p5jnNq4Ea7ebgaQ
 z4kRgMskI43Bpxual2YHPWfSyqUTpgzGVTWrWviX2KBh29BLUcJrQAWPsSNCECwnhDYu
 wfrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=24MlHugeCnbKH0xBzF6FKV3t3Vc5OohZaYJMviCcUQ4=;
 b=qGq2A3c/wFnCRhRSD+DGWCKOblUrsczZ6WX489FrPQw4Oa6/PVLCNG5vp0/lnG6355
 uBMhYlxZYvVei66hLXtQVf/jnghfuX8lWvjTN2+R+VetgFpPlI53cP75XgoMIj5YVSer
 PpWMx9+5PzROeXdV4f8U8Th8gf8FIb5na2ZOpZ7OtnouYyQPLAgHiMBtitGXEk4sXOjr
 bdgJoV1OAFkUIFfQ3DG/whWDOcFi5MQlH07e9qucegixgcWXol35MmefOZ8/QnqgsINg
 Wa+DqY0I4kn/7oteF3uTBlAeQkE+sLhfvAS53CZ331Osj/z0Ske/bpeRDqSz/rArB3No
 DS3A==
X-Gm-Message-State: AOAM533EXjqFiWDi561Dlubxmu6cDk6d3rX7mycB0o+TJkTelyN01MFR
 Vl/qFjmuJIwsUv6QuI689Pru0SZVszjPh2gP6WY=
X-Google-Smtp-Source: ABdhPJzC8vzdVdZZLetmEeAAYfQUkj78tEMyFMG34rZMT6JLJ/rxIOwFBn9ef1A4miOCZ3FDIzOH4R7EDzNsk/Hj8xM=
X-Received: by 2002:a67:ae41:0:b0:31b:941a:85ec with SMTP id
 u1-20020a67ae41000000b0031b941a85ecmr3708355vsh.43.1645197820862; Fri, 18 Feb
 2022 07:23:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:6559:0:0:0:0:0 with HTTP; Fri, 18 Feb 2022 07:23:38
 -0800 (PST)
From: "Mrs. bill Chantal" <etimbukudo345@gmail.com>
Date: Fri, 18 Feb 2022 16:23:38 +0100
Message-ID: <CAM63EMeNhWsrPbkaVmp4wjSJtgn2BUbU=SD1CddU-cJHJgxypw@mail.gmail.com>
Subject: BUSINESS PROPOSAL
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
Reply-To: mrsbillchantal2022@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Business proposal

You have been compensated with the sum of $5.4 million dollars in this
united nation,The payment will be Issue into ATM visa card and send to
you from the bank,We need your Address, Passport and your WhatsApp
Number.

Thanks

Mrs.Bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
