Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA68E112BD6
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Dec 2019 13:44:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2EF28836C;
	Wed,  4 Dec 2019 12:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3vTzlE6Qj4r6; Wed,  4 Dec 2019 12:44:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD7008835A;
	Wed,  4 Dec 2019 12:44:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7475B1BF2A3
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 12:44:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7188D8832F
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 12:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zFViunr0E-TG for <devel@linuxdriverproject.org>;
 Wed,  4 Dec 2019 12:44:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DF24C8832D
 for <devel@driverdev.osuosl.org>; Wed,  4 Dec 2019 12:44:21 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id w47so7579429qtk.4
 for <devel@driverdev.osuosl.org>; Wed, 04 Dec 2019 04:44:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=SWzs3svZdfoJNhQZue5B0UPApGf3QNVhTsPQAsjB3v0=;
 b=YNKqFnrX9A37VXTiRJQeKr0TVoVFMlrNSYgUkn0licj+UoOJvZ+HJ8IjWp12nh0vJD
 oytTss+Gq8P5m3/QMSk9JCuAV6wkVFMmzaroivqVDnEVM61FXNyCf9yJ9ShxtjiQAzs3
 oP+XEYn8LB8uuNxPWuzgRGTKnRgL3GKoHUk8Ul/OCIn4gK08h9XtnXbtuPmEnWwV1n17
 a54f8OonjvTFoOebCLtjTpqwEMalcfNKNaE5nCr8IHZsPF65G7ohSjT1TQyQmetMSyZK
 5y7qzS9EGQgzC1cntwO4RcFJmjQnBSkiD9BmH/gb+uUzXGA+574DNCTpz9glICml7wve
 5HNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=SWzs3svZdfoJNhQZue5B0UPApGf3QNVhTsPQAsjB3v0=;
 b=FXt8d3JVeG3TjlSvT30dzzk2Vrv8dbzBJsLV6uAN9DhyjU6y7Yei1mCgqtf+WatMH5
 +S6rY6Cki9BdqCsbkhqt1+gfoHo2NJkAJ+6ZrVCTp+5qW3LfJlzQFquS0d8aOsOczNE3
 ZMiFudhD9hQFXutYV5zDFw19RqJ42DuERoPQ+qz8Q+Ftnen7Eq5/Ty/mnZRhskDTJT03
 nYvN6pDnfQgcdyUFUmN85xwMIf9gNNaoKXOQXayb0x3QATFHjbjQTaBsG0Eyd3wByAmh
 GnhjQBuqQLCG2j7JHaZWq6v/TZjavIF6ijXFsqlSIpOQwvfsLeIvHP1grcYTkr/xHUaJ
 GPkQ==
X-Gm-Message-State: APjAAAW6MWjgxZHimnjGfDhbQXbYjVN0N7c7x8QEWIb935f+HiRYXXaW
 EZ5de+LhhesJAh8N3dCXobE9dc10udcMDCx3PWA=
X-Google-Smtp-Source: APXvYqxWzKOteDVh9XQL6m/8aKKtTfjBsArmcTuuA2whuVyRtJyctpUk/k0WpughITz8sXR5uhrYJxmexMBU0sOD298=
X-Received: by 2002:ac8:67cb:: with SMTP id r11mr2394254qtp.54.1575463460895; 
 Wed, 04 Dec 2019 04:44:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac8:2f0c:0:0:0:0:0 with HTTP;
 Wed, 4 Dec 2019 04:44:20 -0800 (PST)
From: "Rev.Dr Emmanuel Okoye CEO Ecobank-benin"
 <westernunion.benin982@gmail.com>
Date: Wed, 4 Dec 2019 13:44:20 +0100
Message-ID: <CAP=nHBKe8nF-LP3f1956UTMeq15bm+xDr11wyG0H-FNEsu4NzQ@mail.gmail.com>
Subject: Attn, dear Beneficiary. God has remembered your prayers
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

Attn, dear Beneficiary.

God has remembered your prayers
I have already sent you Money Gram payment of $5000.00 today, MG 1029-8096
This is because we have finally concluded to effect your transfer
funds of $4.8,000.000usd
through MONEY GRAM International Fund transfer Service
Each payment will be sending to you by $5000.00 daily until the
($4.8,000.000usd) is completely transferred
we have this morning sent  MONEY GRAM payment of $5,000.00 in your name today
So contact the MONEY GRAM Agent to pick up this first payment of $5000 now

Contact person Mrs. Alan Ude
Dir. MONEY GRAM Service,Benin
Phone number: +229 98856728
E-mail: moneygram.1820@outlook.fr

Ask him to give you the complete mtcn, sender name, question and
answer to enable you
pick up the $5000.00 sent today,
Also you are instructed to re-confirm your information's
to Mrs.Alan Ude as listed below to avoid wrong transactions.

(1Your Full name:............................................
(2 Phone number.....................................................
(3 Contact address:.....................................
(4 Age:..................................................................
(5 Country..............................................
(6) Sex .................................................................
(7) your occupation...........................................

(8)Passport/By Attach or Drivers License Number:
Contact Mrs. Alan Ude for your MONEY GRAM payment of $4.8,000.000usd
Note please: I have paid service fees for you but the only money you
are required
to send to Mrs. Alan Ude is $90.00 only Transfer fee before you can
pick up your transfer today.

Send it to via Money Gram
Receiver's Name-----Alan Ude
Country----------Benin
Address-----------Cotonou
Quest--------Honest
Ans-----------Trust

I done all my best for you to receive your transfer now ok.
We need your urgent reply
Best Regards
Rev.Dr Emmanuel Okoye
CEO Ecobank-benin

If we did not receive it urgent from you today,
I will go ahead and release you funds to Mrs. Lyndia Ppaulson as your
representative.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
