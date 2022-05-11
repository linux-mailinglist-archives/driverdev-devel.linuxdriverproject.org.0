Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E76522B08
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 May 2022 06:31:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 731D681279;
	Wed, 11 May 2022 04:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UTrx_ZkCYl8p; Wed, 11 May 2022 04:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35B3380D1B;
	Wed, 11 May 2022 04:31:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 610CC1BF4D7
 for <devel@linuxdriverproject.org>; Wed, 11 May 2022 04:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E7D1830A8
 for <devel@linuxdriverproject.org>; Wed, 11 May 2022 04:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YrQsRAhv2fcY for <devel@linuxdriverproject.org>;
 Wed, 11 May 2022 04:31:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99D1183104
 for <devel@driverdev.osuosl.org>; Wed, 11 May 2022 04:31:16 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 l11-20020a17090a49cb00b001d923a9ca99so994228pjm.1
 for <devel@driverdev.osuosl.org>; Tue, 10 May 2022 21:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=s3Cdswvtyrq8qHVwuRB9YRoTAIoD9G/2//h6WeFZHzo=;
 b=LKcfP/gGv/FW8GV71zoBDyHCMcjcF+tGlE02o9FMc2Z8z2s+h1fvQswBRD0AD7ns4M
 CJFoj3Wx1/h6x+3hCA08zheoylL/PVoxilu3OGlgb0TVdjnnvqc9zyxPm1ULrNhHE1yh
 nf/9VHFDhBKDjSev7IOUksx7RMtXOcw9sby9XU/2RdT/l+BZypGAzpCYoPk0mcihb5m6
 mzEMmLeFNRXgCSrfk9qWFIGV/GVOL0a9b8fEznPtSqk8hFNT9rYONMWq8bSrryh8v+1F
 pdYzMMG9wjUZnm3YegpGOuTmmvhAlJJHYz4aqoomDaMFc2Tzi9tX3hd7r1vF7Mzp/Bos
 WODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=s3Cdswvtyrq8qHVwuRB9YRoTAIoD9G/2//h6WeFZHzo=;
 b=7AqrQFpUudlIvOldowLpb9dQi2s3ET/hDRc/ESakr0h7NaLV4jVlJ4YRrCB+6sLt04
 Cu4Nu/1/dQJzFQi6ec2T4VGkbQ1YTkgCdNW+ECpGqf8MC8n5deFr37qwICyI32RaJd7b
 uD8AZHBx1YHZg9c4HujD1ied3NIkRUCoxEEq0V3WDoaP8pwiBNr5saqRvrm1604C1buw
 85y1S8ecIS6763XJwpnFTfdPRbNBoTb9dWeBz0J6tEj7iA4Oq0vWOMEM3WywWsj+mxN+
 goElVAGfdScjp7NqNOzI2r0Zl+yvQhgPAgtvT/yoPRLH17IZL0Y40dynsQ3+oGBrOHGs
 nSyQ==
X-Gm-Message-State: AOAM531WeoW/vz49vclM8klvd5umYZJXjVH0Y6+AV2f1ZFtqr/wKCcbZ
 CCV3lDAP9OlT6N/0XCqfLcKCFkjB7Oi3sV0r4iM=
X-Google-Smtp-Source: ABdhPJwZl7hoImT+P+mZt9Il5fklaEzag4UpDBeZPw3re0wLIxLAJ7sEz6CWle/tpgTJ/9iSkZ3yWNCr0FzhW6Gu22E=
X-Received: by 2002:a17:90b:1e4e:b0:1dc:583c:398 with SMTP id
 pi14-20020a17090b1e4e00b001dc583c0398mr3324420pjb.232.1652243475709; Tue, 10
 May 2022 21:31:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:319:0:0:0:0 with HTTP; Tue, 10 May 2022 21:31:15
 -0700 (PDT)
From: Private Mail <privatemail1961@gmail.com>
Date: Tue, 10 May 2022 21:31:15 -0700
Message-ID: <CANjAOAg+D6SZp5bYwnRwnONiPaoMNFaROWJ=sdNeEAtSDm4M3Q@mail.gmail.com>
Subject: Have you had this? It is for your Benefit
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

Our Ref: BG/WA0151/2022

Dear Beneficiary

Subject: An Estate of US$15.8 Million

Blount and Griffin Genealogical Investigators specializes in probate
research to locate missing heirs and beneficiaries to estates in the
United Kingdom and Europe.

We can also help you find wills, obtain copies of certificates, help
you to administer an estate, as well as calculating how an estate,
intestacy or trust should be distributed.

You may be entitled to a large pay out for an inheritance in Europe
worth US$15.8 million. We have discovered an estate belonging to the
late Depositor has remained unclaimed since he died in 2011 and we
have strong reasons to believe you are the closest living relative to
the deceased we can find.

You may unknowingly be the heir of this person who died without
leaving a will (intestate). We will conduct a probate research to
prove your entitlement, and can submit a claim on your behalf all at
no risk to yourselves.

Our service fee of 10% will be paid to us after you have received the estate.

The estate transfer process should take just a matter of days as we
have the mechanism and expertise to get this done very quickly. This
message may come to you as a shock, however we hope to work with you
to transfer the estate to you as quickly as possible.

Feel free to email our senior case worker Mr. Malcolm Casey on email:
malcolmcasey68@yahoo.com for further discussions.

With warm regards,

Mr. Blount W. Gort, CEO.
Blount and Griffin Associates Inc
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
