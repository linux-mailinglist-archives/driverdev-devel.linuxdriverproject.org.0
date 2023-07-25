Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1DF761875
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jul 2023 14:37:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4343A40A21;
	Tue, 25 Jul 2023 12:37:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4343A40A21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id atE1Ps3liP0F; Tue, 25 Jul 2023 12:37:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E5BE408BF;
	Tue, 25 Jul 2023 12:37:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E5BE408BF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1B1F1BF48D
 for <devel@linuxdriverproject.org>; Tue, 25 Jul 2023 12:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A42B460F10
 for <devel@linuxdriverproject.org>; Tue, 25 Jul 2023 12:37:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A42B460F10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wDFBbyu94L4K for <devel@linuxdriverproject.org>;
 Tue, 25 Jul 2023 12:37:04 +0000 (UTC)
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EEC14607F0
 for <devel@driverdev.osuosl.org>; Tue, 25 Jul 2023 12:37:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEC14607F0
Received: by mail-oi1-x235.google.com with SMTP id
 5614622812f47-3a3e1152c23so3839029b6e.2
 for <devel@driverdev.osuosl.org>; Tue, 25 Jul 2023 05:37:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690288623; x=1690893423;
 h=to:subject:message-id:date:from:sender:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=J7SEKvmw96mFnI3R9VDPxLssIEVKmOz/zslFySMTJd4=;
 b=dL+Xi3sEy1B4eT3+pqaoBp4OeH2csJS5zJG5EWe038ze8WUmy94lktykcLbcFRHHrL
 8q14F06oX0YnUstZfW9pmQKPcH9F9Z3kVhj1gwBQhL1SXrffqytcWAuwhpxj/5q4DqZj
 snWUooeP7nFh948ZkI44JX19y5GGnmK4SQhn0XETssWOViUu1acZjMk0u7Z9REPxkT/i
 ZULYt5JIyPIlEygK/To9gRAHQmmJWXKpe4m/tP+pqzVPPoNJ2V8L539fz9r3IbTER3j7
 yPGwfjrS28l8lC9pwiS0uaPuH1R2o42hgF3U0rO+fCqTF6ZklPEbDdNyHNbUwORhOrnq
 HG9w==
X-Gm-Message-State: ABy/qLaX7G8WEOoAidnLBNBIq4LByJIwlwtsxRK8EGrJVKNdPSeUY2CR
 Io6ca2cf4oMNe+DI6PLV2eAQjFT8+suyF0X/HKM=
X-Google-Smtp-Source: APBJJlFO8+O4KFeG20Vt4L/NWCuhu25lW3CpKSXUiq6XWIYREsaPoqKHF8gzu7Eh0/Dqt5hDEs6pLn4TsFxGkLRMGRs=
X-Received: by 2002:a05:6808:130a:b0:3a4:5388:64d6 with SMTP id
 y10-20020a056808130a00b003a4538864d6mr16958263oiv.44.1690288622838; Tue, 25
 Jul 2023 05:37:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:3084:b0:d3:3c6a:90b3 with HTTP; Tue, 25 Jul 2023
 05:37:01 -0700 (PDT)
From: Ibrahim idewu <ibrahimidewu4@gmail.com>
Date: Tue, 25 Jul 2023 13:37:01 +0100
X-Google-Sender-Auth: SYrbMKFegJkXw2-5nNqf1agkJSA
Message-ID: <CAMUcbaN0whxeVisnbia_ZdPgiHD88U_K8dk4+zgjp8kVvmkWWw@mail.gmail.com>
Subject: Greetings
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690288623; x=1690893423;
 h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=J7SEKvmw96mFnI3R9VDPxLssIEVKmOz/zslFySMTJd4=;
 b=J6D+78DfQi+pkQyyj7Zozo8eyGIdaHbugxrepZuj9U5T/Lie/QQXwFakH/zTjAp/cG
 uEQBgO5N51xfZBbd4g33C3788/05N4jrWQBqhi+UIa0PfhfG6PhAWWsp7+QPL/hFpzsa
 MJh2EtoyGljzaZErxNevLtpD5v8faWAuqfHW49V8fIH4UWHAWvcrQF8HO4NlEsvKtSCS
 mYU1hVD4fYBGHB6Onn3qH5cpUxPFAWQBJbLdX6QeVRobrjig8Y4y1ehyWFaZq0CcEm+0
 VBowN/LnBvl9+PY77g4QZEcvXXjYQVPbjCcX0VL+DR0a7Hdtf54pdihkY5fmeGsL5Vvu
 7tAg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=J6D+78Df
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

Dear,
                       Can you trust a financial relationship that is
mutually beneficial to us both? I have received your name and contact
information from your country's banking data Information, hoping that
you are interested in what I am going to tell you.

I'm Mr.Ibrahim idewu from ouagadogou, here in Burkina faso. I work for
coris bank international. I am writing to you about a business
proposal that will be of great benefit to both of us. In my
department, as a banker, I discovered $19,300,000 in the account of
one of our deceased foreign clients.
The choice to contact you depends on the sensitivity of the
transaction and the confidentiality it contains. Now our bank has been
waiting for one of the family members to file the application, but
nobody has done so. Personally, I have not found family members for a
long time. I ask for permission to present you as the next of kin /
beneficiary of the deceased, so the proceeds of this account are worth
$19,300,000 to you.

This is paid or shared in these percentages, 60% for me and 40% for
you. I have secured legal documents that can be used to substantiate
this claim. The only thing I have to do is put your names in the
documents and legalize them here in court to prove you as the rightful
beneficiary. All I need now is your honest cooperation,
confidentiality and your trust, so that we can complete this
transaction. I guarantee that this transaction is 100% risk-free, as
the transfer is subject to international banking law

Please give me this as we have 5 days to work through this. This is very urgent.

1. Full Name:
2. Your direct mobile number:
3. Your contact address:
4. Your job:
5. Your nationality:
6. Your gender / age:

Please confirm your message and interest to provide further
information. Please do get back to me on time.

Best regards
Mr.Ibrahim idewu
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
