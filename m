Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFE430D7F6
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 11:51:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C87F85F43;
	Wed,  3 Feb 2021 10:51:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fU5UFVsXCzmT; Wed,  3 Feb 2021 10:51:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F40BA85F29;
	Wed,  3 Feb 2021 10:51:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C22D21BF5DC
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 10:51:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B96DE86004
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 10:51:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LV+3txLPDvLF for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 10:51:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 939C0848F0
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 10:51:45 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id y8so11105027ede.6
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 02:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=K+vYK7XVl7siddg1z771eyp30azApAx73gSYZEbWSFA=;
 b=e4/uY+KNDmWPlPCwW8mE6agEYJJC501PUjPFPeGmsI66B/MOE1xl40z0VSZbP2QNoX
 tPASW/zyuJp6HYvCCu/tWkjYW8IATq8OJT0oXIegxrC3116XgHjMRNOdzwq82QLH0xS0
 /qluuqjkNayeFRhAnM06FzcNia7xk+g0XnqKB12AtoLGb5rYLdZsJvauSeBMNSmMOUux
 i9nA+8TQPVmcfCBupHZOLSBPB6g+Gzw3WpF04CO3rfdixV3B5S0WIXkeK5X8plHEpKSL
 MRsPI7uN6KIvMV18Wte1PwzdRFcrOoHb1LCSVmykt2hzQ8D958JM2gFLomNXqgGSeiQy
 8a8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=K+vYK7XVl7siddg1z771eyp30azApAx73gSYZEbWSFA=;
 b=msgKPx3Pj+fr3kwXUwGhVGPdbICuM2Mmv8rQMh8xecGztC8Hf9wz831BuD+llKtJop
 LBY2Qx3VPejz4NQUUYaahNf1cfsx/FiZEpK4yEw1horSYpAqOBsDzSRPQ8RAJPYRgJLu
 Op1Ugeihqp9t60poux0OWD7dNuCUyDX4vfmR1Zmyb7n2Sg2lakLAlCE46oD7v835ifzw
 abE/SxZO3E0fS7BrVwgWPulcHv++Sqr/7UCCWYNfmIDBowyAXH8j75bvogUsR+xE0kzn
 iycOkc0qfUi2AHeE5n450umLEHKKuYo6xuLraeA7FnKaoDumXuwy2RIYvaWo8fjag+B7
 4M9A==
X-Gm-Message-State: AOAM530eOtptd1jPA1sZKrhb+Qbnj5PxuVMCo6sKRltuaaK++TPI2uxc
 moRCDATe4BkChP9c5yxZ/9Rf0II/kzHCuY9OP/c=
X-Google-Smtp-Source: ABdhPJyVLksrWtwpHRfCrjQioR6SlOrTq4nhW/0hNE8jn+SYQlGj62ZLDpInhXEGY220QcHBbMXbXPz9QKYhUyKkCI0=
X-Received: by 2002:a05:6402:3585:: with SMTP id
 y5mr2224721edc.97.1612349503949; 
 Wed, 03 Feb 2021 02:51:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:17ec:0:0:0:0 with HTTP; Wed, 3 Feb 2021 02:51:43
 -0800 (PST)
From: William Barr <wiliambrr09@gmail.com>
Date: Wed, 3 Feb 2021 11:51:43 +0100
Message-ID: <CAL8Q8sgjU8SO9SmA=R9-7LDaf8cQFKkvMN81BRdFn8fsXPVhAQ@mail.gmail.com>
Subject: URGENT MESSAGE WAITING
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

UNITED NATIONS ORGANIZATION
1775 K ST NW # 400
WASHINGTON D.C., DC 20006-1500, UNITED STATES
TEL/FAX: +1-206-202-1160

Dear Sir

COMPENSATION FUNDS PAYMENT ORDER

This is to inform you that, we have been working towards the
eradication of fraudsters and scam Artists in Africa with the help of
the Organization of African Unity (OAU), the International Monetary
Fund (IMF) and FBI. We have been able to track down so many of this
scam artist in various parts of African countries and Europe, which
includes (Nigeria, United Kingdom, Spain, Ghana, Cameroon and Senegal)
and they are all in Government custody now, they will appear at
International Criminal Court (ICC) Hague (Netherlands) soon for
Criminal/Fraud Justice.

During the course of our investigation, we have been able to recover
so much money from these scam artists. The United Nations Anti-Crime
Commission and the International Monetary Fund (IMF) have ordered that
the money recovered from the Scammers to be shared among 100 Lucky
people around the World for compensation. This Email/Letter is been
directed to you because your email address and country name  was found
in one of the scammer Artists file and computer hard-disk while the
investigation, maybe you have been scammed. You are therefore being
compensated with the sum of US#1, 500,000.00 (US$) (One Million Five
Hundred Thousand United State Dollars).
We have arranged your payment to be paid to you direct to your bank
account in your country private Bank Agent) who will transfer the fund
to your bank account from Reserve Bank. We have advised the Bank Agent
to open a private email address with a new number as to enable us to
monitor this payment and the transfer communications to avoid further
delay or misdirection of your fund.

 Send your information urgent
1. Your Full Name:
2. Your Age:
3. Occupation:
4. Cell/Mobile Number:
5 Attach your valid i.d



Yours in Service.


MR  Willimas B
United Nations Funds Investigation Unit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
