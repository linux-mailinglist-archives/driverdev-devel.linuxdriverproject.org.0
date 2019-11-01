Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B653EC6CA
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 17:31:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 97FFC24AFE;
	Fri,  1 Nov 2019 16:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 80lU7nuvhPRD; Fri,  1 Nov 2019 16:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B69B824074;
	Fri,  1 Nov 2019 16:31:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A978C1BF9D4
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 16:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A5F9224074
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 16:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6p9HF66XF1J for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 16:31:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id EAD401FD16
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 16:31:21 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id b72so7998248edf.1
 for <devel@driverdev.osuosl.org>; Fri, 01 Nov 2019 09:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=latS+LOZUfL1yiiuFRKw1aKCiSm5Bt/9vWdEAhPRwuM=;
 b=fwkUK5/Mx8m+fwqWZDtZ9Ze1D3ASVNZCBd8Flny2fB/BbJlegW8Bx2Fo9P1xDpYreQ
 AuVXUkKqnA34K1QY+52AuM9F+XAba09nJHRwEvCoN/37Q4tVJc1Os5vG0Y+/FhwrF0md
 P0vCS1Uv4d8CcYAyXAyb4mViewRHLuSimfVnM/9RY1X70pWuk2Ki+kdfCOdaszR3avmy
 LtZuE7bSHk4vJt6njc2usOrSs2IAPDgOaDk9w3o+HOshBwdnqt0nCYC9Qeid0ifn9ndk
 vdRGfsgB+XEFOpHFxAnVv2var5mOKeF5aVFI5i6rA0Bi0vapPEEYNQP1r4c62CYJgZWC
 D8Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=latS+LOZUfL1yiiuFRKw1aKCiSm5Bt/9vWdEAhPRwuM=;
 b=YLNgfYAM26S470y5RKAmXMcSGkvA8I2uRHOTGuW6EaIpTmlP/JEzewwK6nPY6Y4oNq
 gEjOpDz2mNDnRTjlmNKulBonstOyz0zFRWosZ0VDMmyURNC7Bo5M6StLhdhcG4LNPcuY
 8dBP5GzokNxw9CFms1Kc+4ywdcN8QGhx5T22cZwepa9MsqP0qLWhm2sQkABBL5TjMX+o
 7JQ42QWmOJpPf6anW7BY6JB4l+uflia3mYHvT8O4UbQOW6zHU13FSZP/M+ThPbb1Ossb
 unDj+A8G57goXlT+rWJUHfBjaA5GguSPeyqkOV65B7ocnte18qL3fCHkoRwWyV9F7n+9
 dD5w==
X-Gm-Message-State: APjAAAWGGTazu15WEJYJQwKPLM3H2tOB0ZSZmE9POMtmOJ64vaFZIERX
 N1NtYo7GYrrZs+VghjrGL10lYX94uX1Pqwlj2s0=
X-Google-Smtp-Source: APXvYqwCyf1tY3xU9Mi1yDltLJlfnLVadt/IduUQEiizPw6sdvVa8a2Ql4Kd03Qc0aPQZKGnt/M4WkrZ8FOZeQGcDCY=
X-Received: by 2002:a17:906:4554:: with SMTP id
 s20mr10769825ejq.283.1572625880017; 
 Fri, 01 Nov 2019 09:31:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:1118:0:0:0:0 with HTTP; Fri, 1 Nov 2019 09:31:19
 -0700 (PDT)
From: "Mary Coster, I.M.F director-Benin" <eco.bank1204@gmail.com>
Date: Fri, 1 Nov 2019 17:31:19 +0100
Message-ID: <CAOE+jADXjDFS9YKzeE0eTp0coH9epA=xaXydAoOYHbo5uu7GGw@mail.gmail.com>
Subject: Contact Money Gram international service-Benin to receive your
 payment funds US$2.500,000 Million
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
Reply-To: moneygram.1820@outlook.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn Dear,Funds Beneficiary.
Contact Money Gram international service-Benin to receive your payment
funds US$2.500,000 Million approved this morning through the UN
payment settlement organization.
Contact Person, Mr. John Dave.
Official Director.Money Gram-Benin
Email: moneygram.1820@outlook.fr
Telephone +229 62619517
Once you get intouch with Mr. John Dave, Money Gram Director, send to
him your address including your phone numbers. He will be sending the
transfer to you  $5000.00 USD daily until you received your complete
payment $2.5m
from the office.
Note,I have paid the whole service fees for you but only small money
you been required to send to this office is $23.00 only via Money Gram
transfer.
God bless
Mary Coster, I.M.F director-Benin
m.coster@aol.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
