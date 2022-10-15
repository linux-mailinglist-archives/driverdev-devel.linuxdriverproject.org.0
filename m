Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 853FE5FF779
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Oct 2022 02:06:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DA484167B;
	Sat, 15 Oct 2022 00:06:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DA484167B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IWxE5UhqO-MS; Sat, 15 Oct 2022 00:05:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79FC94163E;
	Sat, 15 Oct 2022 00:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79FC94163E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 785E91BF83B
 for <devel@linuxdriverproject.org>; Sat, 15 Oct 2022 00:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5337E60B27
 for <devel@linuxdriverproject.org>; Sat, 15 Oct 2022 00:05:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5337E60B27
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WsjUJkK9_ddV for <devel@linuxdriverproject.org>;
 Sat, 15 Oct 2022 00:05:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D33A60A94
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com
 [IPv6:2607:f8b0:4864:20::e32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D33A60A94
 for <devel@driverdev.osuosl.org>; Sat, 15 Oct 2022 00:05:54 +0000 (UTC)
Received: by mail-vs1-xe32.google.com with SMTP id l127so6474368vsc.3
 for <devel@driverdev.osuosl.org>; Fri, 14 Oct 2022 17:05:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RMSHbe1a8SMeNOWcATTE0s7U074oAqiSlqRPjal6t74=;
 b=TI2qfOCGBe+inHuXGu/jqdapIaTdwUD7d5If4+DoyD2aHddNyH6ikchm+N6eWE9RRR
 aQEZV7xwC4PI5puzmnh1v3AVbGlm5D6LuCR0iKP7iMPlyyBlyRYqIcueNnNKIBNrCoBy
 7lf3MX+GhxOceOKozCS3g4u7u4ylbDyS7b029bAWzUSMaa1cb07urIf/V0q27HQMcErS
 6A/F9wY5Ko1cf4paiU+NwgEoAqC67Zs5H6ua4k/uwLIIV6zrLQxumDyq6+DUfTfOVAeZ
 2dcBALfvRvTSRAQawtb+2Yr5nSJwGtWVvol0CoEmJsxs4R24wfjN0bYMW5i4DBLkH4qb
 nngw==
X-Gm-Message-State: ACrzQf0KzOhiWu87E/q8t5Mon82m6cRsve3YHlnV494wf+rIQ+vLDCZh
 1E1yGy6mN1RaO2/YXTevGkk0jppYK/woFdTZO58=
X-Google-Smtp-Source: AMsMyM5pfd30bBzt1x/A+luscZwDgDT3BiQy3zO/2QKaeco3wz4avMGNsPrG4LtoI1sqRr+FK7FkO7c9fUcbazvJ6LU=
X-Received: by 2002:a67:fe16:0:b0:3a7:a8d4:a0a2 with SMTP id
 l22-20020a67fe16000000b003a7a8d4a0a2mr181749vsr.20.1665792352965; Fri, 14 Oct
 2022 17:05:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:612c:281f:b0:30b:c9f6:65ba with HTTP; Fri, 14 Oct 2022
 17:05:52 -0700 (PDT)
From: mrs Chantal lawrence <chigoziechukwuekezie@gmail.com>
Date: Sat, 15 Oct 2022 01:05:52 +0100
Message-ID: <CAPnr8MGON0he0T0L3GGYo3_ScyRp3Lv3GOpzjV7ewzZ8QQ+fUg@mail.gmail.com>
Subject: ATM CARD COMPENSATION
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RMSHbe1a8SMeNOWcATTE0s7U074oAqiSlqRPjal6t74=;
 b=oLswm683wANpeYSElpcKh5FqSXyTKxtSaLOLlVrg6Op5llzMKAyzCMfhRocT9ZoaGz
 GTAAdQcq0HShTEaNzONbEmz4SHjTXdWO1NMLzTRt8GsaFshQ5+m1VxqpwPz9/tydAydH
 YuLtm1jO+QJlLnLq7U9caliTKMbdP0RR7Zq6Td5hPtTXogwrqurB5W8c/eUVGOASNCC0
 onqfjYeDQQjJB56AApRB8zSZFx6njCmI/F3WvErS6H6DgCu9/XSN+OqgdEJNIx/vhZ6T
 OB/qMIUIi5d6HuRoHES/WmUxwORE6SO7gmSHh+4VEz57UD1TRAoHd36JDjcPwPV3p2io
 Vm2g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=oLswm683
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
Reply-To: mrschantal1990@protonmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Beneficiary

You have been compensated with the sum of 5.4 million dollars by the
United Nations,The payment will be Issue in the form of an ATM Visa
Card and send to you through the bank, To receive the ATM CARD We need
your Address, Passport and your What App Number please reply with the
requested information.

Thanks

Mrs Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
