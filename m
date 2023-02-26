Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A731D6A2EF7
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Feb 2023 10:10:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17B41819F5;
	Sun, 26 Feb 2023 09:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17B41819F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0v47TscD06I4; Sun, 26 Feb 2023 09:10:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBA0281959;
	Sun, 26 Feb 2023 09:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBA0281959
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50AED1BF31E
 for <devel@linuxdriverproject.org>; Sun, 26 Feb 2023 09:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A06481959
 for <devel@linuxdriverproject.org>; Sun, 26 Feb 2023 09:10:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A06481959
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-BRGQNGqVBi for <devel@linuxdriverproject.org>;
 Sun, 26 Feb 2023 09:10:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96E4F81A64
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96E4F81A64
 for <devel@driverdev.osuosl.org>; Sun, 26 Feb 2023 09:10:24 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 m8-20020a17090a4d8800b002377bced051so7193371pjh.0
 for <devel@driverdev.osuosl.org>; Sun, 26 Feb 2023 01:10:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PPoDX1c3+QmNLXNBMadXFFRhWSIFMXQMP1vSVo61NGQ=;
 b=bzIuU0C6Q0c5bCmjN3inW2PIhMzjrQjxYmhqySCJKaz2WGRRAV99KSYNFQCKptsAzO
 Q+A1UQ+CzuFfPX8JPXIlQKEYVMzbPYlkbT/QDeFWOhEwwJjldURQH+LFkIqvF4f1obtw
 1xYS9pJZ3a/DKfP4Ll9yrqLJBZIAHBF86f6ngUl6VWEt6AqMXOxj/Te8Cm4LaqSX7wrw
 1eZgsU2GQuK/IaUNNfhTQmw75p1VvcPZ8hJqZHTCOMe2B1KI3g18n+cyAvAM3SDIF8EN
 eEkcqqKr/zoHf2BByHtfsQJ88ZB4BjShlZQhOvDw3ErkIjR8D7ds/bgU9ElevQxVRw9P
 zJDw==
X-Gm-Message-State: AO0yUKX2+HIYtw9MjAODw0OzalSR2i9Q6JlkH36ijF4LCa49k7DKNpq0
 LUuEE3/fj3d4s9/yf7eiXmk2NV1okOvO43pjL88=
X-Google-Smtp-Source: AK7set+FVizu8sO5cyhvBPStQxYm83O+iVQeP6OTPXoUu6MTPCJtIz+GsAKR0STf6WGZROcmtCIxsqUT3oXrAG1oZs0=
X-Received: by 2002:a17:902:e743:b0:19a:6b55:a44d with SMTP id
 p3-20020a170902e74300b0019a6b55a44dmr2620947plf.1.1677402623827; Sun, 26 Feb
 2023 01:10:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a20:8f06:b0:bf:c8bf:1f5a with HTTP; Sun, 26 Feb 2023
 01:10:23 -0800 (PST)
From: Mr Moussa Albert <missmariewarlordlbr2017@gmail.com>
Date: Sun, 26 Feb 2023 09:10:23 +0000
Message-ID: <CAHRekwtS91sJOAKUtAi0gqmJoJ4v2e74heLnm9zSTnzxjxBQAA@mail.gmail.com>
Subject: From The Desk of: Mr Moussa Albert,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PPoDX1c3+QmNLXNBMadXFFRhWSIFMXQMP1vSVo61NGQ=;
 b=KIFDgYuQRug+KB13rjjLtZ35SWjQJ2HaDMAXUNxAsq7FeoggtrgLr3OBiH+iw+KFG2
 rEbwncs9U6aM0F1EGobaSsjMzkVyhtWrmHJiscsCVhxdtXe3cqMkRXknAbBTRdmH0BCe
 e5TVaIMvfb6F/YOIPbGSMLKgHpJhiUkD/0XLv4vSx0DvMSkDf+o8sNkdgyMahCSSF+29
 2LP6Ryllip8XL1JOr1dpOdKpZN0hSFjUokPKtLc6oXqexurV+dtZczx8+MmHeOTMiYQe
 iKq9vs8BVocQHuL8HhMb86Mk5AJMSuaQrfbb7I//fbWqlFWVXzYIfksVkW/oCAngJXsC
 wnSg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KIFDgYuQ
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
Reply-To: mrmoussaalbert01@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From The Desk of: Mr Moussa Albert,
CORIS BANK Audits & Accountant Manager
CORIS BANK INTERNATIONAL DU BURKINA FASO (C.B.I)

Attention: Dear Friend,

I am Mr Moussa Albert, Working at CORIS BANK INTERNATIONAL DU BURKINA
FASO (C.B.I) as the Manager of Auditing & Accountant Department.
During our last banking Audits we discovered an abandoned account
belongs to one of our Deceased Customer, Late Dr. Walid Ahmed
Juffali,Citizen of Saudi Arabia and Billionaire Saudi businessman. He
was the chairman of E. A. Juffali and Brothers, one of Saudi Arabia's
largest companies.

Meanwhile, before I contacted you I have done personal investigation
in locating any of his relatives who knows about the account, but I
came out unsuccessful. I am writing to request your assistance in
transferring the sum of $10.500.000.00 (Ten million, Five Hundred
Thousand United States dollars) into your account.

After my further investigation, I discovered that Late Dr. Walid Ahmed
Juffali died without any Next of Kin/ Relatives in his documents file
here and because of the static of this fund, I decided to contact you
to act as his Foreign Business Partner so that my bank will accord you
the recognition and have the fund transfer into your account. We will
provide the entire relevant document that will be requested to
indicate that you are the rightful Business Partner of this legacy and
my bank will release the fund to you without any further delay, upon
your consideration and acceptance of this offer. The total sum Will be
shared as follows: 60% for me and my colleagues, while 40% of the fund
will be for you.

I am assuring you that this transfer is 100% risk free on both sides
hence you are going to follow my instruction till the fund transferred
to your account. More details information will be forwarded to you to
breakdown explaining comprehensively what require of you.

I am expecting to read from you soon.
Best Regards
Mr Moussa Albert,
Audits & Accounts Manager.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
