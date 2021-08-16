Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 022343EDEB8
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Aug 2021 22:39:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDD15401BA;
	Mon, 16 Aug 2021 20:39:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1eOwAGH6idBt; Mon, 16 Aug 2021 20:39:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06EA640174;
	Mon, 16 Aug 2021 20:39:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 63C6B1BF377
 for <devel@linuxdriverproject.org>; Mon, 16 Aug 2021 20:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60E2C80B26
 for <devel@linuxdriverproject.org>; Mon, 16 Aug 2021 20:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9jko0TqscShm for <devel@linuxdriverproject.org>;
 Mon, 16 Aug 2021 20:39:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com
 [IPv6:2607:f8b0:4864:20::32a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D3B1580B0A
 for <devel@driverdev.osuosl.org>; Mon, 16 Aug 2021 20:39:28 +0000 (UTC)
Received: by mail-ot1-x32a.google.com with SMTP id
 r17-20020a0568302371b0290504f3f418fbso22417053oth.12
 for <devel@driverdev.osuosl.org>; Mon, 16 Aug 2021 13:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=M7tM5QJBdMSg83mwbBHTvOqenRZLIjdFA4ElaV0sw0U=;
 b=D6pBXW75cbx36stnVuTKmFCuCxWBypW0B4tSasAufbprXanKLTsQF/jLbq00LbSLkw
 JPsAUrfjWCq3kTf29lZxYc/TYfMfhBpxm1JHhagsYIkblEIDtjQMHWrRdzjYmTovlVVI
 78eT276QJHuFzIK90RdZbzdPslUHvXBwauC/ALitsTxMkSbGBmK15TvgFVSA+bvbL/6U
 6jSIcPqQGokWYUq+tJRTKnFr1iyVu3m21/FIAoT2McEeF257g2F6Q9Y99bpxbGiMffbT
 O4LMWN5FIKYaKwtw1Eeh9ppSVRkNxldK/Bd0LwfPHCx/UvPDgSKxoRqAmOH6HpebkPVa
 9EqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=M7tM5QJBdMSg83mwbBHTvOqenRZLIjdFA4ElaV0sw0U=;
 b=V8kKd37OmVqLjoF/6GhGSkrWneYfG2wTK0aQe2skjkCD+DTSj29oa8IjTb3uESX/9m
 xOPBNUSsEZPJ+6sR/rYisfzCo1RzZsG5IOuZNagueihsSYTuPoFQ3QWvQWt5a29ESWBu
 Y6CpzBZxFHUF/1lavZ+YJyKevnhsZ2u2wO5HvVsR41pGO2e2snGsTQRSlnsgdt6DmFOn
 ic1XWiZ/UMfVEJvVP1Yxxf+GE5t5OT4DfDjB8xM2Dj/4oWd0Mnlvnh7pTtkIB/wsPZ5b
 fPMjiu3bPqSzBwH4+ZkNY4hZxLQOMiNvjpKPF9r0HaPy5j/kOF7l7fsSttGYcj4PYDGF
 43+w==
X-Gm-Message-State: AOAM533H/WGhGJkkN41kfogBEO9K1DD7dIzPtKvAMpJw4wz1PPt3tLa3
 RO7dpWhNvW0OaO2deXvek7AtCb+weg7yjPffOi4=
X-Google-Smtp-Source: ABdhPJz2Ws8d7d2TmKvPhrNjUUHpFMyxjqPfUPNQx1b4j1BEg18VKFBKprUj3y7lb//rr8qFToQS4i1p0KVA2Dk8DPA=
X-Received: by 2002:a05:6830:43a8:: with SMTP id
 s40mr18333otv.209.1629146367679; 
 Mon, 16 Aug 2021 13:39:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6838:e221:0:0:0:0 with HTTP; Mon, 16 Aug 2021 13:39:27
 -0700 (PDT)
From: "US.BANK  PAYMENT" <usbankpaymnentofice11@gmail.com>
Date: Mon, 16 Aug 2021 21:39:27 +0100
Message-ID: <CAK3e99DcKE_0T8FS8vAv7ZaiwWC9N4wsRhh0YM6k19eG2Lf_Kg@mail.gmail.com>
Subject: Attention; Fund Beneficiary,
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
Reply-To: usbankpayment79@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

USA Bank
324 Royal Palm Way, Palm Beach, FL 33480,
SWIFT (US): USBKUS44XXX
Founded: United States of America
Tell +1 501 303-6056
Hours: Open 24 Hours


         US BANK FINAL PAYMENT NOTIFICATION


ATTENTION FUND BENEFICIARY


After today's board meeting of the Treasury, the United States
Department of the Treasury, the IRS, the Federal Reserve Bank, and the
World Bank Directorate it was gathered That the overdue compensation
fund worth $10.7Million has been deposited to this bank for onward
payment. The reason for this is because of the scam victims that lost
a lot of money to African and European Fraudsters,


Your name/email appeared in our payment schedule list of beneficiaries
that will receive their funds in this second  quarter payment of the
year because we only transfer fund twice in a year according to our
banking regulation. We apologize for the delay of your payment and
please stop communicating with any office now and pay attention to our
office/bank payment accordingly.


RE-CONFIRM YOUR BELOW DETAILS.

Your Full Name__
Your Residential Address__
Your Sex / Age__
Occupation_
Telephone / Fax __
Next of Kin__
Your valid ID card _


The US bank will immediately remit your payment once I reconfirm your
information/ details.For further details and assistance on this
Remittance Notification, kindly forward your FULL NAME AND CONTACT
ADDRESS, TELEPHONE and FAX NUMBERS directly to this mail
box(usbankpayment79@gmail.com)


Your utmost response is needed to proceed with your payment.

We intend to finalize this payment in a few days time...

Thank you for choosing US Bank.

Yours Faithfully,
Mr Rick Ruzzi
Executive Region Manager
Tell +1 501 303-6056
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
